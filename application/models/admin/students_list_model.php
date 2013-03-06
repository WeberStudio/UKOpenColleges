<?php 
class students_list_model extends CI_Model {
	 // defult constructor 
     public function __construct() 
	  {
          parent::__construct();
		    // Your own constructor code
      }
	  
	 // models are stated below this  
	 public function get_students($offset1,$student_name){
		 if(!empty($student_name)){
                   $query = "SELECT * FROM eb_student_profile WHERE   family_name LIKE '%".$student_name."%' or four_name LIKE '%".$student_name."%' ORDER BY id DESC ";  
                 } else{
		$query = "SELECT * FROM eb_student_profile ORDER BY id DESC LIMIT ".$offset1."";
                 }
		$result = $this->db->query($query);
		return $result->result();
	 } 
         public function get_students_num(){
		 
		$query = "SELECT * FROM eb_student_profile ORDER BY id DESC";
		$result = $this->db->query($query);
		return $result->num_rows();
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
			(".$College_ID."', ".$this->db->escape($College_name).", '".$data['branch_id']."','".$data['category']."','".$data['txtCn']."',".$this->db->escape($data['txtAddress']).",'".$data['Offer_price']."',
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
	 
}

?>