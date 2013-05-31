<?php
class Dashboard extends Admin_Controller {

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
		
		/*** Left Menu Selection ***/
		$this->session->set_userdata('active_module', 'dashboard');
		/*** Left Menu Selection ***/
		
		if($this->auth->check_access('Orders'))
		{
			redirect($this->config->item('admin_folder').'/orders');
		}
		
		$this->load->model('Order_model');
		$this->load->model('Customer_model');
		$this->load->helper('date');		
		$this->lang->load('dashboard');
		$this->load->model('dashboard_model');
		
		
	}
	
	function index()
	{
		//check to see if shipping and payment modules are installed
		//$data['payment_module_installed']	= (bool)count($this->Settings_model->get_settings('payment_modules'));
		//$data['shipping_module_installed']	= (bool)count($this->Settings_model->get_settings('shipping_modules'));
		
		$data['page_title']	=  lang('dashboard');
		
		// get 5 latest orders
		$data['orders']	= $this->Order_model->get_orders(false, 'id' , 'DESC', 5);
		
		
		
		// get 5 latest customers
		$data['customers'] = $this->Customer_model->get_customers(5,"","DESC");
		
		$this->load->view($this->config->item('admin_folder').'/includes/header');
		$this->load->view($this->config->item('admin_folder').'/includes/leftbar');
		$this->load->view($this->config->item('admin_folder').'/dashboard', $data);
		$this->load->view($this->config->item('admin_folder').'/includes/footer');		
		
	}

}