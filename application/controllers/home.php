<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class home extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	 	// defult constructor 
	public function __construct()
    {
            parent::__construct();
            // Your own constructor code
			//$this->load->model('home_modle'); // by defult load modle
    }
	// contollers are created below this line 
	public function index()
	{
		/*
		Home page controller is created this for by delfult load on site
		 Set by defult load module in autoload
		*/
                $data['gettingcourceofday'] = $this->home_modle->getcoursegeofday();
                $data['gettingcollegeofday'] = $this->home_modle->getcollegeofday();
                //$data['collegepopular'] = $this->home_modle->popularimages();
                //$data['socialmedia'] = $this->home_modle->socialmedia();
                $data['popularcourses'] = $this->home_modle->popularcourses();
                $data['recmondedcourse'] = $this->home_modle->recommendedcourse();
                $data['collegeshowhide'] = $this->home_modle->getshowhidecollegecourse();
		$this->load->view('user/header');
		$this->load->view('user/search_form',$data);
		$this->load->view('user/home');
		$this->load->view('user/colleges');
		$this->load->view('user/footer');
	}
	public function languages()
	{
	
	   //extract($_POST);
	    $dlang = $this->input->post('dlang');
		$current = $this->input->post('current');
	    $this->session->set_userdata('language', $dlang);
	   $redirect_url = base_url().$current;
	   redirect($redirect_url);	
	
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */