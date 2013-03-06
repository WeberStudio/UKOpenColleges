<?php 
class home_modle extends CI_Model {
	 // defult constructor 
      function __construct() 
	  {
          parent::__construct();
		    // Your own constructor code
      }
	  
	 // models are stated below this   
    function get_last_ten_entries()
    {
        
    }
	
    function getcoursegeofday(){
       $sql = "SELECT course_id  FROM eb_course_of_day WHERE selecteddate = '".date('d/m/Y')."' AND status = 1";
       $result = $this->db->query($sql);
       $results = $result->row();
     
       if(!empty($results)){
           $courceid = $results->course_id;
           $selectdcourceid =  $courceid ;
       }else {
         $sqlresult = "SELECT course_id from eb_course_of_day ORDER BY RAND() LIMIT 0,1"; 
         $result = $this->db->query($sqlresult);
         $results = $result->row();
         $courceid = $results->course_id;
         $selectdcourceid =  $courceid ;
       }
       $getcorcedeatil = "SELECT * FROM eb_cource WHERE id = '".$selectdcourceid."'"; 
       $allcourcedata = $this->db->query($getcorcedeatil);
       $returnresult =   $allcourcedata->row();
       return $returnresult;
    }
	
    public function getcollegeofday(){
        $sql = "SELECT colleg_id FROM eb_college_of_day WHERE selecteddate = '".date('d/m/Y')."' AND status = 1";
       $result = $this->db->query($sql);
       $results = $result->row();
      
       if(!empty($results)){
            $collegeidid = $results->colleg_id ;
           $selectdcollegeid =  $collegeidid ;
       }else {
         $sqlresult = "SELECT colleg_id from eb_college_of_day ORDER BY RAND() LIMIT 0,1"; 
         $result = $this->db->query($sqlresult);
         $results = $result->row();
         $collegeidid = $results->colleg_id;
         $selectdcollegeid =  $collegeidid ;
       }
       $getcollegedeatil = "SELECT * FROM eb_collegedetails WHERE cid = '".$selectdcollegeid."'"; 
       $allcollegeedata = $this->db->query($getcollegedeatil);
       $returnresult =   $allcollegeedata->row();
       return $returnresult;
    }
    public function popularimages(){
         $query = "SELECT  cd.* FROM eb_popularcollege pc LEFT JOIN eb_collegedetails cd ON pc.cid  = cd.cid WHERE  pc.status = 1 "; 
            $allcollegeedata = $this->db->query($query);
            $returnresult =   $allcollegeedata->result();
            return $returnresult;     
    }
    public function socialmedia(){
        $getcorcedeatil = "SELECT * FROM eb_social "; 
       $allcourcedata = $this->db->query($getcorcedeatil);
       $returnresult =   $allcourcedata->result();
       return $returnresult;
    }
	
    public function popularcourses(){
        $query = "SELECT  cd.* FROM eb_popularcourses pc LEFT JOIN eb_cource cd ON pc.cid  = cd.id WHERE  pc.status = 1  ORDER BY RAND() LIMIT 0,2"; 
            $allcollegeedata = $this->db->query($query);
            $returnresult =   $allcollegeedata->result();
            return $returnresult;     
    }
	
    public function recommendedcourse(){
        $query = "SELECT  cd.image FROM eb_recommenedcourse pc LEFT JOIN eb_cource cd ON pc.cid  = cd.id    ORDER BY pc.id desc LIMIT 0,1"; 
            $allcollegeedata = $this->db->query($query);
            $returnresult =   $allcollegeedata->row();
            return $returnresult;   
    }
    public function getshowhidecollegecourse(){
            $query = "SELECT * FROM eb_showhidecollegecourse";
            $result= $this->db->query($query);
            $results = $result->result();  
            return $results;
    }
}

?>