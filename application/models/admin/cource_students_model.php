<?php 
class cource_students_model extends CI_Model {
	 // defult constructor 
     public function __construct() 
	  {
          parent::__construct();
		    // Your own constructor code
      }
	  
	 // models are stated below this  
	 public function getCourse_students($course_id){
		 
		$query = "SELECT C.*, S.*,C.id as selected_courseid  FROM eb_selected_course C INNER JOIN eb_student_profile S ON C.student_id = S.id WHERE C.course_id = ".$course_id;
		$result = $this->db->query($query);
		return $result->result();
	 }
	  public function getcollegename($data){
	 	    $Query = "SELECT C.collegename, C.id AS College_ID , B.id FROM eb_colleges C INNER JOIN eb_college_branches B ON B.college_id = C.id WHERE B.id =".$data['branch_id']; 
		 	$result = $this->db->query($Query);
			$result_row = $result->row();
			$data_main['college'] = $result_row->collegename;
			$data_main['id'] = $result_row->College_ID;
			return  $data_main;
			// return  $result_row->collegename;
	 }
	 public function savecource($data){
		 $collegename = $this->getcollegename($data);
			$College_ID = $collegename['id'];
			$College_name = $collegename['college'];
		  $sqlQuery = "INSERT INTO eb_cource 
			(college_id, college_name, branch_id,category,courcename, address,offerprice,agentcommesion,courcerequirmentdoc,duration,startdate, enddate,session, english_offer_price, description, image) VALUES 
			('".$College_ID."', '".$College_name."', '".$data['branch_id']."','".$data['category']."','".$data['txtCn']."',".$this->db->escape($data['txtAddress']).",'".$data['Offer_price']."',
			'".$data['ag_commession']."','".$data['filename']."','".$data['duration']."','".$data['endcourcedatestart']."',
			'".$data['endcourcedateend']."','".$data['txtsession']."','".$data['english_offer_price']."', ".$this->db->escape($data['description']).", '".$data['image']."')";
		$this->db->query($sqlQuery);
		 	
	 }
	 public function getcources($branch_id){
	 	 $query = $this->db->query("SELECT * FROM eb_cource WHERE branch_id = '".$branch_id."'");
		 //'eb_cource', array('branch_id' => $branch_id)
		 return  $query->result();
	 }
	 
	 //==============================		Delete Course
	 public function setStatus($data){
                 $query = "UPDATE eb_student_profile SET showcustomer = ".$data['status']." WHERE id = ".$data['id']; 
		 $this->db->query($query);
                 if($data['status'] == 1) {
                     $sql1 = "SELECT college_id  FROM eb_college_branches WHERE id = '".$data['courseid']."'  ";
                     $results = $this->db->query("SELECT college_id  FROM eb_college_branches WHERE id = '".$data['courseid']."'  ");
                     $results_id = $results->row();
                     $college_id = $results_id->college_id;
                     $url =  base_url()."user/student_view/view_student/".$data['id'];
                     $sqlQuery = "INSERT INTO customernotifaction (collegeid,text,url,status) VALUES('".$college_id."','A New Student is enrolled','".$url."','1') ";
                     $this->db->query($sqlQuery);
                 }
		 return '1';
         }
         public function updatestudentstaus($data){
             $query = "UPDATE eb_selected_course SET process = ".$data['value']." WHERE id = ".$data['id']; 
		 $this->db->query($query);
                 return 1;
         }
}

?>