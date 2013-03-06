<?php
class addpages extends CI_Controller {
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
			$this->load->model('admin/addnewpages');	
			
    }
	
	// contollers are created below this line 
	public function addnewpages()
	{
			//	 $data['rights'] = $this->User_model->getRights();
		
			 	  $this->load->view('admin/header');
				  $this->load->view('admin/left');
				  $this->load->view('admin/addpages');
				  $this->load->view('admin/footer');
	}
	public function Pagedelete($PageID){
		$this->addnewpages->deletePage($PageID);
		 redirect('/admin_main/pages/getpages');
		//$this->getpages();
	}
	public function savepage(){
		/*	Add new page	*/
			
		 	$data['title'] = $this->input->post('title');
			$data['metakeyword'] = $this->input->post('metakeyword');
			$data['metadescription'] = $this->input->post('metadescription');
			$data['position'] = $this->input->post('position');
			$data['description'] = $this->input->post('description');
                        $data['url'] = $this->input->post('url');
			$this->addnewpages->AddNewPage($data);
			//$this->adminlist();
			$this->session->set_flashdata('msg', 'Page has been sucssfully added');
			 redirect('/admin_main/pages/getpages');
		
	}
	// 	Edit page
	public function EditPage($pageID)
	{
		$data['page'] = $this->addnewpages->getEditData($pageID);
		$data['PageID'] = $pageID;
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/editpage', $data);
		$this->load->view('admin/footer');
	}
	public function Editpages(){
		/*	Add new page	*/
		$data['PageID'] = $this->input->post('PageID');
		$data['title'] = $this->input->post('title');
		$data['metakeyword'] = $this->input->post('metakeyword');
		$data['metadescription'] = $this->input->post('metadescription');
		$data['position'] = $this->input->post('position');
		$data['description'] = $this->input->post('description');
                $data['url'] = $this->input->post('url');
		$this->addnewpages->updateEditpage($data);
		//$this->adminlist();
		$this->session->set_flashdata('msg', 'Page has been sucssfully Updated');
		redirect('/admin_main/pages/getpages');
	}
}
?>
