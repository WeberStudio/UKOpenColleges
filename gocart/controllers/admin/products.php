<?php
class Products extends Admin_Controller {	
	
	private $use_inventory = false;
	
	function __construct()
	{		
		parent::__construct();
		remove_ssl();

		/*** Get User Info***/
		//$admin_info = $this->admin_session->userdata('admin');
		$user_info = $this->auth->admin_info();
		$this->admin_id = $user_info['id'];
		$this->admin_email = $user_info['email'];
		$this->admin_access = $user_info['access'];
		$this->first_name = $user_info['firstname'];
		$this->last_name = $user_info['lastname'];
		$this->image = $user_info['image'];
		/*** Get User Info***/
		
		$this->auth->check_access($this->admin_access, true);		
		$this->load->model('Product_model');
		$this->load->model('Routes_model');
		$this->load->helper('form');
		$this->lang->load('product');
		
		
	}

	function index($order_by="name", $sort_order="ASC", $code=0, $page=0, $rows=15)
	{
		
		$data['page_title']	= lang('products');
		
		$data['code']		= $code;
		$term				= false;
		$category_id		= false;
		
		//get the category list for the drop menu
		$data['categories']	= $this->Category_model->get_categories_tierd();
		
		$post				= $this->input->post(null, false);
		$this->load->model('Search_model');
		if($post)
		{
			$term			= json_encode($post);
			$code			= $this->Search_model->record_term($term);
			$data['code']	= $code;
		}
		elseif ($code)
		{
			$term			= $this->Search_model->get_term($code);
		}
		
		//store the search term
		$data['term']		= $term;
		$data['order_by']	= $order_by;
		$data['sort_order']	= $sort_order;
		
		$data['products']	= $this->Product_model->products(array('term'=>$term, 'order_by'=>$order_by, 'sort_order'=>$sort_order, 'rows'=>$rows, 'page'=>$page));
		//$this->show->pe($data['products']);
		//$this->show->pe($data['products']);
		//total number of products
		$data['total']		= $this->Product_model->products(array('term'=>$term, 'order_by'=>$order_by, 'sort_order'=>$sort_order), true);

		
		$this->load->library('pagination');
		
		$config['base_url']			= site_url($this->config->item('admin_folder').'/products/index/'.$order_by.'/'.$sort_order.'/'.$code.'/');
		$config['total_rows']		= $data['total'];
		$config['per_page']			= $rows;
		$config['uri_segment']		= 7;
		$config['first_link']		= 'First';
		$config['first_tag_open']	= '<li>';
		$config['first_tag_close']	= '</li>';
		$config['last_link']		= 'Last';
		$config['last_tag_open']	= '<li>';
		$config['last_tag_close']	= '</li>';

		$config['full_tag_open']	= '<div class="pagination"><ul>';
		$config['full_tag_close']	= '</ul></div>';
		$config['cur_tag_open']		= '<li class="active"><a href="#">';
		$config['cur_tag_close']	= '</a></li>';
		
		$config['num_tag_open']		= '<li>';
		$config['num_tag_close']	= '</li>';
		
		$config['prev_link']		= '&laquo;';
		$config['prev_tag_open']	= '<li>';
		$config['prev_tag_close']	= '</li>';

		$config['next_link']		= '&raquo;';
		$config['next_tag_open']	= '<li>';
		$config['next_tag_close']	= '</li>';
		
		$this->pagination->initialize($config);
		
		$this->load->view($this->config->item('admin_folder').'/includes/header');
		$this->load->view($this->config->item('admin_folder').'/includes/leftbar');
		$this->load->view($this->config->item('admin_folder').'/products', $data);
		$this->load->view($this->config->item('admin_folder').'/includes/inner_footer');
	}
	
