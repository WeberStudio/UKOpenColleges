<?php
class students_info extends CI_Controller {

	 	// defult constructor 
	public function __construct()
    {
            parent::__construct();
            // Your own constructor code	
		$this->load->model('admin/student_info_model');
    }
	
	public function get_student_info($student_id) {
			$data['student'] = $this->student_info_model->get_students($student_id);
			$data['student_docs'] = $this->student_info_model->get_students_docs($student_id);
			$data['admin_docs'] = $this->student_info_model->get_admin_docs($student_id);
			$data['college_docs'] = $this->student_info_model->get_college_docs($student_id);
                        $data['student_id']=$student_id;
			$this->load->view('admin/header');
			$this->load->view('admin/left');
			$this->load->view('admin/students_info',$data);
			$this->load->view('admin/footer');
	}    
	
	public function uploaddocuments(){
			$student_id  = $_POST['cid'];
			$targetFolder = '/projects/English2/uploadfiles/student_documents/'; // Relative to the root
			$verifyToken = md5('unique_salt' . $_POST['timestamp']);
			if (!empty($_FILES) && $_POST['token'] == $verifyToken) {
			$tempFile = $_FILES['Filedata']['tmp_name'];
			$targetPath = $_SERVER['DOCUMENT_ROOT'] . $targetFolder;
			$targetFile = rtrim($targetPath,'/') . '/' .time(). $_FILES['Filedata']['name'];
			$filename = time().$_FILES['Filedata']['name'];
			$fileParts = pathinfo($_FILES['Filedata']['name']);
			move_uploaded_file($tempFile,$targetFile);
			$this->student_info_model->upload_files($filename,$student_id);
			}
	}
	
	public function file_status_update(){
		$data['id'] 	= $_GET['file_id'];
		$data['status'] = $_GET['status'];
		$result = $this->student_info_model->update_student_file_status($data);
		if($result == 1){
			echo "Status successfuly changed";
		}
	} 
	
	public function delete_admin_doc($docid, $student_id){	
		$this->student_info_model->del_student_documents($docid);
		$this->get_student_info($student_id);
	}
        public function delete_student_document($id,$student_id){
                $this->student_info_model->del_student_documents($id);
		$this->get_student_info($student_id);
        }
        public function delete_college_document($id,$student_id){
             $this->student_info_model->del_student_documents($id);
		$this->get_student_info($student_id);
        }
   
}
?>
