<?php 
class Tutor_login extends Front_Controller {
	
	var $customer;
	
	function __construct()
	{
		parent::__construct();
		
		force_ssl();
		
		$this->load->model(array('location_model'));
		$this->load->model('tutor_model');
		$this->load->model('Category_model');
		$this->load->model('Product_model');
		//$this->customer = $this->go_cart->customer();
		$this->load->helper('formatting_helper');
		$this->load->helper('form');
		$this->lang->load('tutor');
	}
	
	
	function index()
	{
		if($this->Tutor_model->is_logged_in(false, false)):
		redirect('cart/');
		
		else:
		$this->load->view('tutor_login');
		endif;
	}
	function logout()
	{
		$this->Tutor_model->logout();
		redirect('tutor_login');
	}
	
	function login()
	{
		
		
		$this->load->library('form_validation');
		
		
		$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|max_length[128]');
		$this->form_validation->set_rules('password', 'Password', 'required|min_length[6]');
		if ($this->form_validation->run() == FALSE)
		{
		$this->load->view('tutor_login');
		}
		else{
		
		$submitted 		= $this->input->post('submitted');
		if ($submitted)
		{
			$email		= $this->input->post('email');
			$password	= $this->input->post('password');
			//$remember   = $this->input->post('remember');
			//$redirect	= $this->input->post('redirect');
			$login		= $this->tutor_model->login($email, $password);
			//echo print_r($login); exit;
			if ($login)
			{
				redirect('');	
			}
			else
			{
				$this->session->set_flashdata('error', lang('login_failed'));
				redirect('tutor_login');
			}
			$this->session->set_flashdata('error', 'You Are Not Registered');
		}
		$this->session->set_flashdata('error', 'You Are Not Registered');
		}
	}
	
	
	
	function register()
	{
		$data['id']			= '';
		$data['company']	= '';
		$data['firstname']	= '';
		$data['lastname']	= '';
		$data['email']		= '';
		$data['phone']		= '';
		$data['address1']	= '';
		$data['address2']	= '';
		$data['city']		= '';
		$data['state']		= '';
		$data['zip']		= '';
		$data['country_id']	= '';
		$data['zone_id']	= '';
		$data['categories']			= array();
		$data['courses']			= array();	
		$data['all_categories']		= $this->Category_model->get_categories_dropdown();
		$data['all_courses']		= $this->Product_model->get_all_products_array();
		$data['countries_menu']		= $this->Location_model->get_countries_menu();
		$data['zones_menu']			= $this->Location_model->get_zones_menu('223');
		$data['country_id']			= "";
		$data['zone_id']			= "";
		//print_r($this->Product_model->get_all_products_array());exit;
		
			
		$this->load->library('form_validation');	
		$this->form_validation->set_rules('firstname', 'lang:firstname', 'trim|required|max_length[32]');
		$this->form_validation->set_rules('lastname', 'lang:lastname', 'trim|required|max_length[32]');
		$this->form_validation->set_rules('street_address', 'Address', 'trim|required');
		$this->form_validation->set_rules('city', 'City', 'trim|required');
		$this->form_validation->set_rules('zip_code', 'zip_code', 'trim|required|numeric|max_length[6]');
		$this->form_validation->set_rules('phone', 'Phone', 'trim|required|max_length[32]|numeric');
		$this->form_validation->set_rules('email', 'lang:email', 'trim|required|valid_email|max_length[128]|callback_check_email');
		
		
		$this->form_validation->set_rules('password', 'lang:password', 'required|min_length[6]|sha1');
		$this->form_validation->set_rules('confirm', 'lang:confirm_password', 'required|matches[password]');
		$this->form_validation->set_rules('comment', 'lang:comments', 'trim|max_length[128]');
		
		
		if ($this->form_validation->run() == FALSE)
		{    
            //echo "<pre>"; print_r($data['invoices']);exit;
			$this->load->view('tutor_register', $data);
			
		}
		else{	
			$save['tutor_id']			= false;
			
			$save['firstname']			= $this->input->post('firstname');
			$save['lastname']			= $this->input->post('lastname');
			$save['email']				= $this->input->post('email');
			$save['phone']				= $this->input->post('phone');
			$save['short_description']	= $this->input->post('description');
			$save['comments']			= $this->input->post('comment');
			$save['status']				= 1;
			$save['email_subscribe'] 	= $this->input->post('email_subscribe');
			$save['street_address']		= $this->input->post('street_address');
			$save['address_line_op']	= $this->input->post('address_line_op');
			$save['city']				= $this->input->post('city');
			$save['state']				= $this->input->post('state');
			$save['zip_code']			= $this->input->post('zip_code');
			$save['country']			= $this->input->post('country');
			$save['password']			= $this->input->post('password');
			
			if($this->input->post('courses'))
			{
				$save['courses'] = json_encode($this->input->post('courses'));
			}
			else
			{
				$save['courses'] = '';
			}
			
			//save categories
			
			if($this->input->post('categories'))
			{
				$save['categories'] = json_encode($this->input->post('categories'));
			}
			else
			{
				$save['categories'] = '';
			}
			$id = $this->tutor_model->save($save);
			 redirect('');
		}
		
	}
	
	
	

}
?>