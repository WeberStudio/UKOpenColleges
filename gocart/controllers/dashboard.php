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
	
	function index()
		{
			if($this->Customer_model->is_logged_in(false, false)):
			$this->load->view('dashboard');
			else:
		 	redirect('cart/');
		 	endif;
		}
	
	function course()
	{
		if($this->Customer_model->is_logged_in(false, false)):
		$this->load->model('Order_model');

		$this->load->model('customer_model');
		$customer_details = $this->go_cart->customer();
		$data['orderss']	= $this->Order_model->get_customer_orders($customer_details['id']);
		//print_r($data['orderss']);exit;
		$this->load->view('dashboard_course',$data);
		else:
		redirect('cart/');
		endif;
	}
	
	
	function fourm()
	{
		
		if($this->Customer_model->is_logged_in(false, false)):


		$customer_details 	= $this->go_cart->customer();
		$data['forums']		= $this->Forum_model->get_forum_customer($customer_details['id']);
		//echo "<pre>";print_r($data['forums']); exit;
		$this->load->view('dashboard_fourm',$data);
		else:
		redirect('cart/');
		endif;
	}
	
	function file_manager()
	{
			
		//$customer_details 			= $this->go_cart->customer();
		//$data['file_directory']		= $this->Tutor_model->get_tutor_requests_by_id('customer_id', $customer_details['id']);
		//print_r($data['file_directory']);
		
		//$this->session->set_userdata('file_data',$data['file_directory']);
        //DebugBreak();		
		if($this->Customer_model->is_logged_in(false, false)):
		$this->load->view('dashboard_file_manager');
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