<?php
class dashboard extends Front_Controller {
	

	
	function __construct()
	{
		parent::__construct();
		
		force_ssl();
		
		$this->load->model('Search_model');
		$this->load->model('location_model');
		$this->load->model(array('Customer_model', 'Product_model', 'Topic_model', 'Forum_model', 'Topic_model', 'Message_Forum_model'));
		$this->load->helper(array('formatting'));
		$this->lang->load('order');
		
	}
	
	function index()
		{
			if($this->Tutor_model->is_logged_in(false, false))
			{
				$this->load->view('dashboard');
			}
			elseif($this->Customer_model->is_logged_in(false, false))
			{
				$this->load->view('dashboard');
			}
			else
			{
		 	redirect('cart/');
			}
		}
	
	function course()
	{
		if($this->Customer_model->is_logged_in(false, false))
		{
		$this->load->model('Order_model');

		$this->load->model('customer_model');
		$customer_details = $this->go_cart->customer();
		$data['orderss']	= $this->Order_model->get_customer_orders($customer_details['id']);
		$this->load->view('dashboard_course',$data);
		//print_r($data['orderss']);exit;
		}
		else if($this->Tutor_model->is_logged_in(false, false))
		{
		$this->load->model('Order_model');
		$this->load->model('tutor_model');
		$customer_details = $this->go_cart->customer();
		$data['orderss']	= $this->Order_model->get_customer_orders($customer_details['tutor_id']);
        $this->load->view('dashboard_course',$data);
		}
		else
		{
		redirect('cart/');
		}
		
		
	}
	
     /*********************************************************/
    
    // Forum Area Start
    
    /********************************************************/
	
	function fourm()
	{
		
		//DebugBreak()   ;
        if($this->Tutor_model->is_logged_in(false, false))
        {
            
            $customer_details     = $this->go_cart->customer();
            $data['forums']       = $this->Forum_model->get_forum_for_tutors($customer_details['tutor_id']);        
            $this->load->view('dashboard_fourm',$data);
        }
        else if($this->Customer_model->is_logged_in(false, false))
        {              
            $customer_details     = $this->go_cart->customer();
            $data['forums']       = $this->Forum_model->get_forum_customer($customer_details['id']);        
            $this->load->view('dashboard_fourm',$data);
        }
        else
        {               
            redirect('cart/');     
        }		    	
	}
	
    /*********************************************************/
    
     // Forum Area End   
    
    // Topic Area Start
    
    /********************************************************/
    
    function topic_view($forum_id)
    {
        $data['form_id']     = $forum_id;    
        $data['topics']        = $this->Topic_model->get_topic_by_form_id($forum_id);    
        //echo "<pre>"; print_r($data['topics']);exit;
         $this->load->view('topics_listing',$data);
    }
    
    function topic_delete($forum_id, $topic_id)
    {
        $data['topic_id'] = $this->Topic_model->topic_delete($topic_id);
        redirect($this->config->item('admin_folder').'/forums/topic_view/'.$forum_id);
    }
    
    /*********************************************************/
    
    // Topic Area End
    
    /********************************************************/
    
    
	function file_manager()
	{
		$customer_details             = $this->go_cart->customer();
        //$data['file_directory']        = $this->Tutor_model->get_tutor_requests_by_id('customer_id', $customer_details['id']);
        //print_r($data['file_directory']);
        
        //$this->session->set_userdata('file_data',$data['file_directory']);
        //DebugBreak();        
        
        if($this->Tutor_model->is_logged_in(false, false))
        {
            $data['file_directory']        = $this->Tutor_model->get_tutor_requests_by_id('tutor_id', $customer_details['tutor_id']); 
            $this->load->view('dashboard_file_manager', $data);       
        }else if($this->Customer_model->is_logged_in(false, false))
        {
            $data['file_directory']        = $this->Tutor_model->get_tutor_requests_by_id('customer_id', $customer_details['id']);
            $this->load->view('dashboard_file_manager', $data);            
        }else
        {
            redirect('cart/');    
        }
		
        
	}
	