	//basic category search
	function product_autocomplete()
	{
		$name	= trim($this->input->post('name'));
		$limit	= $this->input->post('limit');
		
		if(empty($name))
		{
			echo json_encode(array());
		}
		else
		{
			$results	= $this->Product_model->product_autocomplete($name, $limit);
			
			$return		= array();
			
			foreach($results as $r)
			{
				$return[$r->id]	= $r->name;
			}
			echo json_encode($return);
		}
		
	}
	
	function bulk_save()
	{
		
		//echo"<pre>";print_r($_REQUEST);exit;
		$products	= $this->input->post('product');
		$remove_products	= $this->input->post('remove_products');
		$courses = $this->input->post('courses');
		
		if($remove_products)
		{
			if(isset($courses) && count($courses)>0)
			{
				
				//if the product does not exist, redirect them to the customer list with an error
				foreach($courses as $course)
				{
				
					$product	= $this->Product_model->get_product($course);
					//echo "<pre>";print_r($product);exit;
					if ($product)
					{
		
						// remove the slug
						$this->Routes_model->remove('('.$product->slug.')');
		
						//if the product is legit, delete them
						$this->Product_model->delete_product($course);
		
					}
				}
				redirect($this->config->item('admin_folder').'/products');
			}
			else
			{
				$this->session->set_flashdata('remove_product_err',  'Please select atleast one product to remove.');
				redirect($this->config->item('admin_folder').'/products');
			}
		}
		
		if(!$products)
		{
			$this->session->set_flashdata('error',  lang('error_bulk_no_products'));
			redirect($this->config->item('admin_folder').'/products');
		}
				
		foreach($products as $id=>$product)
		{
			$product['id']	= $id;
			$this->Product_model->save($product);
		}
		
		$this->session->set_flashdata('message', lang('message_bulk_update'));
		redirect($this->config->item('admin_folder').'/products');
	}
	
