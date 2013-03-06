<?php
class Courses_detail extends CI_Controller {

	 	// defult constructor 
	public function __construct()
    {
            parent::__construct();
            // Your own constructor code	
		$this->load->model('admin/cource_model');
		/* check whether login or not */
    }
	
	function make_thumb($source_image,$width, $height,$targetFile_new){
		$config['image_library'] = 'gd2';
		$config['source_image'] = $source_image;
		$config['new_image'] =  $targetFile_new;
		$config['thumb_marker'] = FALSE;
		$config['create_thumb'] = TRUE;
		$config['maintain_ratio'] = TRUE;
		$config['width'] = $width;
		$config['height'] = $height;
		$this->load->library('image_lib', $config);
		$this->image_lib->resize();
	}
	
	public function getCourseList($branch_id)
	{
		$data['course'] = $this->cource_model->getCourses($branch_id);
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/courses_detail',$data);
		$this->load->view('admin/footer');
	}
	//=============================			Course Detail
	public function addcource($branchid,$barnch){
		$data['selected'] = 'courses';
		$data['branchname'] = $barnch;
		$data['branchid'] = $branchid;
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/add_course',$data);
		$this->load->view('admin/footer');
	}
	//=============================			Add New Course
	public function savecource(){
		$targetFolder = '\jamshaid\CodeIgniter\uploadfiles\course_images';
		$targetFolder_new = '\jamshaid\CodeIgniter\uploadfiles\course_images\thumbs';
			if ($_FILES['file']['name'] != "") {
				foreach($_FILES as $file => $details){
				$tempFile = $details['tmp_name'];
				$targetPath = $_SERVER['DOCUMENT_ROOT'] . $targetFolder;
				$targetPath_new = $_SERVER['DOCUMENT_ROOT'] . $targetFolder_new;
				$file_name = time().$details['name'];
				$targetFile = rtrim($targetPath,'/') . '/' .$file_name;
				$targetFile_new = rtrim($targetPath_new,'/') . '/' .$file_name;
				$filename = $file_name;
				$fileParts = pathinfo($details['name']);
				move_uploaded_file($tempFile,$targetFile);
				$this->make_thumb($targetFile, 100, 75,$targetFile_new);			
				$data['image'] = $filename;
				}
			}
		   $data['branch_id'] 			= $this->input->post('branchid');
		   $data['category'] 			= $this->input->post('category');
		   $data['txtCn'] 				= $this->input->post('txtCn');
		   $data['txtAddress'] 			= $this->input->post('txtAddress');
		   $data['Offer_price'] 		= $this->input->post('Offer_price');
		   $data['ag_commession'] 		= $this->input->post('ag_commession');
		   $data['duration'] 			= $this->input->post('duration');
		   $data['endcourcedatestart'] 	= $this->input->post('endcourcedatestart');
		   $data['endcourcedateend'] 	= $this->input->post('endcourcedateend');
		   $data['english_offer_price'] = $this->input->post('english_offer_price');
		   $data['txtsession'] 			= $this->input->post('txtsession');
		   $data['description'] 		= $this->input->post('description');
		   $targetFolder = '\jamshaid\CodeIgniter\uploadfiles\needcourcedc';
			if (!empty($_FILES)) {
				foreach($_FILES as $file => $details){
				$tempFile = $details['tmp_name'];
				$targetPath = $_SERVER['DOCUMENT_ROOT'] . $targetFolder;
				$targetFile = rtrim($targetPath,'/') . '/' . $details['name'];
				$filename = $details['name'];
				$fileParts = pathinfo($details['name']);
				move_uploaded_file($tempFile,$targetFile);
				$data['filename'] = $filename;
				}
			}
		$this->cource_model->savecource($data);	
		$this->session->set_flashdata('msg', 'Course has been successfully added');
		redirect('/admin_main/courses_detail/getCourseList/'.$data['branch_id']);
	}
	public function viewCource($courcename,$courceID){
		$data['courcelist'] = $this->cource->getcources($courceID);	
		$data['selected'] = 'courses';
		$this->load->view('user/header');
		$this->load->view('user/left_menu',$data);
		$this->load->view('user/courses_list',$data);
		$this->load->view('user/footer');
	}
	//=============================		Delete Course
	public function deletecource($deletecource,$branch_id){
		$this->cource_model->courses_detl($deletecource);
		$this->session->set_flashdata('msg', 'Course has been successfully Deleted');
		redirect('/admin_main/courses_detail/getCourseList/'.$branch_id);
	}
	
	public function editcourse($course_id){
		$data['course_id'] = $course_id;
		$data['course'] = $this->cource_model->getCourse($course_id);
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/edit_course',$data);
		$this->load->view('admin/footer');
	}	
	
	//=============================		Course Update
	public function Edit_Cource(){
	   $data['course_ID'] 			= $this->input->post('course_ID');
	   $data['category'] 			= $this->input->post('category');
	   $data['txtCn'] 				= $this->input->post('txtCn');
	   $data['txtAddress'] 			= $this->input->post('txtAddress');
	   $data['Offer_price'] 		= $this->input->post('Offer_price');
	   $data['ag_commession'] 		= $this->input->post('ag_commession');
	   $data['duration'] 			= $this->input->post('duration');
	   $data['endcourcedatestart'] 	= $this->input->post('endcourcedatestart');
	   $data['endcourcedateend'] 	= $this->input->post('endcourcedateend');
	   $data['english_offer_price'] = $this->input->post('english_offer_price');
	   $data['txtsession'] 			= $this->input->post('txtsession');
	   $data['description'] 		= $this->input->post('description');
	   $targetFolder = '\jamshaid\CodeIgniter\uploadfiles\needcourcedc';
		if (!empty($_FILES)) {
			foreach($_FILES as $file => $details){
			$tempFile = $details['tmp_name'];
			$targetPath = $_SERVER['DOCUMENT_ROOT'] . $targetFolder;
			$targetFile = rtrim($targetPath,'/') . '/' . $details['name'];
			$filename = $details['name'];
			$fileParts = pathinfo($details['name']);
			move_uploaded_file($tempFile,$targetFile);
			$data['filename'] = $filename;
			}
		}
		$this->cource_model->Edit_Courses($data);	
		$this->session->set_flashdata('msg', 'Your information has been sucssfully updated');
		redirect('/admin_main/courses_detail/editcourse/'.$data['course_ID']);
	}
	
	//=============================		Course Status
	public function courceStatus(){
		$data['id'] = $_GET['CourseID'];
		$data['status'] = $_GET['Status'];
	//	$data['status'] = $this->input->post('course');
		$returnresult = $this->cource_model->setStatus($data);
		if($returnresult == '1'){
			echo "Update successfully";
		}
	}
	
		//=============================		Course Popup
	
	public function course_popup($course_id){
		$data['course_id'] = $course_id;
		$data['course'] = $this->cource_model->getCourse($course_id);
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/course_popup',$data);
		$this->load->view('admin/footer');
	}	

}
?>
