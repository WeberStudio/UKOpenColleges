<?php
class letter extends CI_Controller {
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
	public function __construct() {
            parent::__construct();
            // Your own constructor code
            $this->load->model("admin/letter_model");
    }
// contollers are created below this line 
	public function shownewsletter(){
		
			$data['list'] = $this->letter_model->getnewsletter();
			$this->load->view('admin/header');
			$this->load->view('admin/left');
			$this->load->view('admin/newletter',$data);
			$this->load->view('admin/footer');
	}
        public function getnewslettercsv(){
           
            $filename="Newsletter_" . time() . ".csv";
            $query = $this->db->query("SELECT * FROM eb_newsletter");
            query_to_csv($query, TRUE,$filename);
           
        }
        public function showoffersubscriber(){
		
			$data['list'] = $this->letter_model->getoffersubscriber();
			$this->load->view('admin/header');
			$this->load->view('admin/left');
			$this->load->view('admin/offersubscriber',$data);
			$this->load->view('admin/footer');
	}
        public function getofferletter(){
            $filename="offerletter_" . time() . ".csv";
            $query = $this->db->query("SELECT * FROM eb_subscribe_offer");
            query_to_csv($query, TRUE,$filename);
        }
}
?>