	function form($id = false, $duplicate = false)
	{
		
		$this->show->pe($_POST);
		$this->show->pe($_FILES);
		$this->product_id	= $id;
		
		$this->load->library('form_validation');
		$this->load->model(array('Option_model', 'Category_model', 'Digital_Product_model'));
		$this->lang->load('digital_product');
		$this->form_validation->set_error_delimiters('<div class="error">', '</div>');
		
		
		$data['all_categories']		= $this->Category_model->get_all_categories();
		$data['all_products']		= $this->Product_model->get_all_products_array();
		//echo "<pre>";print_r($data['all_categories']);exit;
		//$data['file_list']		= $this->Digital_Product_model->get_list();

		$data['page_title']		= lang('product_form');

		//default values are empty if the product is new
		$data['id']					= '';
		$data['admin_id']			= '';
		$data['sku']				= '';
		$data['name']				= '';
		$data['publish_by_admin']	= '1';
		$data['publish_by_super']	= '0';
		$data['slug']				= '';
		$data['description']		= '';
		$data['excerpt']			= '';
		$data['price']				= '';
		$data['saleprice']			= '';
		$data['publish_by']			= '';
		$data['unpublish_by']		= '';
		$data['weight']				= '';
		$data['track_stock'] 		= '';
		$data['seo_title']			= '';
		$data['meta']				= '';
		$data['shippable']			= '';
		$data['taxable']			= '';
		$data['fixed_quantity']		= '';
		$data['quantity']			= '';
		$data['enabled']			= '';
		$data['related_products']	= array();
		$data['product_categories']	= array();
		$data['images']				= array();
		$data['product_files']		= array();

		//create the photos array for later use
		$data['photos']		= array();

		if ($id)
		{	
			// get the existing file associations and create a format we can read from the form to set the checkboxes
			$pr_files 		= $this->Digital_Product_model->get_associations_by_product($id);
			foreach($pr_files as $f)
			{
				$data['product_files'][]  = $f->file_id;
			}
			
			// get product & options data
			
			$data['product_options']	= $this->Option_model->get_product_options($id);
			$product					= $this->Product_model->get_product($id);
			
			//if the product does not exist, redirect them to the product list with an error
			if (!$product)
			{
				$this->session->set_flashdata('error', lang('error_not_found'));
				redirect($this->config->item('admin_folder').'/products');
			}
			
			//helps us with the slug generation
			$this->product_name	= $this->input->post('slug', $product->slug);
			
			//set values to db values
			$data['id']					= $id;
			$data['admin_id']			= $this->admin_id;
			$data['sku']				= $product->sku;
			$data['name']				= $product->name;
			$data['seo_title']			= $product->seo_title;
			$data['meta']				= $product->meta;
			$data['slug']				= $product->slug;
			$data['description']		= $product->description;
			$data['excerpt']			= $product->excerpt;
			$data['price']				= $product->price;
			$data['saleprice']			= $product->saleprice;
			$data['weight']				= $product->weight;
			$data['track_stock'] 		= $product->track_stock;
			$data['shippable']			= $product->shippable;
			$data['quantity']			= $product->quantity;
			$data['taxable']			= $product->taxable;
			$data['fixed_quantity']		= $product->fixed_quantity;
			$data['enabled']			= $product->enabled;
			
			//make sure we haven't submitted the form yet before we pull in the images/related products from the database
			if(!$this->input->post('submit'))
			{
				$data['product_categories']	= $product->categories;
				$data['related_products']	= $product->related_products;
				$data['images']				= (array)json_decode($product->images);
			}
		}
		
		//if $data['related_products'] is not an array, make it one.
		if(!is_array($data['related_products']))
		{
			$data['related_products']	= array();
		}
		if(!is_array($data['product_categories']))
		{
			$data['product_categories']	= array();
		}
		
		//no error checking on these
		$this->form_validation->set_rules('caption', 'Caption');
		$this->form_validation->set_rules('primary_photo', 'Primary');

		//$this->form_validation->set_rules('sku', 'lang:sku', 'trim');
		$this->form_validation->set_rules('seo_title', 'lang:seo_title', 'trim');
		$this->form_validation->set_rules('meta', 'lang:meta_data', 'trim');
		$this->form_validation->set_rules('name', 'lang:name', 'trim|required|max_length[64]');
		$this->form_validation->set_rules('slug', 'lang:slug', 'trim');
		$this->form_validation->set_rules('description', 'lang:description', 'trim');
		$this->form_validation->set_rules('excerpt', 'lang:excerpt', 'trim');
		$this->form_validation->set_rules('price', 'lang:price', 'trim|numeric|floatval');
		$this->form_validation->set_rules('enabled', 'lang:enabled', 'trim');
		
		/*
		if we've posted already, get the photo stuff and organize it
		if validation comes back negative, we feed this info back into the system
		if it comes back good, then we send it with the save item
		
		submit button has a value, so we can see when it's posted
		*/
		
		if($duplicate)
		{
			$data['id']	= false;
		}
		if($this->input->post('submit'))
		{
			//reset the product options that were submitted in the post
			$data['product_options']	= $this->input->post('option');
			$data['related_products']	= $this->input->post('related_products');
			$data['product_categories']	= $this->input->post('categories');
			$data['images']				= $this->input->post('images');
			$data['product_files']		= $this->input->post('downloads');
			
		}
		//$this->show->pe($_POST);
		if ($this->form_validation->run() == FALSE)
		{
			//$this->show->pe($data['product_categories']);
			$this->load->view($this->config->item('admin_folder').'/includes/header');
			$this->load->view($this->config->item('admin_folder').'/includes/leftbar');
			$this->load->view($this->config->item('admin_folder').'/product_form', $data);
			$this->load->view($this->config->item('admin_folder').'/includes/inner_footer');
			
			
		}
		else
		{
			$this->load->helper('text');
			
			//first check the slug field
			$slug = $this->input->post('slug');
			
			//if it's empty assign the name field
			if(empty($slug) || $slug=='')
			{
				$slug = $this->input->post('name');
			}
			
			$slug	= url_title(convert_accented_characters($slug), 'dash', TRUE);
			
			//validate the slug
			

			if($id)
			{
				$slug		= $this->Routes_model->validate_slug($slug, $product->route_id);
				$route_id	= $product->route_id;
			}
			else
			{
				$slug	= $this->Routes_model->validate_slug($slug);
				
				$route['slug']	= $slug;	
				$route_id	= $this->Routes_model->save($route);
			}

			$save['id']					= $id;
			$save['admin_id']			= $this->admin_id;
			$save['publish_by_admin']	= '1';
			$save['publish_by_super']	= '0';
			$save['sku']				= $this->input->post('sku');
			$save['name']				= $this->input->post('name');
			$save['seo_title']			= $this->input->post('seo_title');
			$save['meta']				= $this->input->post('meta');
			$save['description']		= $this->input->post('description');
			$save['excerpt']			= $this->input->post('excerpt');
			$save['price']				= $this->input->post('price');
			$save['saleprice']			= $this->input->post('saleprice');
			$save['weight']				= $this->input->post('weight');
			$save['track_stock']		= $this->input->post('track_stock');
			$save['fixed_quantity']		= $this->input->post('fixed_quantity');
			$save['quantity']			= $this->input->post('quantity');
			$save['shippable']			= $this->input->post('shippable');
			$save['taxable']			= $this->input->post('taxable');
			if($this->input->post('enabled')=='on')
			{
				$save['enabled']			= '1';
			}
			else
			{
				$save['enabled']			= '0';
			}
			
			$post_images				= $this->input->post('images');
			
			$save['slug']				= $slug;
			$save['route_id']			= $route_id;
			//echo '<pre>';print_r($save);exit;
			if($primary	= $this->input->post('primary_image'))
			{
				if($post_images)
				{
					foreach($post_images as $key => &$pi)
					{
						if($primary == $key)
						{
							$pi['primary']	= true;
							continue;
						}
					}	
				}
				
			}
			
			$save['images']				= json_encode($post_images);
			
			
			if($this->input->post('related_products'))
			{
				$save['related_products'] = json_encode($this->input->post('related_products'));
			}
			else
			{
				$save['related_products'] = '';
			}
			
			//save categories
			$categories			= $this->input->post('categories');
			if(!$categories)
			{
				$categories	= array();
			}
			
			// format options
			$options	= array();
			if($this->input->post('option'))
			{
				foreach ($this->input->post('option') as $option)
				{
					$options[]	= $option;
				}

			}	
			
			// save product 
			//$this->show->pe($_POST);
			$product_id	= $this->Product_model->save($save, $options, $categories);
			
			// add file associations
			// clear existsing
			$this->Digital_Product_model->disassociate(false, $product_id);
			// save new
			$downloads = $this->input->post('downloads');
			if(is_array($downloads))
			{
				foreach($downloads as $d)
				{
					$this->Digital_Product_model->associate($d, $product_id);
				}
			}			

			//save the route
			$route['id']	= $route_id;
			$route['slug']	= $slug;
			$route['route']	= 'cart/product/'.$product_id;
			
			$this->Routes_model->save($route);
			
			$this->session->set_flashdata('message', lang('message_saved_product'));

			//go back to the product list
			redirect($this->config->item('admin_folder').'/products');
		}
	}
	
