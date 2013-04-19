<?php
class Tax extends Admin_Controller {

	//this is used when editing or adding a customer
	//var $customer_id	= false;	
	
	function __construct()
	{		
		parent::__construct();
		$this->auth->check_access('Superadmin', true);
		
		/*** Get User Info***/
		//$admin_info = $this->admin_session->userdata('admin');
		$user_info 			= $this->auth->admin_info();
		$this->admin_id 	= $user_info['id'];
		$this->admin_email  = $user_info['email'];
		$this->admin_access = $user_info['access'];
		$this->first_name 	= $user_info['firstname'];
		$this->last_name 	= $user_info['lastname'];
		$this->image 		= $user_info['image'];
		/*** Get User Info***/
		$this->lang->load('invoice');		
		$this->load->model(array('Invoice_Tax_Model', 'Location_model'));
		$this->load->helper('formatting_helper');
		
	}
	
	function index($field='tax_rate_id', $by='ASC', $page=0)
	{
		
		$data['taxes']	= $this->Invoice_Tax_Model->get_taxes(50,$page, $field, $by);
		
		 //echo "<pre>";print_r($data['taxes']);exit;
		
		$this->load->view($this->config->item('admin_folder').'/includes/header');
        $this->load->view($this->config->item('admin_folder').'/includes/leftbar');
		$this->load->view($this->config->item('admin_folder').'/tax/tax_listing', $data);
        $this->load->view($this->config->item('admin_folder').'/includes/inner_footer'); 
	}
	
	
	function form($id = false)
	{
		force_ssl();
		$this->load->helper('form');
		$this->load->library('form_validation');
		//echo "<pre>";print_r($_POST);exit;
		//default values are empty if the customer is new
		$data['id']							= '';
		$data['admin_id']					= '';
		$data['tax_rate_name']				= '';
		$data['tax_rate_percent']			= '';
		$data['tax_level']					= '0';		
		
		
						
		if ($id)
		{	
			//$this->tax_rate_id	= $id;
			$tax	= $this->Invoice_Tax_Model->get_tax_by_id($id);
			//if the tax does not exist, redirect them to the tax list with an error
			if (!$tax)
			{
				$this->session->set_flashdata('error', lang('error_not_found'));
				redirect($this->config->item('admin_folder').'/tax/form');
			}
			//echo "<pre>";print_r($tax);exit;
			//set values to db values
			$data['id']							= $tax->tax_rate_id;
			$data['admin_id']					= $tax->admin_id;
			$data['tax_rate_name']				= $tax->tax_rate_name;
			$data['tax_rate_percent']			= $tax->tax_rate_percent;
			$data['tax_level']					= $tax->tax_level;
		}
		
		$this->form_validation->set_rules('tax_rate_name',  'Tax Rate Name', 'trim');
		$this->form_validation->set_rules('tax_rate_percent', 'Tax Rate Percentage', 'trim');
		
		
		 //echo "<pre>";print_r($_POST);exit;
		// echo validation_errors();exit;
		if ($this->form_validation->run() == FALSE)
		{    
            //echo "<pre>";print_r($_POST);exit;
			$this->load->view($this->config->item('admin_folder').'/includes/header');
            $this->load->view($this->config->item('admin_folder').'/includes/leftbar');  
			$this->load->view($this->config->item('admin_folder').'/tax/tax_form', $data);
            $this->load->view($this->config->item('admin_folder').'/includes/inner_footer');
		}
		else
		{
			$save['tax_rate_id']			= $id;
			$save['admin_id'] 				= $this->admin_access;
			$save['tax_rate_name']			= $this->input->post('tax_rate_name');
			$save['tax_rate_percent']		= $this->input->post('tax_rate_percent');
			$save['tax_level']				= $this->input->post('tax_level');
			if(empty($save['tax_level']))
			{
				$save['tax_level']		= 'Normal';
			}
			else
			{
				$save['tax_level']		= 'Universal';
				
			}
			
			$id = $this->Invoice_Tax_Model->save($save);			
			$this->session->set_flashdata('message', lang('message_saved_tax'));
			
			//go back to the customer list
			redirect($this->config->item('admin_folder').'/tax/form/'.$id);
		}
	}
	
	
	
	function delete($id = false)
	{
		if ($id)
		{	
			$tax	= $this->Invoice_Tax_Model->get_tax_by_id($id);
			
			//if the tax does not exist, redirect them to the tax list with an error
			if (!$tax)
			{
				
				$this->session->set_flashdata('error', lang('error_not_found'));
				redirect($this->config->item('admin_folder').'/tax');
			}
			else
			{
				
				//if the tax is legit, delete them
				$delete	= $this->Invoice_Tax_Model->delete($id);
				
				$this->session->set_flashdata('message', lang('message_deleted'));
				redirect($this->config->item('admin_folder').'/tax');
			}
		}
		else
		{
			//if they do not provide an id send them to the tax list page with an error
			$this->session->set_flashdata('error', lang('error_not_found'));
			redirect($this->config->item('admin_folder').'/tax');
		}
	}
	
	
}