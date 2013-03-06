<?php 
class rankings extends CI_Model {
	 // defult constructor 
   public function __construct() 
   {
	  parent::__construct();
		// Your own constructor code
   }
	 // models are stated below this  
	 //========================		Save College 
	public function SaveColeeges($data){
		$sqlQuery = "INSERT INTO eb_colleges 
			(useremail,password, rand_id,collegename,status) VALUES 
			('".$data['username']."','".$data['password']."',uuid(),'".$data['cname']."','".$data['status']."')";
			$this->db->query($sqlQuery);
			 $lastInsertID = $this->db->insert_id();
			return  $this->getdata($lastInsertID);
	}
	public function add_college_of_day($data){
                        $this->updateothercollegeofday($data['college_id']);
			$query = "INSERT INTO eb_college_of_day (colleg_id,selecteddate,status) VALUES ('".$data['college_id']."','".$data['selecteddate']."','1')";
			$this->db->query($query);
			return '1';
	}
	public function getCollegeList($data){
                if(!empty($data['search'])){
                  $query_main = "SELECT * FROM eb_colleges WHERE collegename LIKE '%".$data['search']."%'";
                 $query = $this->db->query($query_main);
                } else {
		$query = $this->db->get('eb_colleges');
                }
		return $query->result();
	}
	public function getCollege_of_day(){
		$Query = "SELECT * FROM eb_college_of_day ORDER BY id ASC ";
		$result = $this->db->query($Query);
		return $result->row();
	}
	
	//========================		 Save Course of the day
	
	public function getCourseList($data){
                 if(!empty($data['search'])){
                    $query_main = "SELECT * FROM eb_cource WHERE courcename LIKE '%".$data['search']."%'";
                  $query = $this->db->query($query_main);
                } else {
		$query = $this->db->get('eb_cource');
                
                }
		return $query->result();
	}
	
	public function add_course_of_day($data){
                        $this->updateothercourceofday($data['course_id']);
			$query = "INSERT INTO eb_course_of_day (course_id,selecteddate,status) VALUES ('".$data['course_id']."','".$data['selecteddate']."','1')";
			$this->db->query($query);
			return '1';
	}
	public function getCourse_of_day(){
		 $Query = "SELECT * FROM eb_course_of_day ORDER BY id ASC";
               
		$result = $this->db->query($Query);
		return $result->result();
	}
       public function updateothercollegeofday($id){
            $data = array(
               'status' => '0'
            );
            $this->db->where('colleg_id', $id);
            $this->db->update('eb_college_of_day', $data); 
        }
      public function getcollegeofdaydate($id){
          
        $query = "SELECT selecteddate FROM eb_college_of_day WHERE status = '1' and colleg_id  = '".$id."'";
       $result= $this->db->query($query);
        $results = $result->row();
       if(!empty($results->selecteddate)){
           return $results->selecteddate; 
        } else {
            return '';
        }
    }
    public function updateothercourceofday($id){
            $data = array(
               'status' => '0'
            );
            $this->db->where('course_id', $id);
            $this->db->update('eb_course_of_day', $data); 
        }
     public function getcourseofdaydate($id){
          
        $query = "SELECT selecteddate FROM eb_course_of_day WHERE status = '1' and course_id  = '".$id."'";
       $result= $this->db->query($query);
        $results = $result->row();
        if(!empty($results->selecteddate)){
           return $results->selecteddate; 
        } else {
            return '';
        }
        
    }
    public function update_popular_colleges($data){
                        if($data['status']=='1' ){
			$query = "INSERT INTO eb_popularcollege (cid,status) VALUES ('".$data['collegeID']."','".$data['status']."')";
			 $this->db->query($query);
                        } else {
                            $data1 = array(
                             'status' => '0'
                            );
                            $this->db->where('cid', $data['collegeID']);
                            $this->db->update('eb_popularcollege', $data1); 
                        }
                      
			return '1';
	}
         public function update_popular_courses($data){
                        if($data['status']=='1' ){
			$query = "INSERT INTO eb_popularcourses (cid,status) VALUES ('".$data['courseid']."','".$data['status']."')";
			 $this->db->query($query);
                        } else {
                            $data1 = array(
                             'status' => '0'
                            );
                            $this->db->where('cid', $data['courseid']);
                            $this->db->update('eb_popularcourses', $data1); 
                        }
                      
			return '1';
	}
        public function getcheckedcourse($id){
            $query = "SELECT status FROM eb_popularcourses WHERE status = '1' and cid  = '".$id."'";
            $result= $this->db->query($query);
            $results = $result->row(); 
            if(!empty($results)){
                return  $results->status;
            } else {
                return '0';
            }
        }
       public function getcheckedcollege($id){
            $query = "SELECT status FROM eb_popularcollege WHERE status = '1' and cid  = '".$id."'";
            $result= $this->db->query($query);
            $results = $result->row(); 
            if(!empty($results)){
                return  $results->status;
            } else {
                return '0';
            }
       }
       public function update_recmmendedcourse($data){
         $query = "INSERT INTO eb_recommenedcourse (cid) VALUES ('".$data['courseid']."')";
	 $this->db->query($query);  
         return '1';
       }
       public function getcheckedcourse_recomended(){
          $query = "SELECT cid FROM eb_recommenedcourse ORDER BY id limit 0,1";
            $result= $this->db->query($query);
            $results = $result->row();  
            return $results->cid;
       }
     public function getTollfreenumber(){
            $query = "SELECT * FROM eb_toolfree WHERE id = 1";
            $result= $this->db->query($query);
            $results = $result->row();  
            return $results;
     }
     public function updateTollfree($data){
         $sqlQuery = "UPDATE eb_toolfree SET
			val 	= '".$data['tollfree']."'
			WHERE id = 1";
			$this->db->query($sqlQuery);
     }
     public function updateshowhide($data){
                   $sqlQuery = "UPDATE eb_showhidecollegecourse SET
			value 	= '".$data['value']."'
			WHERE id = '".$data['id']."'";
			$this->db->query($sqlQuery);
                  return 1;      
     }
     public function getshowhide(){
         $query = "SELECT * FROM eb_showhidecollegecourse";
            $result= $this->db->query($query);
            $results = $result->result();  
            return $results;
     }
    public function updateshowhidetext($data){
         $sqlQuery = "UPDATE eb_showhidecollegecourse SET
			text 	= '".$data['value']."'
			WHERE id = '".$data['id']."'";
			$this->db->query($sqlQuery);
    } 
    public function getpopularcity(){
         $query = "SELECT * FROM popular_city WHERE id=1";
            $result= $this->db->query($query);
            $results = $result->row();  
            return $results;
    }
    public function updatepopularcity($data){
            $sqlQuery = "UPDATE popular_city SET
                            cityname 	= '".$data['city1']."',
                             city2 	= '".$data['city2']."',
                             city3 	= '".$data['city3']."',
                             city4 	= '".$data['city4']."', 
                             city5 	= '".$data['city5']."'    
                            WHERE id = 1";
                            $this->db->query($sqlQuery);
                            return 1;
    }
}

?>