	function product_image_form()
	{
		$data['file_name'] = false;
		$data['error']	= false;
		$this->load->view($this->config->item('admin_folder').'/iframe/product_image_uploader', $data);
	}
	
	function product_image_upload()
	{
		$data['file_name'] = false;
		$data['error']	= false;
		
		$config['allowed_types'] = 'gif|jpg|png';
		//$config['max_size']	= $this->config->item('size_limit');
		$config['upload_path'] = 'uploads/images/full';
		$config['encrypt_name'] = true;
		$config['remove_spaces'] = true;

		$this->load->library('upload', $config);
		
		if ( $this->upload->do_upload())
		{
			$upload_data	= $this->upload->data();
			
			$this->load->library('image_lib');
			/*
			
			I find that ImageMagick is more efficient that GD2 but not everyone has it
			if your server has ImageMagick then you can change out the line
			
			$config['image_library'] = 'gd2';
			
			with
			
			$config['library_path']		= '/usr/bin/convert'; //make sure you use the correct path to ImageMagic
			$config['image_library']	= 'ImageMagick';
			*/			
			
			//this is the larger image
			$config['image_library'] = 'gd2';
			$config['source_image'] = 'uploads/images/full/'.$upload_data['file_name'];
			$config['new_image']	= 'uploads/images/medium/'.$upload_data['file_name'];
			$config['maintain_ratio'] = TRUE;
			$config['width'] = 600;
			$config['height'] = 500;
			$this->image_lib->initialize($config);
			$this->image_lib->resize();
			$this->image_lib->clear();

			//small image
			$config['image_library'] = 'gd2';
			$config['source_image'] = 'uploads/images/medium/'.$upload_data['file_name'];
			$config['new_image']	= 'uploads/images/small/'.$upload_data['file_name'];
			$config['maintain_ratio'] = TRUE;
			$config['width'] = 235;
			$config['height'] = 235;
			$this->image_lib->initialize($config); 
			$this->image_lib->resize();
			$this->image_lib->clear();

			//cropped thumbnail
			$config['image_library'] = 'gd2';
			$config['source_image'] = 'uploads/images/small/'.$upload_data['file_name'];
			$config['new_image']	= 'uploads/images/thumbnails/'.$upload_data['file_name'];
			$config['maintain_ratio'] = TRUE;
			$config['width'] = 150;
			$config['height'] = 150;
			$this->image_lib->initialize($config); 	
			$this->image_lib->resize();	
			$this->image_lib->clear();

			$data['file_name']	= $upload_data['file_name'];
		}
		
		if($this->upload->display_errors() != '')
		{
			$data['error'] = $this->upload->display_errors();
		}
		$this->load->view($this->config->item('admin_folder').'/iframe/product_image_uploader', $data);
	}
	
