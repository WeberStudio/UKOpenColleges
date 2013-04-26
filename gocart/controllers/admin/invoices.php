<?php

class Invoices extends Admin_Controller {    

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
        
		if($this->admin_access=='Admin')
		{
			redirect($this->config->item('admin_folder'));
		}
		
		$this->load->model('Invoice_model');
		$this->load->model('Invoice_Groups_Model');
        $this->load->model('Invoice_Tax_Model');
		$this->load->model('Custom_Fields');
		$this->load->model('Invoice_Custom');			
		$this->lang->load('invoice');

    }

    function index()
    {
        //we're going to use flash data and redirect() after form submissions to stop people from refreshing and duplicating submissions
        //$this->session->set_flashdata('message', 'this is our message');

        $data['page_title']    = lang('categories');
        $data['categories']    = $this->Category_model->get_categories_tierd();
        $this->load->view($this->config->item('admin_folder').'/includes/header');
        $this->load->view($this->config->item('admin_folder').'/includes/leftbar');
        $this->load->view($this->config->item('admin_folder').'/invoices_details', $data);
        $this->load->view($this->config->item('admin_folder').'/includes/inner_footer');

    }

    function form($id = false)
    {            

		$this->load->helper('form');
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
		//$this->show->pe($_REQUEST);
		
        //default values are empty if the invoice is new       
        $data['admin_id']        		= '';
		$data['invoice_group_id']       = '';
        $data['invoice_date_created']   = '';
        $data['invoice_date_modified']  = '';
        $data['invoice_date_due']       = '';
        $data['invoice_number']    		= '';
        $data['invoice_terms']        	= '';
		$data['users']					= '';
		$data['groups'] 				= '';
		
		//Get All Course Providers       
		$data['users'] 					= $this->Invoice_model->get_all_admin();
		
		//Get All Groups 
		$data['groups'] 				= $this->Invoice_model->get_all_groups();
		
		
        //create the photos array for later use
       /* $this->form_validation->set_rules('users', 'users', 'trim|required');
        $this->form_validation->set_rules('invoice_group_id', 'invoice_group_id', 'trim|required');
        $this->form_validation->set_rules('invoice_date_created', 'invoice_date_created', 'trim|required');*/
        
		
		// validate the form
        if (!isset($_POST['submit'])  &&  empty($_POST['submit']))
        {

			$this->load->view($this->config->item('admin_folder').'/includes/header');
            $this->load->view($this->config->item('admin_folder').'/includes/leftbar');
            $this->load->view($this->config->item('admin_folder').'/invoice/invoice_form', $data); 
            $this->load->view($this->config->item('admin_folder').'/includes/inner_footer');
        }
		else
		{
			$source = strtotime($this->input->post('invoice_date_created'));
			$date = new DateTime($source);
						
			$save['admin_id']        		= $this->input->post('users');
			$save['invoice_group_id']       = $this->input->post('invoice_group_id');
			$save['invoice_date_created']   = $date->format('Y-m-d');		
			$save['invoice_date_due']       = $date->format('Y-m-d');
			$save['invoice_number']    		= '';
			$save['invoice_terms']        	= $this->input->post('invoice_terms');
				
			//$this->show->pe($save);
			$invoice = $this->Invoice_model->save($save);
		
			$this->session->set_flashdata('message', lang('message_invoice_saved'));
	
			//go back to the category list
			redirect($this->config->item('admin_folder').'/invoices/invoice_detail/'.$invoice);
    	} 
    }
	
	function invoice_detail($invoice_id)
	{
		
			//$data = array();
			$data['invoice_data'] 	= $this->Invoice_model->get_invoice($invoice_id);
			$data['user_info'] 		= $this->Invoice_model->get_all_admin($data['invoice_data']->admin_id);
			$data['invoice_group'] 	= $this->Invoice_model->get_all_groups($data['invoice_data']->invoice_group_id);
			$data['invoice_items'] 	= $this->Invoice_model->get_invoice_items_by_invoice_id($invoice_id);
			$data['tax_rates'] 		= $this->Invoice_Tax_Model->get_taxes(); 
			
			
			//$this->show->pe($data);		
			$this->load->view($this->config->item('admin_folder').'/includes/header');
            $this->load->view($this->config->item('admin_folder').'/includes/leftbar');
            $this->load->view($this->config->item('admin_folder').'/invoice/invoice_detail', $data); 
            $this->load->view($this->config->item('admin_folder').'/includes/inner_footer');
		
	}
	
	function save_invoice_details($invoice_id)
	{
		
			//$this->show->pe($_POST);	exit;	
			$data 						= array();
			$invoice_item				= array();
			$data['invoice_id'] 		= '';
			$data['item_name'] 			= '';
			$data['item_description'] 	= '';
			$data['item_quantity'] 		= '';
			$data['item_price'] 		= '';
			$data['item_tax_rate_id'] 	= '';
			$item_count 				= count($_POST['item_name']);
			
			
			if(isset($_POST['item_name']) && $item_count>0)
			{
				
				// First Delete All Old Record
				$this->Invoice_model->delete_all_items($invoice_id);			
				
				
				for($i = 0; $i<$item_count; $i++)
				{
				
					
					$data['invoice_id']			= $invoice_id;
					$data['item_tax_rate_id'] 	= $_POST['item_tax_rate_id'][$i];
					$data['item_name'] 			= $_POST['item_name'][$i];					
					$data['item_description'] 	= $_POST['item_description'][$i];
					$data['item_quantity'] 		= $_POST['item_quantity'][$i];
					$data['item_price'] 		= $_POST['item_price'][$i];
					$tax 						= $this->Invoice_Tax_Model->get_tax_by_id($data['item_tax_rate_id']);	
					$item_id 					= $this->Invoice_model->insert_invoice_items($data);
					
					$item_subtotal 				= $data['item_quantity'] * $data['item_price'];
					$item_tax_total 			= $item_subtotal * ($tax->tax_rate_percent / 100);
					$item_total 				= $item_subtotal + $item_tax_total;
					
					$item_totals = array(
							'item_id' 			=> $item_id,
							'item_subtotal' 	=> $item_subtotal,
							'item_tax_total' 	=> $item_tax_total,
							'item_total'		=> $item_total
						);
						
					$item_total_id = $this->Invoice_model->insert_invoice_items_totals($item_totals);	
				}
				
			}
			
			redirect($this->config->item('admin_folder').'/invoices/invoice_detail/'.$data['invoice_id']);
	}
	
	
	
    function delete($id)
    {

        $category    = $this->Category_model->get_category($id);
        //if the category does not exist, redirect them to the customer list with an error
        if ($category)
        {
            $this->load->model('Routes_model');

            $this->Routes_model->delete($category->route_id);
            $this->Category_model->delete($id);

            $this->session->set_flashdata('message', lang('message_delete_category'));
            redirect($this->config->item('admin_folder').'/categories');
        }
        else
        {
            $this->session->set_flashdata('error', lang('error_not_found'));
        }
    }
} 