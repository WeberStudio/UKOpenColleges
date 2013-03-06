<?php
class courses_students extends CI_Controller {

	 	// defult constructor 
	public function __construct()
    {
            parent::__construct();
            // Your own constructor code	
		$this->load->model('admin/cource_students_model');
    }
	
	public function course_student($course_id) {
		$data['student'] = $this->cource_students_model->getCourse_students($course_id);
                $data['course_id'] = $course_id;
			$this->load->view('admin/header');
			$this->load->view('admin/left');
			$this->load->view('admin/courses_students',$data);
			$this->load->view('admin/footer');
	}    
        public function upadtestudent(){
                $data['id'] = $_GET['CourseID'];
		$data['status'] = $_GET['Status'];
                $data['courseid'] = $_GET['courseidorignal'];
                $returnresult = $this->cource_students_model->setStatus($data);
		if($returnresult == '1'){
			echo "Update successfully";
		}
        }
        public  function updatecoursestatus(){
            $data['value'] = $_GET['value'];
            $data['id'] = $_GET['id'];
            $returnresult = $this->cource_students_model->updatestudentstaus($data);
		if($returnresult == '1'){
			echo "Update successfully";
		}
        }
}
?>
