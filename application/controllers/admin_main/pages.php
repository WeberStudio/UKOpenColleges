<?php
class Pages extends CI_Controller {
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
			$this->load->model("admin/AdminPages");
    }
		public function getPages()
	{
		
		/*
			Mian admin index page check it if user login already move to home page of admin otherwise move to Login page 
		*/
			$data['pages'] = $this->AdminPages->getPages();
			$this->load->view('admin/header');
			$this->load->view('admin/left');
			$this->load->view('admin/pages', $data);
			$this->load->view('admin/footer');
	}
	// contollers are created below this line 
}
?>
