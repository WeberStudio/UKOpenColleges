<?php
class dashboard extends Front_Controller {
	

	
	function __construct()
	{
		parent::__construct();
		
		force_ssl();
		
		$this->load->model('Search_model');
		$this->load->model('location_model');
		$this->load->model(array('Customer_model', 'Product_model', 'Tutor_model', 'Forum_model', 'Topic_model', 'Message_Forum_model'));
		$this->load->helper(array('formatting'));
		$this->lang->load('order');
		
	}
	
	function course()
	{
		$this->load->model('Order_model');

		$this->load->model('customer_model');
		$customer_details = $this->go_cart->customer();
		$data['orderss']	= $this->Order_model->get_customer_orders($customer_details['id']);
		//print_r($data['orderss']);exit;
		$this->load->view('dashboard_course',$data);
	}
	
	
	function fourm()
	{
		
		
		$customer_details 	= $this->go_cart->customer();
		$data['forums']		= $this->Forum_model->get_forum_customer($customer_details['id']);
		//print_r($data['forums']); exit;
		//$data['tutorss']		= $this->Tutor_model->get_tutor(2);
		//print_r($data['tutorss']); exit;
		//$data['tutor']		= $this->Tutor_model->get_tutor()
		$this->load->view('dashboard_fourm',$data);
	}
	
	function file_manager()
	{
		$this->load->view('dashboard_file_manager');
	}
	
	
}