	function my_profile($offset=0)
	{
		
		//$this->show->pe($_REQUEST);
		//make sure they're logged in
		if($this->Tutor_model->is_logged_in(false, false)):
	
		$data['gift_cards_enabled']	= $this->gift_cards_enabled;
		$customer_details 			= $this->go_cart->customer();
		$data['customer']			= ""; //(array)$this->Customer_model->get_customer($this->customer['id']);
		$data['tutor']				= (array)$this->Tutor_model->get_tutor($customer_details['tutor_id']);
		
		//print_r($this->go_cart->customer()); exit;			
		//$data['addresses'] 			= $this->Customer_model->get_address_list($this->customer['id']);		
		//$data['page_title']			= 'Welcome '.$data['customer']['firstname'].' '.$data['customer']['lastname'];
		//$data['customer_addresses']	= $this->Customer_model->get_address_list($data['customer']['id']);
		
		
		// load other page content 
		//$this->load->model('banner_model');
		$this->load->model('order_model');
		$this->load->helper('directory');
		$this->load->helper('date');
		
		//if they want to limit to the top 5 banners and use the enable/disable on dates, add true to the get_banners function
	//	$data['banners']	= $this->banner_model->get_banners();
	//	$data['ads']		= $this->banner_model->get_banners(true);
		$data['categories']	= $this->Category_model->get_categories_tierd(0);
		
		
		// paginate the orders
		$this->load->library('pagination');

		$config['base_url'] = site_url('secure/my_account');
		//$config['total_rows'] = $this->order_model->count_customer_orders($this->customer['id']);
		$config['per_page'] = '15'; 
	
		$config['first_link'] = 'First';
		$config['first_tag_open'] = '<li>';
		$config['first_tag_close'] = '</li>';
		$config['last_link'] = 'Last';
		$config['last_tag_open'] = '<li>';
		$config['last_tag_close'] = '</li>';

		$config['full_tag_open'] = '<div class="pagination"><ul>';
		$config['full_tag_close'] = '</ul></div>';
		$config['cur_tag_open'] = '<li class="active"><a href="#">';
		$config['cur_tag_close'] = '</a></li>';

		$config['num_tag_open'] = '<li>';
		$config['num_tag_close'] = '</li>';

		$config['prev_link'] = '&laquo;';
		$config['prev_tag_open'] = '<li>';
		$config['prev_tag_close'] = '</li>';

		$config['next_link'] = '&raquo;';
		$config['next_tag_open'] = '<li>';
		$config['next_tag_close'] = '</li>';
		
		$this->pagination->initialize($config); 
		
		$data['orders_pagination'] 	= $this->pagination->create_links();
		//$data['orders']				= $this->order_model->get_customer_orders($this->customer['id'], $offset);
		$data['zones_menu']			= $this->Location_model->get_zones_menu($data['tutor']['country']);		
		$data['countries_menu']		= $this->Location_model->get_countries_menu();
		
		
		
		
		$this->load->library('form_validation');	
		$this->form_validation->set_rules('company', 'Company', 'trim|max_length[128]');
		$this->form_validation->set_rules('firstname', 'First Name', 'trim|required|max_length[32]');
		$this->form_validation->set_rules('lastname', 'Last Name', 'trim|required|max_length[32]');
		$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|max_length[128]|callback_check_email');
		$this->form_validation->set_rules('phone', 'Phone', 'trim|required|max_length[32]');
		$this->form_validation->set_rules('email_subscribe', 'Subscribe', 'trim|numeric|max_length[1]');


		if($this->input->post('password') != '' || $this->input->post('confirm') != '')
		{
			$this->form_validation->set_rules('password', 'Password', 'required|min_length[6]|sha1');
			$this->form_validation->set_rules('confirm', 'Confirm Password', 'required|matches[password]');
		}
		else
		{
			$this->form_validation->set_rules('password', 'Password');
			$this->form_validation->set_rules('confirm', 'Confirm Password');
		}


		if ($this->form_validation->run() == FALSE)
		{
			$this->load->view('my_profile', $data);
		}
		else
		{
			$customer 							= array();
			$customer['id']						= $this->customer['id'];
			$customer['company']				= $this->input->post('company');
			$customer['firstname']				= $this->input->post('firstname');
			$customer['lastname']				= $this->input->post('lastname');
			$customer['email']					= $this->input->post('email');
			$customer['phone']					= $this->input->post('phone');
			$customer['post_code']				= $this->input->post('zip');
			$customer['address_street']			= $this->input->post('address1');
			$customer['address_line']			= $this->input->post('address2');
			$customer['city']					= $this->input->post('city');
			$customer['email_subscribe']		= intval((bool)$this->input->post('email_subscribe'));
			$customer['country']				= $this->input->post('country_id');
			$customer['state']					= $this->input->post('zone_id');
			if($this->input->post('password') != '')
			{
				$customer['password']			= $this->input->post('password');
			}
						
			$this->go_cart->save_customer($this->customer);
			$this->Customer_model->save($customer);			
			$this->session->set_flashdata('message', lang('message_account_updated'));			
			//redirect('secure/my_account');
		}
	 	else:
		redirect('cart/');
		endif;
	}
	
	function request_for_tutor($customer_id, $product_id)
    {
        //echo $customer_id.'---------'.$course_id; exit;
        if(!empty($customer_id) && !empty($product_id))
        {
            
            $data = array('customer_id' => $customer_id, 'subject_id' => $product_id, 'request_status' => 'Requested');            
            $result = $this->Order_model->request_for_tutor($data);
        }
        
        redirect(base_url().'dashboard/course');
    }
	
	
}