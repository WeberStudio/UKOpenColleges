<?php
class ranking extends CI_Controller {
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
	    $this->load->model('admin/rankings');	
    }
	
	// contollers are created below this line 
        public function collegeofday(){
                $datas['search'] = $this->input->post('search');
		$data['colleges'] = $this->rankings->getCollegeList($datas);
		//$data['day_college'] = $this->rankings->getCollege_of_day();
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/college_of_day',$data);
		$this->load->view('admin/footer');
        }
	public function college_of_day(){
			$data['college_id'] = $_GET['collegeID'];
                        $data['selecteddate'] = $_GET['selecteddate'];
            $returnresult = $this->rankings->add_college_of_day($data);
		   if($returnresult == '1'){
		  	echo "Update successfully";
		   }
        }
		//		=============================	Course of Day	==============================
	public function courseofday(){
                $datas['search'] = $this->input->post('search');
		$data['course_list'] = $this->rankings->getCourseList($datas);
		$data['course'] = $this->rankings->getCourse_of_day();  
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/course_of_day',$data);
		$this->load->view('admin/footer');
    }
	public function save_course_of_day(){
            $data['course_id'] = $_GET['courseID'];
            $data['selecteddate'] = $_GET['selecteddate'];
            $returnresult = $this->rankings->add_course_of_day($data);
            if($returnresult == '1'){
                 echo "Update successfully";
            }
        }
      public function populercolleges(){
                  $datas['search'] = $this->input->post('search');
		$data['colleges'] = $this->rankings->getCollegeList($datas);
		//$data['day_college'] = $this->rankings->getCollege_of_day();
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/populercolleges',$data);
		$this->load->view('admin/footer');
        }
        public function populercolleges_update(){
            $data['collegeID'] = $_GET['collegeID'];
            $data['status'] = $_GET['status'];
           
            $returnresult = $this->rankings->update_popular_colleges($data);
            if($returnresult == '1'){
                 echo "Update successfully";
            }
        }
        public function populercourses(){
                $datas['search'] = $this->input->post('search');
                $data['course_list'] = $this->rankings->getCourseList($datas);
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/populercourses',$data);
		$this->load->view('admin/footer');
        }
         public function populercourses_update(){
            $data['courseid'] = $_GET['courseid'];
            $data['status'] = $_GET['status'];
           
            $returnresult = $this->rankings->update_popular_courses($data);
            if($returnresult == '1'){
                 echo "Update successfully";
            }
        }
        public function recomendedcourse(){
                $datas['search'] = $this->input->post('search');
                $data['course_list'] = $this->rankings->getCourseList($datas);
                $data['checked'] = $this->rankings->getcheckedcourse_recomended();
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/recomendedcourse',$data);
		$this->load->view('admin/footer');
        }
        public function updaterecommendedcourse(){
            $data['courseid'] = $_GET['courseid']; 
            $returnresult = $this->rankings->update_recmmendedcourse($data);
            if($returnresult == '1'){
                 echo "Update successfully";
            }
        }
        public function tollfree(){
            $data['returnresult'] = $this->rankings->getTollfreenumber();
            $this->load->view('admin/header');
            $this->load->view('admin/left');
            $this->load->view('admin/tollfree',$data);
            $this->load->view('admin/footer');
        }
       public function editTollfree(){
            $data['tollfree'] = $this->input->post('tollfree');
            $this->rankings->updateTollfree($data);
             redirect('/admin_main/ranking/tollfree');
       } 
       public function showhidecollegecourse(){
                $data['list'] = $this->rankings->getshowhide();    
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/showhidecource',$data);
		$this->load->view('admin/footer');
       }
       public function updateshowhide(){
            $data['id'] = $_GET['id']; 
            $data['value'] = $_GET['value'];
            $returnresult = $this->rankings->updateshowhide($data);
            if($returnresult == '1'){
                 echo "Update successfully";
            }  
       }
      public function updateshowhidetextname(){
           $data['id'] = $_GET['id']; 
            $data['value'] = $_GET['value'];
            $returnresult = $this->rankings->updateshowhidetext($data);
           
      } 
      public function ShowhideBluebar(){
                $data['list'] = $this->rankings->getshowhide();    
		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/showhidebluebar',$data);
		$this->load->view('admin/footer');
      }
      public function popularcity(){
                $data['list'] = $this->rankings->getpopularcity();  

		$this->load->view('admin/header');
		$this->load->view('admin/left');
		$this->load->view('admin/popularcity',$data);
		$this->load->view('admin/footer');
      }
      public function updatepopularcity(){
                $datas['city1'] = $this->input->post('city1');
                $datas['city2'] = $this->input->post('city2');
                $datas['city3'] = $this->input->post('city3');
                $datas['city4'] = $this->input->post('city4');
                $datas['city5'] = $this->input->post('city5');
                $this->rankings->updatepopularcity($datas); 
                redirect('/admin_main/ranking/popularcity');
                
      }
}
?>
