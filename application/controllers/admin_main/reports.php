<?php
class Reports extends CI_Controller {
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
			$this->load->model('admin/reports_model');	
			
    }
	
	// contollers are created below this line 
	public function collegereport(){
                $this->load->view('admin/header');
                $this->load->view('admin/left');
                $this->load->view('admin/collegereport');
                $this->load->view('admin/footer');
	}
        public function getcollegereport(){
                $filename="collegerepots_" . time() . ".csv";
                $query = $this->db->query("SELECT id,collegename,useremail   FROM eb_colleges");
                query_to_csv($query, TRUE,$filename);
        }
        public function Branchesreport(){
                $data['colleges'] = $this->reports_model->getcolleges();
                $this->load->view('admin/header');
                $this->load->view('admin/left');
                $this->load->view('admin/branchreport',$data);
                $this->load->view('admin/footer');
        }
	public function getbranchreport(){
            $college = $this->input->post('selectcollege');

           $filename="branch_" . time() . ".csv";
           if($college !='0') {
               $collegeQuery = ' and eb_colleges.id ='.$college;
           } else {
               $collegeQuery = '';
           }
           //$query = "SELECT ecb.*, food.Meal FROM ecb eb_college_branches LEFT JOIN ec eb_colleges ON ecb.college_id  = ec.id"; 
                $query = $this->db->query("SELECT eb_college_branches.*, eb_colleges.collegename FROM  eb_college_branches LEFT JOIN  eb_colleges ON eb_college_branches.college_id  = eb_colleges.id $collegeQuery");
                query_to_csv($query, TRUE,$filename);
        }
        public function studentreport(){
               $this->load->view('admin/header');
                $this->load->view('admin/left');
                $this->load->view('admin/studentreport');
                $this->load->view('admin/footer');
        }
        public function getstudentreport(){
                $filename="studentreport_" . time() . ".csv";
                $query = $this->db->query("SELECT *   FROM eb_student_profile");
                query_to_csv($query, TRUE,$filename);
        }
        public function coursesreport(){
                $this->load->view('admin/header');
                $this->load->view('admin/left');
                $this->load->view('admin/coursesreport');
                $this->load->view('admin/footer');
        }
         public function getcoursesreport(){
                $filename="Courses_report" . time() . ".csv";
                $query = $this->db->query("SELECT *   FROM eb_cource");
                query_to_csv($query, TRUE,$filename);
        }
}
?>
