<?php
class email extends CI_Controller {
	/**
	 * Admin Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/admin
	 *	- or -  
	 * 		http://example.com/admin/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/admin/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	 	// defult constructor 
	public function __construct()
    {
            parent::__construct();
            // Your own constructor code
            $this->load->model("admin/email_model");
    }
// contollers are created below this line 

	public function emialaddresslist()
	{
	
		$data['list'] = $this->email_model->getemiallist();
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/emialaddresslist',$data);
		$this->load->view('admin/footer');
	}
	
	public function addnewemailaddress(){
					$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/addnewemailaddress');
		$this->load->view('admin/footer');
	}
	
	public function saveemailaddress(){
		 $data['title'] = $this->input->post('title');
		 $data['email'] = $this->input->post('email');
		 $this->email_model->addnewemailaddress($data); 
		 redirect('admin_main/email/emialaddresslist', 'refresh');
	}
	
	public function editemailaddress($id){
		$data['email'] = $this->email_model->geteamiladdressedit($id); 
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/editemailaddress',$data);
		$this->load->view('admin/footer');
	}
	
	public function updateemailaddress(){
		$data['title'] = $this->input->post('title');
		$data['email'] = $this->input->post('email');
		$data['id'] = $this->input->post('emailid');
		$this->email_model->updateeamiladdress($data); 
		redirect('admin_main/email/emialaddresslist', 'refresh');
	}
	
	// ===============================================  		Email Template List and Add 
	
	public function emailtemplatelist(){
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$data['mails'] = $this->email_model->email_template_list();
		$this->load->view('admin/emailtemplatelist',$data);
		$this->load->view('admin/footer');
	}

	public function addnewemailtemplate(){
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/addnewemailtemplate');
		$this->load->view('admin/footer');
	}
	
	public function savenewemailtemplate(){
		$data['email_name'] 		= $this->input->post('email_name');
		$data['email_label'] 		= $this->input->post('email_label');
		$data['title'] 				= $this->input->post('title');
		$data['email_variables'] 	= $this->input->post('email_variables');
		$data['description'] 		= $this->input->post('description');
		$this->email_model->save_email_template($data);
		$this->session->set_flashdata('msg', 'Email Template has been successfully added');
		redirect('admin_main/email/emailtemplatelist');
	}
	
	public function edit_template($id){
		$data['mails'] = $this->email_model->get_edit_template($id);
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/edit_emailtemplate',$data);
		$this->load->view('admin/footer');
	}

	public function edit_mail_template(){
		$data['Email_ID'] 			= $this->input->post('Email_ID');
		$data['email_name'] 		= $this->input->post('email_name');
		$data['email_label'] 		= $this->input->post('email_label');
		$data['title'] 				= $this->input->post('title');
		$data['email_variables'] 	= $this->input->post('email_variables');
		$data['description'] 		= $this->input->post('description');
		$this->email_model->save_edit_email_template($data);
		$this->session->set_flashdata('msg', 'Email Template has been successfully updated');
		redirect('admin_main/email/edit_template/'.$data['Email_ID']);
	}

}
?>
