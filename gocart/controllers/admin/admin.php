<?php
class Admin extends Admin_Controller
{
	//these are used when editing, adding or deleting an admin
	var $admin_id		= false;
	var $current_admin	= false;
	function __construct()
	{
		parent::__construct();
		
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
		
		/*** Left Menu Selection ***/
		$this->session->set_userdata('active_module', 'sales');
		/*** Left Menu Selection ***/
		
		$this->auth->check_access($this->admin_access, true);
		
		//load the admin language file in
		$this->lang->load('admin');
		$this->current_admin	= $this->session->userdata('admin');
	}

	function index($order_by="firstname", $sort_order="ASC", $page=0, $rows=5)
	{
       //Go back to the customer list if not Superadmin
		if($this->admin_access=='Admin')
		{
			redirect($this->config->item('admin_folder'));
		}
		
		//Store the sort term
		$data['order_by']	= $order_by;
		$data['sort_order']	= $sort_order;      
	   
	   
		$data['page_title']	= lang('admins');
		$data['admins']		= $this->auth->get_admin_list(array('order_by'=>$order_by, 'sort_order'=>$sort_order, 'rows'=>$rows, 'offset'=>$page));
		
    	$this->load->library('pagination');
		$config['base_url']		= base_url().'/'.$this->config->item('admin_folder').'/admin/index/'.$order_by.'/'.$sort_order.'/';
		$config['total_rows']	= 12;
		$config['per_page']		= $rows;
		$config['uri_segment']	= 6;
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
		
		$config['prev_link']		= 'Prev';
		$config['prev_tag_open']	= '<li>';
		$config['prev_tag_close']	= '</li>';

		$config['next_link']		= 'Next';
		$config['next_tag_open']	= '<li>';
		$config['next_tag_close']	= '</li>';
		
		$this->pagination->initialize($config);
			
		$this->load->view($this->config->item('admin_folder').'/includes/header');
		$this->load->view($this->config->item('admin_folder').'/includes/leftbar');
		$this->load->view($this->config->item('admin_folder').'/admins', $data);
		$this->load->view($this->config->item('admin_folder').'/includes/inner_footer'); 
	}
	function delete($id)
	{
		//even though the link isn't displayed for an admin to delete themselves, if they try, this should stop them.
		if ($this->current_admin['id'] == $id)
		{
			$this->session->set_flashdata('message', lang('error_self_delete'));
			redirect($this->config->item('admin_folder').'/admin');	
		}
		
		//delete the user
		$this->auth->delete($id);
		$this->session->set_flashdata('message', lang('message_user_deleted'));
		redirect($this->config->item('admin_folder').'/admin');
	}
	function form($id = false)
	{
		force_ssl();
		//print_r($_FILES);exit;
		$this->load->helper('form');
		$this->load->library('form_validation');
		$this->form_validation->set_error_delimiters('<div class="error">', '</div>');
		
		/*** Start Image Upload Config******/		
		$config['upload_path']		= 'uploads/images/full';
		$config['allowed_types']	= 'gif|jpg|png';
		$config['max_size']			= $this->config->item('size_limit');
		$config['max_width']		= '1024';
		$config['max_height']		= '768';
		$config['file_name'] 		= "thumb_".$this->admin_id;
		$config['overwrite']		= true;
		$config['remove_spaces']	= true;
		//$config['encrypt_name']		= true;
		//$this->admin_id
		$this->load->library('upload', $config);		
		/*** End Image Upload Config******/
		
		$data['page_title']		= lang('admin_form');
		
		//default values are empty if the customer is new
		$data['id']					= '';
		$data['company']			= '';
		$data['firstname']			= '';
		$data['lastname']			= '';
		$data['email']				= '';
		$data['access']				= '';
		$data['image']				= '';
		$data['phone']				= '';
		$data['url']				= '';
		$data['image']				= '';
		$data['street_address']		= '';
		$data['address_line_op']	= '';
		$data['city']				= '';
		$data['state']				= '';
		$data['zip_code']			= '';
		$data['country']			= '';
		$data['telephone']			= '';
		
		if ($id)
		{	
			$this->admin_id		= $id;
			$admin			= $this->auth->get_admin($id);
			//if the administrator does not exist, redirect them to the admin list with an error
			if (!$admin)
			{
				$this->session->set_flashdata('message', lang('admin_not_found'));
				redirect($this->config->item('admin_folder').'/admin');
			}
			//set values to db values
			$data['id']					= $admin->id;
			$data['firstname']			= $admin->firstname;
			$data['lastname']			= $admin->lastname;
			$data['email']				= $admin->email;
			$data['phone']				= $admin->phone;
			$data['company']			= $admin->company;
			$data['url']				= $admin->url;
			$data['image']				= $admin->image;
			$data['street_address']		= $admin->street_address;
			$data['address_line_op']	= $admin->address_line_op;
			$data['city']				= $admin->city;
			$data['state']				= $admin->state;
			$data['zip_code']			= $admin->zip_code;
			$data['country']			= $admin->country;
			$data['telephone']			= $admin->telephone;
		}
		
		$this->form_validation->set_rules('company', 'Company', 'trim|max_length[128]');
		$this->form_validation->set_rules('firstname', 'lang:firstname', 'trim|max_length[32]');
		$this->form_validation->set_rules('lastname', 'lang:lastname', 'trim|max_length[32]');
		$this->form_validation->set_rules('email', 'lang:email', 'trim|required|valid_email|max_length[128]|callback_check_email');
		$this->form_validation->set_rules('url', 'lang:url', 'trim|required');
		$this->form_validation->set_rules('phone', 'Phone', 'trim|required|max_length[32]');
		$this->form_validation->set_rules('image', 'lang:image', 'trim');
		
		//if this is a new account require a password, or if they have entered either a password or a password confirmation
		if ($this->input->post('password') != '' || $this->input->post('confirm') != '' || !$id)
		{
			$this->form_validation->set_rules('password', 'lang:password', 'required|min_length[6]|sha1');
			$this->form_validation->set_rules('confirm', 'lang:confirm_password', 'required|matches[password]');
		}
		
		if ($this->form_validation->run() == FALSE)
		{
			
            $this->load->view($this->config->item('admin_folder').'/includes/header');
            $this->load->view($this->config->item('admin_folder').'/includes/leftbar');
			$this->load->view($this->config->item('admin_folder').'/admin_form', $data);
            $this->load->view($this->config->item('admin_folder').'/includes/inner_footer');  
		}
		else
		{
			
			
			$uploaded	= $this->upload->do_upload('image');
			
			if ($id)
			{
				//echo $id;
				//delete the original file if another is uploaded
				if($uploaded)
				{
					//echo 'uploaded';
					if($data['image'] != '')
					{
						$file = array();
						$file[] = 'uploads/images/small/'.$data['image'];
						$file[] = 'uploads/images/thumbnails/'.$data['image'];
						
						foreach($file as $f)
						{
							//delete the existing file if needed
							if(file_exists($f))
							{
								unlink($f);
							}
						}
					}
				}
				
			}
			else
			{
				if(!$uploaded)
				{
					$error	= $this->upload->display_errors();
					if($error != lang('error_file_upload'))
					{
						$data['error']	.= $this->upload->display_errors();
						$this->load->view($this->config->item('admin_folder').'/admin/form/', $data);
						return; //end script here if there is an error
					}
				}
			}
			
			if($uploaded)
			{
				$image			= $this->upload->data();
				$save['image']	= $image['file_name'];
				
				$this->load->library('image_lib');
				
				//small image
				$config['image_library'] = 'gd2';
				$config['source_image'] = 'uploads/images/full/'.$save['image'];
				$config['new_image']	= 'uploads/images/small/'.$save['image'];
				$config['maintain_ratio'] = TRUE;
				$config['width'] = 200;
				$config['height'] = 200;
				//$config['file_name'] 		= "thumb_".$this->admin_id."jpg";
				$config['overwrite']		= true;
				$config['remove_spaces']	= true;
				$this->image_lib->initialize($config); 
				$this->image_lib->resize();
				$this->image_lib->clear();
				

				//cropped thumbnail
				$config['image_library'] = 'gd2';
				$config['source_image'] = 'uploads/images/small/'.$save['image'];
				$config['new_image']	= 'uploads/images/thumbnails/'.$save['image'];
				$config['maintain_ratio'] = TRUE;
				$config['width'] = 50;
				$config['height'] = 50;
				//$config['file_name'] 		= "thumb_".$this->admin_id."jpg";
				$config['overwrite']		= true;
				$config['remove_spaces']	= true;
				$this->image_lib->initialize($config); 	
				$this->image_lib->resize();	
				$this->image_lib->clear();
				
			}
				
			$save['id']					= $id;
			$save['firstname']			= $this->input->post('firstname');
			$save['lastname']			= $this->input->post('lastname');
			$save['email']				= $this->input->post('email');
			$save['access']				= 'Admin';
			$save['phone']				= $this->input->post('phone');
			$save['company']			= $this->input->post('company');
			$save['url']				= $this->input->post('url');
			$save['status']				= '1';
			$save['street_address']		= $this->input->post('street_address');
			$save['address_line_op']	= $this->input->post('address_line_op');
			$save['city']				= $this->input->post('city');
			$save['state']				= $this->input->post('state');
			$save['zip_code']			= $this->input->post('zip_code');
			$save['country']			= $this->input->post('country');
			$save['telephone']			= $this->input->post('telephone');
			
			if ($this->input->post('password') != '' || !$id)
			{
				$save['password']	= $this->input->post('password');
			}
			
			$this->auth->save($save);
			
			$this->session->set_flashdata('message', lang('message_user_saved'));
			
			//go back to the customer list
			if($this->admin_access=='Superadmin')
			{
				redirect($this->config->item('admin_folder').'/admin');
			}
			redirect($this->config->item('admin_folder').'/admin/form/'.$id);
			
		}
	}
	
	function check_email($str)
	{
		$email = $this->auth->check_email($str, $this->admin_id);
		if ($email)
		{
			$this->form_validation->set_message('check_email', lang('error_email_taken'));
			return FALSE;
		}
		else
		{
			return TRUE;
		}
	}
}