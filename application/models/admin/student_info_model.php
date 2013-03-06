<?php 
class student_info_model extends CI_Model {
	 // defult constructor 
    public function __construct() 
	  {
          parent::__construct();
		    // Your own constructor code
      }
	  
	 // models are stated below this  
	public function get_students($student_id){
		 
		$query = "SELECT * FROM eb_student_profile WHERE id = ".$student_id;
		$result = $this->db->query($query);
		return $result->row();
	 }
	public function get_students_docs($student_id){
		 
		$query = "SELECT * FROM eb_student_documents WHERE student_id = ".$student_id." AND admin_upload = 0 AND customer_id = 0";
		$result = $this->db->query($query);
		return $result->result();
	 }
	
	public function get_admin_docs($student_id){
		$query = $this->db->query("SELECT * FROM eb_selected_course WHERE student_id = ".$student_id."");
		$college = $query->row();
		$customer_id = $college->course_id;
		$query = "SELECT * FROM eb_student_documents WHERE student_id = ".$student_id." AND admin_upload = 1";
		$result = $this->db->query($query);
		return $result->result();
	 }
	
	public function get_college_docs($student_id){
		 
		$query = "SELECT C.student_id, C.course_id, D.* FROM eb_selected_course C RIGHT OUTER JOIN 
		eb_student_documents D ON C.student_id = D.student_id WHERE D.student_id = ".$student_id." AND C.course_id = D.customer_id";
		/*$query = $this->db->query("SELECT * FROM eb_selected_course WHERE student_id = ".$student_id."");
		$college = $query->row();
		$customer_id = $college->course_id;*/

	//	$query = " SELECT branch_id from eb_selected_course WHERE student_id = '".$student_id."' AND status = 1";
		$result = $this->db->query($query);
		$branch = $result->row();
		$customer_id = $branch->course_id;
		$querydocs = "SELECT * FROM eb_student_documents WHERE customer_id = '".$customer_id."' AND student_id = '".$student_id."'";
	//	echo $querydocs; exit;
		$resultdoc = $this->db->query($querydocs);
		return $resultdoc->result();
	 }
	
	public function update_student_file_status($data){
		 
		$query = "UPDATE eb_student_documents SET 
			status = '".$data['status']."' 
			WHERE id = ".$data['id'];
		$this->db->query($query);
                if($data['status'] == 1){
					
					$chkQuery = $this->db->query("SELECT * FROM eb_student_documents WHERE id = '".$data['id']."'");
					$chkResult = $chkQuery->row();
					$cust_id = $chkResult->customer_id;
					$student_id = $chkResult->student_id;
					if ($cust_id == 0){
					   $query = $this->db->query("SELECT course_id FROM eb_selected_course WHERE student_id = '".$student_id."'");
                                           $result = $query->row();
                                           $query = $this->db->query("SELECT college_id FROM eb_cource WHERE id = '".$result->course_id."'");
					   if($query->num_rows() > 0) {
						   $college = $query->row();
						   $collegeid = $college->college_id;
						  /*http://192.168.1.100/jamshaid/CodeIgniter/user/student_view/view_student/2*/
							 $url =  base_url()."user/student_view/view_student/".$student_id;
							 $sqlQuery = "INSERT INTO customernotifaction (collegeid,text,url,status) VALUES('".$collegeid."','New student file is uploaded','".$url."','1') ";
							 $this->db->query($sqlQuery);} 
					}else{
						
					   $query = $this->db->query("SELECT customer_id FROM eb_student_documents WHERE id = '".$data['id']."' AND customer_id = ".$cust_id);
					   if($query->num_rows() > 0) {
						   $college = $query->row();
						   $collegeid = $college->customer_id;
						  /*http://192.168.1.100/jamshaid/CodeIgniter/user/student_view/view_student/2*/
							 $url =  base_url()."user/student_documents/admin_documents/";
							 $sqlQuery = "INSERT INTO eb_student_notifaction (student_id,text,url,status) VALUES('".$student_id."','New student file is uploaded','".$url."','1') ";
							
							 $this->db->query($sqlQuery);
					   	}  
                   }
                }
                
		return 1;
	}
	
	public function upload_files($tempname,$student_id){
			  $Query = "INSERT INTO eb_student_documents 
				(student_id, filename, admin_upload) VALUES 
				('".$student_id."', '".$tempname."', 1)";
				$this->db->query($Query);
		}
		
	public function get_upload_files(){
			$query = $this->db->get_where('eb_student_documents', array('student_id' => $this->session->userdata('student_id')));
			return $query->result();
		}
		
	public function del_student_documents($id){
			$query = $this->db->where('id', $id);
			$query = $this->db->limit(1,0);
			$query = $this->db->delete('eb_student_documents');
			return ($this->db->affected_rows() > 0) ? TRUE : FALSE;
		}	
        public function del_college_documents($id){
                $query = $this->db->where('id', $id);
                $query = $this->db->limit(1,0);
                $query = $this->db->delete('eb_college_doc');
                return ($this->db->affected_rows() > 0) ? TRUE : FALSE;
        }
}

?>