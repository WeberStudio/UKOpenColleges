<?php
class tutor extends Admin_Controller {    

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
        /*** Get User Info***/
		
		/*** Left Menu Selection ***/
		$this->session->set_userdata('active_module', 'sales');
		/*** Left Menu Selection ***/
		
		$this->auth->check_access($this->admin_access, true);  
        
		if($this->admin_access=='Admin')
		{
			redirect($this->config->item('admin_folder'));
		}
		
		$this->load->model('Tutor_model');
		$this->load->model('Category_model');
		$this->load->model('Product_model');
		$this->load->model('Routes_model');
		$this->load->helper('form');
		$this->load->library('form_validation');
		
    }
	

    function index()
    {
       	
        $data = array();
		//echo "<pre>"; print_r($data['invoices']);exit;
		
        $this->load->view($this->config->item('admin_folder').'/includes/header');
        $this->load->view($this->config->item('admin_folder').'/includes/leftbar');
        $this->load->view($this->config->item('admin_folder').'/tutor/tutor_listing', $data);
        $this->load->view($this->config->item('admin_folder').'/includes/inner_footer');

    }
	
	function form($id = false)
	{
		
		//$this->show->pe($_POST);
		
		
		//default values are empty if the customer is new
		$data['id']					= '';
		$data['group_id']			= '';
		$data['firstname']			= '';
		$data['lastname']			= '';
		$data['email']				= '';
		$data['phone']				= '';		
		$data['description']		= '';
		$data['comments']			= '';		
		$data['email_subscribe']	= '';
		$data['sel_categories']		= '';		
		$data['sel_courses']		= '';
		$data['avatar']				= '';		
		$data['active']				= false;		
		$data['all_categories']		= $this->Category_model->get_categories_dropdown();
		$data['courses']			= $this->Product_model->get_all_products_array();
		//$this->show->pe($data['courses']);
		
		if ($id)
		{	
			
			$tutor					= $this->Tutor_model->get_tutor($id);
			//if the tutor does not exist, redirect them to the customer list with an error
			if (!$tutor)
			{
				$this->session->set_flashdata('error', lang('error_not_found'));
				redirect($this->config->item('admin_folder').'/tutor');
			}
			
			//set values to db values
			$data['id']					= $tutor->tutor_id;			
			$data['firstname']			= $tutor->firstname;
			$data['lastname']			= $tutor->lastname;
			$data['email']				= $tutor->email;
			$data['phone']				= $tutor->phone;
			$data['description']		= $tutor->short_description;
			$data['comments']			= $tutor->comments;
			$data['active']				= $tutor->status;
			$data['email_subscribe']	= $tutor->email_subscribe;			
			
		}
		
		
		$this->form_validation->set_rules('firstname', 'lang:firstname', 'trim|required|max_length[32]');
		$this->form_validation->set_rules('lastname', 'lang:lastname', 'trim|required|max_length[32]');
		$this->form_validation->set_rules('email', 'lang:email', 'trim|required|valid_email|max_length[128]|callback_check_email');
		$this->form_validation->set_rules('phone', 'lang:phone', 'trim|required|max_length[32]');
		$this->form_validation->set_rules('comments', 'lang:comments', 'trim|max_length[128]');
		$this->form_validation->set_rules('active', 'lang:active');
		$this->form_validation->set_rules('group_id', 'group_id', 'numeric');
		$this->form_validation->set_rules('email_subscribe', 'email_subscribe', 'numeric|max_length[1]');
		
		//if this is a new account require a password, or if they have entered either a password or a password confirmation
		if ($this->input->post('password') != '' || $this->input->post('confirm') != '' || !$id)
		{
			$this->form_validation->set_rules('password', 'lang:password', 'required|min_length[6]|sha1');
			$this->form_validation->set_rules('confirm', 'lang:confirm_password', 'required|matches[password]');
		}
		
				
		if ($this->form_validation->run() == FALSE)
		{    
            //echo "<pre>"; print_r($data['invoices']);exit;
			$this->load->view($this->config->item('admin_folder').'/includes/header');
			$this->load->view($this->config->item('admin_folder').'/includes/leftbar');
			$this->load->view($this->config->item('admin_folder').'/tutor/tutor_form', $data);
			$this->load->view($this->config->item('admin_folder').'/includes/inner_footer');
		}
		else
		{
			$save['tutor_id']			= $id;			
			$save['firstname']			= $this->input->post('firstname');
			$save['lastname']			= $this->input->post('lastname');
			$save['email']				= $this->input->post('email');
			$save['phone']				= $this->input->post('phone');
			$save['short_description']	= $this->input->post('description');
			$save['comments']			= $this->input->post('comments');
			$save['status']				= $this->input->post('active');
			$save['email_subscribe'] 	= $this->input->post('email_subscribe');
			
			if ($this->input->post('password') != '' || !$id)
			{
				$save['password']	= $this->input->post('password');
			}
			//$this->show->pe($save);
			$this->Tutor_model->save($save);
			
			$this->session->set_flashdata('message', lang('message_saved_customer'));
			
			//go back to the customer list
			redirect($this->config->item('admin_folder').'/tutor');
		}	
	}
}
?>