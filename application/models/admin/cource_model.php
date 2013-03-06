<?php 
class cource_model extends CI_Model {
	 // defult constructor 
     public function __construct() 
	  {
          parent::__construct();
		    // Your own constructor code
      }
	  
	 // models are stated below this  
	 public function getCourses($branch_id){
		$query = "SELECT C.*, B.id AS BID, B.name FROM eb_cource C LEFT OUTER JOIN eb_college_branches B ON C.branch_id = B.id WHERE B.id = ".$branch_id;
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
	 
	 public function courses_detl($courceid){
		  $query = $this->db->where('id', $courceid);
		  $query = $this->db->limit(1,0);
		  $query = $this->db->delete('eb_cource');
		  return ($this->db->affected_rows() > 0) ? TRUE : FALSE;
	 }
	 
	 // ===============================		Get Course For Edit
	 
	 public function getCourse($course_id){
		 $query = $this->db->get_where('eb_cource', array('id' => $course_id));
		 return $query->row();
		 
	 }
	 public function Edit_Courses($data){
		 $Course_ID = $data['course_ID'];
		 $File_nam = $data['filename'];
		 if($File_nam != ""){
			  $sqlQuery = "UPDATE eb_cource SET 
				category 			= '".$data['category']."', 
				courcename 			= '".$data['txtCn']."', 
				address 			= ".$this->db->escape($data['txtAddress']).", 
				offerprice 			= '".$data['Offer_price']."',
				agentcommesion 		= '".$data['ag_commession']."', 
				courcerequirmentdoc = '".$data['filename']."',
				duration 			= '".$data['duration']."', 
				startdate 			= '".$data['endcourcedatestart']."', 	
				enddate 			= '".$data['endcourcedateend']."', 
				session 			= '".$data['txtsession']."', 
				description 		= ".$this->db->escape($data['description']).", 
				english_offer_price = '".$data['english_offer_price']."'
				WHERE id = ".$Course_ID;
			$this->db->query($sqlQuery);
		 }else{
			  $sqlQuery = "UPDATE eb_cource SET 
				category 			= '".$data['category']."', 
				courcename 			= '".$data['txtCn']."', 
				address 			= ".$this->db->escape($data['txtAddress']).", 
				offerprice 			= '".$data['Offer_price']."',
				agentcommesion 		= '".$data['ag_commession']."', 
				duration 			= '".$data['duration']."', 
				startdate 			= '".$data['endcourcedatestart']."', 	
				enddate 			= '".$data['endcourcedateend']."', 
				session 			= '".$data['txtsession']."', 
				description 		= ".$this->db->escape($data['description']).", 
				english_offer_price = '".$data['english_offer_price']."'
				WHERE id = ".$Course_ID;
			$this->db->query($sqlQuery);
		 }
	 }
	 
	 // ===============================		SET Course Status
	 
	 public function setStatus($data){
		 $query = "UPDATE eb_cource SET status = ".$data['status']." WHERE id = ".$data['id']; 
		 $this->db->query($query);
                 
		 return '1';
	 }
}

?>