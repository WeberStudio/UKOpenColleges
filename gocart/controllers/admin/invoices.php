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
		
        $data['admin_id']        		= '';
		
		
		
		
        
		
		// validate the form
        {

			$this->load->view($this->config->item('admin_folder').'/includes/header');
            $this->load->view($this->config->item('admin_folder').'/includes/leftbar');
            $this->load->view($this->config->item('admin_folder').'/includes/inner_footer');
        }
		else
		{
						
				
		
			$this->session->set_flashdata('message', lang('message_invoice_saved'));
	
    	} 
    }
	
	function invoice_detail($invoice_id)
	{
		
			$data['invoice_items'] 	= $this->Invoice_model->get_invoice_items_by_invoice_id($invoice_id);
			$data['tax_rates'] 		= $this->Invoice_Tax_Model->get_taxes(); 
			
			
		
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