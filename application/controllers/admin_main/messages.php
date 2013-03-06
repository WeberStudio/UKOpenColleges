<?php
class messages extends CI_Controller {
	public function __construct()
    {
            parent::__construct();
            // Your own constructor code
			$this->load->model('admin/messages_model');	
			
    }
	
	// contollers are created below this line 
	public function get_student_messages($student_id)
	{
	//	$data['rights'] = $this->messages_model->getRights();
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$data['student_chat'] = $this->messages_model->get_student_messages($student_id);
		$this->load->view('admin/messages',$data);		
		$this->load->view('admin/footer');
	}
	public function send_message()
	{
		$data['student_id'] = $this->input->post('student_id');
		$data['message'] = $this->input->post('message');
		$this->messages_model->submit_messages($data);
		redirect('/admin_main/messages/get_student_messages/'.$data['student_id']);
	}

	public function message_status_update()
	{
		$data['id'] = $_GET['id'];
		$data['status'] = $_GET['status'];
		$result = $this->messages_model->message_update($data);
		if($result == 1){
			echo "Status successfuly changed";
		}
	}
	
	public function admin_status_update()
	{
		$data['id'] = $_GET['id'];
		$data['student_status'] = $_GET['student_status'];
		$data['course_status'] = $_GET['course_status'];
		$result = $this->messages_model->admin_message_update($data);
		if($result == 1){
			echo "Status successfuly changed";
		}
	}


}
?>
