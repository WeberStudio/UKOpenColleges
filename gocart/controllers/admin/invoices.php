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
		$this->load->helper('formatting_helper');
		$this->load->library('form_validation');	
		$this->load->library('mpdf/mpdf');
		$this->load->library('cezpdf');
		$this->load->helper('pdf');	
		$this->load->helper('form');       
        /*** Get User Info***/
		
		/*** Left Menu Selection ***/
		$this->session->set_userdata('active_module', 'invoice');
		/*** Left Menu Selection ***/
		
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
		$this->load->model('Invoice_Template_model');						
		$this->lang->load('invoice');

    }

    function index($field='invoice_id', $by='ASC', $page=0, $rows=5)
    {
        //we're going to use flash data and redirect() after form submissions to stop people from refreshing and duplicating submissions
        //$this->session->set_flashdata('message', 'this is our message');

        $data['page_title']    	= lang('Invoices');
        $data['invoices']    	= $this->Invoice_model->get_all_invoices($field, $by, $page, $rows);
		//echo "<pre>"; print_r($data['invoices']);exit;
		
		
		$this->load->library('pagination');
		$config['base_url']			= base_url().'/'.$this->config->item('admin_folder').'/invoices/index/'.$field.'/'.$by.'/';
		$config['total_rows']		= $this->Invoice_model->get_count_invoices();
		$config['per_page']			= $rows;
		$config['uri_segment']		= 6;
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
        $this->load->view($this->config->item('admin_folder').'/invoice/invoices_listing', $data);
        $this->load->view($this->config->item('admin_folder').'/includes/inner_footer');

    }
	
	function view_recurring_invoices()
	{
		
        //$data['page_title']    = lang('Invoices');
        $data['rec_invoices']    = $this->Invoice_model->get_recurring_invoices();
		//echo "<pre>"; print_r($data['rec_invoices']);exit;
        $this->load->view($this->config->item('admin_folder').'/includes/header');
        $this->load->view($this->config->item('admin_folder').'/includes/leftbar');
        $this->load->view($this->config->item('admin_folder').'/invoice/rec_invoices_listing', $data);
        $this->load->view($this->config->item('admin_folder').'/includes/inner_footer');
	
	}

    function form($id = false)
    {            

		
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
		$data['invoice_template'] 		= '';
		$data['invoice_paid_status'] 	= '';
		
		
		//Get All Course Providers       
		$data['users'] 					= $this->Invoice_model->get_all_admin();
		
		//Get All Groups 
		$data['groups'] 				= $this->Invoice_model->get_all_groups();
		
		//Get All Templates 
		$data['templates'] 				= $this->Invoice_Template_model->get_templates(0, 0, 'invoice_template_id', 'ASC');
		//$this->show->pe($data['templates']);
        //create the photos array for later use
       /* $this->form_validation->set_rules('users', 'users', 'trim|required');
        $this->form_validation->set_rules('invoice_group_id', 'invoice_group_id', 'trim|required');
        $this->form_validation->set_rules('invoice_date_created', 'invoice_date_created', 'trim|required');*/
       // $this->show->pe($data['templates']);
		
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
			//echo $this->input->post('invoice_date_created');exit;
			
			$save['admin_id']        		= $this->input->post('users');			
			$save['invoice_group_id']       = $this->input->post('invoice_group_id');
			$save['template_id']       		= $this->input->post('invoice_template');
			$save['invoice_date_created']   = $this->input->post('invoice_date_created');		
			$save['invoice_date_due']       = $this->input->post('invoice_date_created');
			$save['invoice_number']    		= '';
			$save['invoice_terms']        	= $this->input->post('invoice_terms');	
			$data['invoice_paid_status']	= 'OPEN';		
			
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
			$data['invoice_totals'] = $this->Invoice_model->get_invoice_totals($invoice_id);
			
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
			$data['item_tax_rate_id'] 	= 0;
			$item_count 				= count($_POST['item_name']);
			$invoice_total				= 0;
			$invoice_tax_total			= 0;
			$item_tax_total				= 0 ;
			
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
					
					//Get Each Item Tax
					
					$tax 						= $this->Invoice_Tax_Model->get_tax_by_id($data['item_tax_rate_id']);					
					//Insert Invoice Item
					$item_id 					= $this->Invoice_model->insert_invoice_items($data);
					
					$item_subtotal 				= $data['item_quantity'] * $data['item_price'];
					if($data['item_tax_rate_id']!=0)
					{
						$item_tax_total 			= $item_subtotal * ($tax->tax_rate_percent / 100);
					}
					$item_total 				= $item_subtotal + $item_tax_total;
					
					$invoice_total 				= $invoice_total + $item_subtotal;
					$invoice_tax_total 			= $invoice_tax_total + $item_tax_total;
					
					$item_totals = array(
							'item_id' 			=> $item_id,
							'item_subtotal' 	=> $item_subtotal,
							'item_tax_total' 	=> $item_tax_total,
							'item_total'		=> $item_total
						);
					// Save Each Calculation Of Each Item	
					$item_total_id = $this->Invoice_model->insert_invoice_items_totals($item_totals);	
				}
				
					// Save Total Calculation Of Tax And Total Price Of Invoice
					$invoice_totals = array(
							'invoice_id' 				=> $invoice_id,							
							'invoice_item_tax_total' 	=> $invoice_tax_total,
							'invoice_item_subtotal'		=> $invoice_total,
							'invoice_total'				=> $invoice_tax_total + $invoice_total
						);
						
					$item_total_id = $this->Invoice_model->save_invoice_totals($invoice_totals);
					
					//If Recurring Invoice Enabled
					$recurring_invoice = array(
							'invoice_id' 				=> $invoice_id,						
							'recur_frequency' 			=> $this->input->post('recur_frequency'),
							'recur_start_date'			=> $this->input->post('recur_start_date'),
							'recur_end_date'			=> $this->input->post('recur_end_date'),
							'recur_next_date'			=> '',					
							'recur_flag'				=> $this->input->post('recur_flag')
							
						);
						
					$recurring_inv_title = $this->Invoice_model->save_recurring_invoice($recurring_invoice);
										
			}
			
			redirect($this->config->item('admin_folder').'/invoices/invoice_detail/'.$data['invoice_id']);
	}
	
	
	
    function delete($invoice_id)
    {
		$this->Invoice_model->delete($invoice_id);	
		redirect($this->config->item('admin_folder').'/invoices');   
    }
	
	function invoice_paid_status($status, $invoice_id)
    {
		//echo $status.'-----'.$invoice_id;
		if(!empty($invoice_id) && !empty($status))
		{
			$this->Invoice_model->invoice_paid_status($invoice_id, $status);	
		}		
		redirect($this->config->item('admin_folder').'/invoices');   
    }
	
	
	function pdf_view($invoice_id, $template_id)
	{
			
		prep_pdf();
		$invoice_footer 	= '';
		$invoice_header 	= '';
		$html_output 		= '';	
		$this->mpdf->SetHeader('{DATE d-m-Y}|{PAGENO}|Customer Invoice');
		
		$selected_template 	 = $this->Invoice_Template_model->get_templates_by_for_invoice($template_id);	
		$invoice_items 		 = $this->Invoice_model->get_invoice_items_by_invoice_id($invoice_id);
		$invoice_totals		 = $this->Invoice_model->get_invoice_totals($invoice_id);
		$customer_details	 = $this->Invoice_model->get_invoice_customer($invoice_id);
		
		//$this->show->pe($invoice_total);
		$html_output 		.= $selected_template->invoice_template_header;
		
		$html_output 		.=' 
				<div class="box paint color_24">
				<div class="accordion" id="accordion4">
				  <div class="accordion-group">
					<div class="accordion-heading"><h4>Recipient Details</h4></div>
					<div id="collapseOne2" class="accordion-body collapse in" >
					  <div class="accordion-inner">
						<div class="pull-left">
						  <span>'.$customer_details->firstname .' '.$customer_details->lastname . '<br/>' . lang('admin_name').' '.$customer_details->company.'<br />
						  <span><strong>'.lang('invoice_phone').':</strong>'.$customer_details->phone.'</span><br>
						  <span><strong>'.lang('invoice_email').':</strong>'.$customer_details->phone.'</span>
						</div>
					  </div>
					</div>
				  </div>
				</div>
			</div>';
		$html_output 		.= '<br><br>';
		
		$html_output 		.= '<table id="item_table" class="items table table-striped table-bordered">
								<thead>
								  <tr>
									<th>'.lang('item').'</th>
									<th style="min-width: 300px;">'.lang('description').'</th>
									<th style="width: 100px;">'.lang('quantity').'</th>
									<th style="width: 100px;">'.lang('price').'</th>
									<th>'.lang('tax_rate').'</th>
									<th>'.lang('subtotal').'</th>
									<th>'.lang('tax').'</th>
									<th>'.lang('total').'</th>
									<th>'.$invoice_data->invoice_id.'</th>                        
								  </tr>
								</thead>
								<tbody>';
								
								if(!empty($invoice_items)){
									foreach ($invoice_items as $invoice_item){
									 $html_output 		.=  '
									  <tr id="new_item" >
										<td style="vertical-align: top;">'.$invoice_item['item_name'].'</td>
										<td>'.$invoice_item['item_description'].'</td>
										<td style="vertical-align: top;">'.$invoice_item['item_quantity'].'</td>
										<td style="vertical-align: top;">'.$invoice_item['item_price'].'</td>
										<td style="vertical-align: top;">'.lang('none').'</td>
										<td style="vertical-align: top;">'.format_currency($invoice_item['item_subtotal']).'</td>
										<td style="vertical-align: top;">'.format_currency($invoice_item['item_tax_total']).'</td>
										<td style="vertical-align: top;">'.format_currency($invoice_item['item_total']).'</td>
										<td></td>
									  </tr>';
									} 
								}
									
		$html_output 		.= 	'</tbody>
							  </table>';
		
		
		 if(!empty($invoice_totals)){
			$html_output 		.= '<table class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>'.lang('subtotal').'</th>
										<th>'.lang('item_tax').'</th>							
										<th>'.lang('total').'</th>							
									</tr>
								</thead>
								<tbody>					
									<tr>
										<td>'.format_currency($invoice_totals[0]['invoice_item_subtotal']).'</td>
										<td>'.format_currency($invoice_totals[0]['invoice_item_tax_total']).'</td>							
										<td>'.format_currency($invoice_totals[0]['invoice_total']).'</td>							
									</tr>
								</tbody>
							</table>';
				}
                 
        $html_output 		.= '<p><strong>'.lang('invoice_terms').'</strong></p><p>'.$invoice_data->invoice_terms.'</p>';
		$html_output 		.= $selected_template->invoice_template_footer;
		
		//echo $html_output;exit;
		$this->mpdf->WriteHTML($html_output);
		$this->mpdf->Output();
		exit;
	}
} 