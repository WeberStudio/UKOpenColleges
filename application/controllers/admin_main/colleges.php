<?php
class Colleges extends CI_Controller {
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
			$this->load->model('admin/colleges_model');	
			
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
	
	// contollers are created below this line 
	public function addnew(){
				  $this->load->view('admin/header');
				  $this->load->view('admin/left');
				  $this->load->view('admin/addcollege');
				  $this->load->view('admin/footer');
	}
	public function getList(){
                         $datas['search'] = $this->input->post('search');
			$data['colleges'] = $this->colleges_model->getCollegelist($datas);
			 $this->load->view('admin/header');
			 $this->load->view('admin/left');
			 $this->load->view('admin/getcollegelist',$data);
			 $this->load->view('admin/footer');
	}
	public function savecollege(){
		  if ( $this->input->get_post('cname', TRUE))
			{ 
			 $data1['cname'] = $this->input->post('cname');
			 $data1['username'] = $this->input->post('uname');
			 $data1['password'] = $this->input->post('password');
			 if($this->input->post('status') == 'on' ){
			 	$data1['status'] = '1';
			 } else {
				 $data1['status'] = '0';
			 }
			  $data['registeredUser'] = $this->colleges_model->SaveColeeges($data1);
			  $this->load->view('admin/header');
			  $this->load->view('admin/left');
			  $this->load->view('admin/sendcollegeuserEmail',$data);
			  $this->load->view('admin/footer');
				
			} else  {
				
			redirect('/admin_main/Colleges/getList');
			}		
	}
	public function sendemail(){
		echo "::::::::::::::::Under Development::::::::::::::::::::::";
		exit;
	}
	public function deleteCollege($collegeID){
		$this->colleges_model->deletecollege($collegeID);
		redirect('/admin_main/Colleges/getList');
	}
	public function editCollege($college_id){
			$data['colleges'] = $this->colleges_model->getCollege($college_id);
			$data['cust_info'] = $this->colleges_model->get_personal_info($college_id);		// ger personal Deail
			$data['college'] = $this->colleges_model->get_Collegdetail($college_id);				// College Deail
			$this->load->view('admin/header');
			$this->load->view('admin/left');
			$this->load->view('admin/editcollege',$data);
			$this->load->view('admin/footer');
	}
	public function Edit_College(){
	  if ( $this->input->get_post('cname', TRUE))
		{ 
		$data1['college_id'] = $this->input->post('college_id');
		 $data1['cname'] = $this->input->post('cname');
		 $data1['username'] = $this->input->post('uname');
		 $data1['password'] = $this->input->post('password');
		 if($this->input->post('status') == 'on' ){
			$data1['status'] = '1';
		 } else {
			 $data1['status'] = '0';
		 }
		  $data['registeredUser'] = $this->colleges_model->EditColeeges($data1);
		  $this->load->view('admin/header');
		  $this->load->view('admin/left');
		  $this->load->view('admin/sendcollegeuserEmail',$data);
		  $this->load->view('admin/footer');
		} else  {			
		redirect('/admin_main/Colleges/getList');
		}		
	}
	/* =============================		Customer personal Info	=================================*/
        function viewCollegeDetails($collegeID){
		  	$this->load->view('admin/header');
		  	$this->load->view('admin/left');
		    $data['result'] = $this->colleges_model->getcollegedetails($collegeID);
            $data['result_all'] = $this->colleges_model->getcollegedetails_all($collegeID);
            $data['cust_info'] = $this->colleges_model->getcollegedetails_personal($collegeID);
            $this->load->view('admin/showcollegedeatilpopup',$data);
			$this->load->view('admin/footer');
        }
        
        function getcollegeid($id){
            $this->colleges_model->getcollegeid($id);
        }
		
	/* =============================		Customer personal Info	=================================*/
	
	public function edit_custinfo()
	{
		$data['id']			= $this->input->post('id');
		$data['college_id']	= $this->input->post('c_id');
		$data['name']	 	= $this->input->post('name');
		$data['email']	 	= $this->input->post('email');
		$data['phone']	 	= $this->input->post('phone');
		$data['mobile']	 	= $this->input->post('mobile');
		$data['fax']	 	= $this->input->post('fax');
		$data['skype'] 		= $this->input->post('skype');
		$data['county']	 	= $this->input->post('county');
		$data['city']	 	= $this->input->post('city');
		$data['gender']	 	= $this->input->post('gender');
		$this->colleges_model->editCustomer_info($data);
		$this->session->set_flashdata('msg2', 'Your information has been sucssfully updated');
		redirect('/admin_main/colleges/editCollege/'.$data['college_id']);
	}
	
	/* =============================		College Info	=================================	*/
	
	public function edit_collegedetail()
	{
		$targetFolder = '/projects/English2/uploadfiles/collegeimages/';
		$targetFolder_new = '/projects/English2/uploadfiles/collegeimages/thumbs/';
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
		$data['id']	 				= $this->input->post('id');
		$data['cid']	 			= $this->input->post('cid');
		$data['name']	 			= $this->input->post('name');
		$data['city']	 			= $this->input->post('city');
		$data['post_code']	 		= $this->input->post('post_code');
		$data['address']	 		= $this->input->post('address');
		$data['phone']	 			= $this->input->post('phone');
		$data['fax']	 			= $this->input->post('fax');
		$data['email']	 			= $this->input->post('email');
		$data['year_of_establish']	= $this->input->post('year_of_establish');
		$data['no_branches']	 	= $this->input->post('no_branches');
		$data['hts']	 			= $this->input->post('hts');
		$data['description']		= $this->input->post('description');
		$this->colleges_model->edit_Collegedetail($data);
		$this->session->set_flashdata('msg3', 'Your information has been sucssfully updated');
		redirect('/admin_main/colleges/editCollege/'.$data['cid']);
	}
        public function categories(){
		$data['categorie'] = $this->colleges_model->getcategories();
			 $this->load->view('admin/header');
			 $this->load->view('admin/left');
			 $this->load->view('admin/categorie_list',$data);
			 $this->load->view('admin/footer');
        }
        public function addcategories(){
                         $this->load->view('admin/header');
			 $this->load->view('admin/left');
			 $this->load->view('admin/addcategorie');
			 $this->load->view('admin/footer');
        }
        public function savecategory(){
            $data['name'] = $this->input->post('name');
		 if($this->input->post('status') == 'on' ){
			$data['status'] = '1';
		 } else {
			 $data['status'] = '0';
		 }
            $this->colleges_model->addcategory($data);  
            $this->categories();
        }
        public function editcategory($id){
            $data['category'] = $this->colleges_model->geteditcategory($id);
            $this->load->view('admin/header');
            $this->load->view('admin/left');
            $this->load->view('admin/editcategory',$data);
            $this->load->view('admin/footer');
        }
        public function updatecategory(){
             $data['name'] = $this->input->post('name');
             $data['id'] = $this->input->post('id');
		 if($this->input->post('status') == 'on' ){
			$data['status'] = '1';
		 } else {
			 $data['status'] = '0';
		 }
              $this->colleges_model->updatecategory($data);  
            $this->categories();    
        }
        public function searchcollege(){
            $search = $_GET['search'];
             $query_main = "SELECT * FROM eb_colleges WHERE collegename LIKE '%".$search."%'";
             $query = $this->db->query($query_main);
             foreach ($query->result() as $row){
             $id =  $row->id;
             $varresult .= "<a href='#' onclick ='check(this.id)' id='".$id."'><span id='s".$id."'>".$row->collegename."</span></a><br/>"  ;
            }
            echo  $varresult;
        }
}
?>
