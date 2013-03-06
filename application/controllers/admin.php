<?php
class Admin extends CI_Controller {
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
            
			//Models
			//$this->load->model('admin/User_model');
			
			//Libraries
			$this->load->library('opencollege/load_assets');
			
			//Helpers
			$this->load->helper('url');	
    }
	
	
	// contollers are created below this line 
	public function index()
	{
		
		//Load Sources
		$this->load->view('opencollege/admin/includes/header');
		$this->load_assets->get_assets();		
		$this->load->view('opencollege/admin/includes/leftbar');
		$this->load->view('opencollege/admin/dashboard_view');
		$this->load->view('opencollege/admin/includes/footer');
	
	}
	
	// contollers are created below this line 
	
}
?>