	function download_csv_template()
	{
		$this->load->helper('download_helper');
		$donwload_path = base_url().'downloads/oc_courses.csv';
		$data = file_get_contents($donwload_path); // Read the file's contents
		$name = 'courses_upload_template.csv';
		force_download_content($name, $data);
		redirect($this->config->item('admin_folder').'/products');
	}
	
	function save_bulk_products()
	{
		$status = "";
		$msg = "";
		$data = array();
		$array_missing_field = array();
		$filename = $_FILES['product_file']['name'];
		$filename = time().preg_replace('/\s/', '_', $filename);
		
	   	$this->load->library('upload');
		$this->load->library('getcsv');
		$config['file_name'] = $filename; 
		$config['upload_path'] = 'uploads'; 
		$config['allowed_types'] = 'csv';
		$config['max_size']  = 1024 * 8;
		//$config['encrypt_name'] = TRUE;
		$this->upload->initialize($config);
		$name = 'product_file';
		$retrive_data = $this->upload->do_upload($name);
		if (!$retrive_data)
		{
			
			$this->session->set_flashdata('file_error', $this->upload->display_errors());
			redirect($this->config->item('admin_folder').'/products');
		}
		else
		{
			$data = $this->upload->data();
			$data = $this->getcsv->set_file_path(realpath(".").'/uploads/'.$filename)->get_array();
			if(!isset($data) || empty($data)) // IF File Is Empty
			{
					$this->session->set_flashdata('file_error', 'There is no product in uploaded template.');
					redirect($this->config->item('admin_folder').'/products');
			}
			else // IF File Is Not Empty
			{
				 
				 
				 if($this->is_asso($data)=='0') //IF File Does Not Mach With Template
				 {
					$this->session->set_flashdata('file_error', 'File does not match with given template.');
					redirect($this->config->item('admin_folder').'/products');
				 }
				 else // IF File Have Correct Data
				 {
					$count_products = count($data);
					
					for($i = 0; $i<$count_products; $i++)
					{
						if(empty($data[$i]['name']) || empty($data[$i]['price'])) // IF Two Fields Empty
						{
							$j = $i;
							$array_missing_field[] = 'Product number '.($j+1). ' please check either product name or price is missing.';
							$j = 0;
						}		
						else
						{
							$this->save_bulk_products_each($data[$i]);
						}					
					}
					if(!empty($array_missing_field))
					{
						$this->session->set_flashdata('upload_error', $array_missing_field);					
					}
					//echo '<pre>';print_r($array_missing_field);exit;
				 }
			}		
			//echo '<pre>';print_r($data);exit;
			//echo  'good';
		} 
		redirect($this->config->item('admin_folder').'/products');      
	}
	
	
	
