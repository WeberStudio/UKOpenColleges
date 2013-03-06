<?php
class Branches_detail extends CI_Controller {

	 	// defult constructor 
	public function __construct()
    {
            parent::__construct();
            // Your own constructor code	
		$this->load->model('admin/branch_detail_model');
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

	public function branches_detl($college_id)
	{
                $datas['search'] = $this->input->post('search');
		$data['branches'] = $this->branch_detail_model->getbranches($college_id,$datas);
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/branches_detail',$data);
		$this->load->view('admin/footer');
	}
	public function add_branch($college_id,$college_name)
	{
		$data['college_id'] = $college_id;
		$data['college_name'] = $college_name;
		$data['selected'] = 'branches';
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/addbranches', $data);
		$this->load->view('admin/footer');
	}
	public function add_newbranch()
	{
		$targetFolder = '/projects/English2/uploadfiles/branches_images/';
		$targetFolder_new = '/projects/English2/uploadfiles/branches_images/thumbs/';
			if (!empty($_FILES)) {
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
		$data['college_id']	 		= $this->input->post('college_id');	
		$data['name']	 			= $this->input->post('name');
		$data['city']	 			= $this->input->post('city');
		$data['post_code']	 		= $this->input->post('post_code');
		$data['address']	 		= $this->input->post('address');
		$data['phone']	 			= $this->input->post('phone');
		$data['fax']	 			= $this->input->post('fax');
		$data['email']	 			= $this->input->post('email');
		$data['year_of_establish']	= $this->input->post('year_of_establish');
		$data['intertainment_info'] = $this->input->post('intertainment_info');
		$data['traffic_info'] 		= $this->input->post('traffic_info');
		$data['weather_info'] 		= $this->input->post('weather_info');
		$data['description'] 		= $this->input->post('description');
		$accomodation 				= $this->input->post('host_family').','.$this->input->post('private').','.$this->input->post('college').','.$this->input->post('hotels');
		$nationality	 			= $this->input->post('txtName');
		$percentage	 				= $this->input->post('txtpersentage');
		$this->branch_detail_model->add_newbranch($data,$nationality,$percentage, $accomodation);
		$this->session->set_flashdata('msg', 'New Branch has been sucssfully added');
		redirect('/admin_main/branches_detail/branches_detl/'.$data['college_id']);
	}
	function deletebranch($branchID){
		$this->branch_detail_model->deletebranch($branchID);	
		 redirect('/user/branches_detail/branches_detl');
	}
	/*  ==================		Edit Branches	=================*/	
	public function editBranch($branch_id)
	{
		$data['selected'] = 'branches';
		$data['branch_id'] = $branch_id;
		$data['branch'] = $this->branch_detail_model->getBranchData($branch_id);
		$data['Diversity'] = $this->branch_detail_model->getBranchDiversity($branch_id);
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/edit_branches',$data);
		$this->load->view('admin/footer');
	}
	public function Edit_Branch()
	{
		$targetFolder = '/projects/English2/uploadfiles/branches_images/';
		$targetFolder_new ='/projects/English2/uploadfiles/branches_images/thumbs/';
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
			}else{
				$data['image'] = "";
			}
		$data['branch_id']	 		= $this->input->post('branch_id');
		$data['name']	 			= $this->input->post('name');
		$data['city']	 			= $this->input->post('city');
		$data['post_code']	 		= $this->input->post('post_code');
		$data['address']	 		= $this->input->post('address');
		$data['phone']	 			= $this->input->post('phone');
		$data['fax']	 			= $this->input->post('fax');
		$data['email']	 			= $this->input->post('email');
		$data['year_of_establish']	= $this->input->post('year_of_establish');
		$data['intertainment_info'] = $this->input->post('intertainment_info');
		$data['traffic_info'] 		= $this->input->post('traffic_info');
		$data['weather_info'] 		= $this->input->post('weather_info');
		$data['description'] 		= $this->input->post('description');
		$accomodation 				= $this->input->post('host_family').','.$this->input->post('private').','.$this->input->post('college').','.$this->input->post('hotels');
		$nationality	 			= $this->input->post('txtName');
		$percentage	 				= $this->input->post('txtpersentage');
		$diver_id 					= $this->input->post('diver_id');
		$this->branch_detail_model->editBranches($data,$nationality,$percentage, $diver_id,$accomodation);
		$this->session->set_flashdata('msg', 'Your information has been sucssfully updated');
			 redirect('/admin_main/branches_detail/editBranch/'.$data['branch_id']);
	}
	
	public function DeleteBranches($Branch_id,$college_id){
		$this->branch_detail_model->deletebranch($Branch_id);
		$this->session->set_flashdata('msg', 'New Branch has been sucssfully Deleted');
		 redirect('/admin_main/branches_detail/branches_detl/'.$college_id);
	}
	
	
	public function viewbranchDetails($id){
		$data['branch'] = $this->branch_detail_model->getbranchpopup($id);
		$data['branch_diveresty'] = $this->branch_detail_model->getdiveresty($id);
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/branch_popup',$data);
		$this->load->view('admin/footer');
	}
	
}
?>
