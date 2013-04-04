<?php

class Invoices extends Admin_Controller {    

    function __construct()
    {        
        parent::__construct();

        remove_ssl();
        //$this->load->helper('url');   
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
        $this->load->model('invoice_model'); 
        $this->load->helper('form'); 
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

        $data['page_title']    = lang('invoices');
        $data['invoices']    = $this->Invoice_model->get_all_template();
        

        $this->load->view($this->config->item('admin_folder').'/includes/header');
        $this->load->view($this->config->item('admin_folder').'/includes/leftbar');
        $this->load->view($this->config->item('admin_folder').'/template_Details', $data);
        $this->load->view($this->config->item('admin_folder').'/includes/inner_footer');

    }
    function invoice_details()
    {
        
        $data['invoices']    = $this->Invoice_model->get_all_invoices();
        $this->load->view($this->config->item('admin_folder').'/includes/header');
        $this->load->view($this->config->item('admin_folder').'/includes/leftbar');
        $this->load->view($this->config->item('admin_folder').'/invoices_details',$data);
        $this->load->view($this->config->item('admin_folder').'/includes/inner_footer'); 
    }
    function template_form($id)
    {         
           $this->load->library('form_validation');
           $this->load->view($this->config->item('admin_folder').'/includes/header');
           $this->load->view($this->config->item('admin_folder').'/includes/leftbar');
           $this->load->view($this->config->item('admin_folder').'/template_form');
           $this->load->view($this->config->item('admin_folder').'/includes/inner_footer');
    
    }
    
    function template_submit()
    {
        $this->load->helper('form'); 
            
         //echo $id= $temp->invoice_template_id;
        // die("maarrr gya");
        $name =   $this->input->post('temp_name');
        $description= $this->input->post('temp_description');
        $body=strip_tags($description); 
        $date= $this->input->post('date');
        $template = array(
                        'invoice_template_id' => '',
                        'date' => $date,
                        'invoice_template_title' => $name,
                        'invoice_template_body' =>$body,
                        'user_id' => '1' ,
                        'client_id' => '1'                                 
                        );
           $this->Invoice_model->save($template);  
                $this->index();
    }
    function template_update($id)
    {

          $data['invoices']    = $this->Invoice_model->get_template($id);
           $this->load->view($this->config->item('admin_folder').'/includes/header');
           $this->load->view($this->config->item('admin_folder').'/includes/leftbar');
           $this->load->view($this->config->item('admin_folder').'/edit_form',$data);
           $this->load->view($this->config->item('admin_folder').'/includes/inner_footer');   
    }
    function edit_template($id)
    {  
        $name =   $this->input->post('temp_name');
        $description= $this->input->post('temp_description');
        $date= $this->input->post('date');
        $template = array(
                        'date' => $date,
                        'invoice_template_title' => $name,
                        'invoice_template_body' =>$description,
                        'user_id' => '1' ,
                        'client_id' => '1'                                 
                        );
           $this->Invoice_model->update_template($id,$template);  
                $this->index();
    }
       
    function form($id = false)
    {         

           $this->load->view($this->config->item('admin_folder').'/includes/header');
           $this->load->view($this->config->item('admin_folder').'/includes/leftbar');
           $this->load->view($this->config->item('admin_folder').'/invoice_form');
           $this->load->view($this->config->item('admin_folder').'/includes/inner_footer');
       
    }
    function invoices_save()
    {
        $name =   $this->input->post('name');
        $group =   $this->input->post('group'); 
        $date =  date("m.d.y"); 
        $duedate=date("m.d.y");
        $invoice_number=uniqid();
         $data = array(
                        'invoice_id' => '',
                        'client_name'=>$name,
                        'user_id' => '1' ,
                        'client_id' => '1',
                        'invoice_group_id' =>'1',  
                        'invoice_date_created' => $date,
                        'invoice_date_due' => $duedate,
                        'invoice_number' => $invoice_number ,
                        'invoice_terms' => ''
                        
                                                       
                        );
           $this->Invoice_model->invoice_save($data);
               $this->invoice_details();
    }
     function invoice_update($id)
    {

          $data['invoices']    = $this->Invoice_model->update_template($id);
          $this->load->view($this->config->item('admin_folder').'/includes/header');
          $this->load->view($this->config->item('admin_folder').'/includes/leftbar');
          $this->load->view($this->config->item('admin_folder').'/edit_invoice',$data);
          $this->load->view($this->config->item('admin_folder').'/includes/inner_footer');   
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