	function is_asso($array){
    	
		$default_array = array(
								"0" => "name",								
								"1" => "slug",
								"2" => "description",
								"3" => "excerpt",
								"4" => "price",
								"5" => "saleprice",
								"6" => "publish_by",
								"7" => "seo_title",
								"8" => "meta",
								"9" => "enabled",
								"10" => "category_id");
		
		foreach($array as $key => $val)
		 {
		 	$values = array_keys($val);
			//echo '<pre>';print_r($values);
			if(!array_diff($values, $default_array) && !array_diff($default_array, $values)) 
			{
				return '1';
			}
			else
			{
				return '0';	
			}
		 }
    	
	}
	
	function  save_bulk_products_each($course_data)
	{
		
			$this->load->helper('text');
			
			//first check the slug field
			$slug = $course_data['slug'];
			//echo '<pre>';print_r($course_data);
			if(empty($slug) || $slug=='')
			{
				$slug = $course_data['name'];
			}
			
			$slug	= url_title(convert_accented_characters($slug), 'dash', TRUE);
			
			//validate the slug
			

			$slug	= $this->Routes_model->validate_slug($slug);
			$route['slug']	= $slug;	
			$route_id	= $this->Routes_model->save($route);
			
			
			$save['name']				=  $course_data['name'];
			$save['slug']				=  $slug;
			$save['description']		=  $course_data['description'];
			$save['excerpt']			=  $course_data['excerpt'];
			$save['price']				=  $course_data['price'];
			$save['saleprice']			=  $course_data['saleprice'];
			$save['publish_by']			=  $this->admin_access;
			$save['seo_title']			=  $course_data['seo_title'];
			$save['meta']				=  $course_data['meta'];
			$save['enabled']			=  $course_data['enabled'];			
			$save['admin_id']			=  $this->admin_id;
			$save['route_id']			=  $route_id;
			//echo '<pre>';print_r($save);exit;
			
			
			//save categories
			
			$categories = array();
			$categories	= $course_data['category_id'];
			if(!$categories)
			{
				$categories	= array();
			}
			
			// save product 
			$product_id	= $this->Product_model->save_uploaded_bulk_courses($save,'', $categories);
			
			//save the route
			$route['id']	= $route_id;
			$route['slug']	= $slug;
			$route['route']	= 'cart/product/'.$product_id;
			
			$this->Routes_model->save($route);
			
			return true;
	
	} 	
	function delete($id = false)
	{
		if ($id)
		{	
			$product	= $this->Product_model->get_product($id);
			//if the product does not exist, redirect them to the customer list with an error
			if (!$product)
			{
				$this->session->set_flashdata('error', lang('error_not_found'));
				redirect($this->config->item('admin_folder').'/products');
			}
			else
			{

				// remove the slug
				
				$this->Routes_model->remove('('.$product->slug.')');

				//if the product is legit, delete them
				$this->Product_model->delete_product($id);

				$this->session->set_flashdata('message', lang('message_deleted_product'));
				redirect($this->config->item('admin_folder').'/products');
			}
		}
		else
		{
			//if they do not provide an id send them to the product list page with an error
			$this->session->set_flashdata('error', lang('error_not_found'));
			redirect($this->config->item('admin_folder').'/products');
		}
	}
}