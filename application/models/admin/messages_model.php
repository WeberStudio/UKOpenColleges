<?php 
class messages_model extends CI_Model {
	 // defult constructor 
   public function __construct() 
   {
	  parent::__construct();
		// Your own constructor code
   }
	  
    public function submit_messages($data)
    {
		$admin_id = $this->session->userdata('admin_id');
		$admin_name = $this->session->userdata('admin_name');
		$student_id = $data['student_id'];
		  $Query = "INSERT INTO eb_admin_chat
			(student_id, admin_id, admin_name, message) VALUES 
			('".$student_id."', '".$admin_id."', '".$admin_name."', ".$this->db->escape($data['message']).")";
			$this->db->query($Query);
    }
	
	//
	
	public function message_update($data)
    {
			
		  $Query = "UPDATE eb_admin_chat SET 
			status = ".$data['status']."
			WHERE id = ".$data['id'];
			$this->db->query($Query);
			
			if($data['status'] == 1){
                    $query = $this->db->query("SELECT course_id,student_id FROM eb_admin_chat WHERE id = '".$data['id']."'");
					$reslut = $query->row();
					$courseid = $reslut->course_id;
					$student_id = $reslut->student_id;
					$query = $this->db->query("SELECT  college_id FROM eb_cource WHERE id = '".$courseid."'");
					$reslut = $query->row();
					$college_id = $reslut->college_id;  
                    $url =  base_url()."user/customer_student_messages/get_messages/".$student_id."/".$courseid;
                    $sqlQuery = "INSERT INTO customernotifaction (collegeid,text,url,status) VALUES('".$college_id."','New student file is uploaded','".$url."','1') ";
                    $this->db->query($sqlQuery);
           }
		   
			if($data['status'] == 1){
				
				$chkQuery = $this->db->query("SELECT * FROM eb_admin_chat WHERE id = '".$data['id']."'");
				$chkResult = $chkQuery->row();
				$cust_id = $chkResult->course_id;
				$student_id = $chkResult->student_id;
				if ($cust_id == 0){
				   $query = $this->db->query("SELECT course_id FROM eb_admin_chat WHERE id = '".$data['id']."' AND course_id = 0 AND admin_id = 0");
				   if($query->num_rows() > 0) {
					   $college = $query->row();
					   $collegeid = $college->customer_id;
					  /*http://192.168.1.100/jamshaid/CodeIgniter/user/student_view/view_student/2*/
						 $url =  base_url()."user/admin_messages/get_admin_messages/";
						 $sqlQuery = "INSERT INTO customernotifaction (collegeid,text,url,status) VALUES('".$collegeid."','A New Student Send you a message','".$url."','1') ";
						 $this->db->query($sqlQuery);} 
				}else{
					
				   $query = $this->db->query("SELECT * FROM eb_admin_chat WHERE id = '".$data['id']."' AND course_id = ".$cust_id);
				   if($query->num_rows() > 0) {
					   $college = $query->row();
					   $collegeid = $college->course_id;
					  /*http://192.168.1.100/jamshaid/CodeIgniter/user/student_view/view_student/2*/
						 $url =  base_url()."user/customer_student_messages/get_messages/".$student_id."/".$collegeid;
						 $sqlQuery = "INSERT INTO eb_student_notifaction (student_id,text,url,status) VALUES('".$student_id."','New message from admin','".$url."','1') ";
						 $this->db->query($sqlQuery);
					}  
			   }
			}
			return 1;
    }
	
	public function admin_message_update($data)
    {
		  $Query = "UPDATE eb_admin_chat SET 
			student_status = ".$data['student_status'].",
			course_status = ".$data['course_status']."
			WHERE id = ".$data['id'];
			$this->db->query($Query);
/*			if($data['student_status'] == 1){
				$chkQuery = $this->db->query("SELECT * FROM eb_admin_chat WHERE id = '".$data['id']."'");
				$chkResult = $chkQuery->row();
				$cust_id = $chkResult->course_id;
				$student_id = $chkResult->student_id;
					
				$query = $this->db->query("SELECT * FROM eb_admin_chat WHERE id = '".$data['id']."' AND course_id = ".$cust_id);
				if($query->num_rows() > 0) {
				   $college = $query->row();
				   $collegeid = $college->course_id;
					$url =  base_url()."user/customer_student_messages/get_messages/".$student_id."/".$collegeid;
					$sqlQuery = "INSERT INTO eb_student_notifaction (student_id,text,url,status) VALUES('".$student_id."','Admin send you a message','".$url."','1') ";
					$this->db->query($sqlQuery);
				}
			}else if($data['course_status'] == 1){
				$chkQuery = $this->db->query("SELECT * FROM eb_admin_chat WHERE id = '".$data['id']."'");
				$chkResult = $chkQuery->row();
				$cust_id = $chkResult->course_id;
				$student_id = $chkResult->student_id;
				if ($cust_id == 0){
				   $query = $this->db->query("SELECT course_id FROM eb_admin_chat WHERE id = '".$data['id']."' AND course_id = 0 AND admin_id = 0");
				   if($query->num_rows() > 0) {
					   $college = $query->row();
					   $collegeid = $college->customer_id;
						 $url =  base_url()."user/admin_messages/get_admin_messages/";
						 $sqlQuery = "INSERT INTO customernotifaction (collegeid,text,url,status) VALUES('".$collegeid."','A New Student Send you a message','".$url."','1') ";
						 $this->db->query($sqlQuery);} 
				}
			}
*/			
		   	return 1;
    }

		//
	public function get_student_messages($student_id){
		// $student_id = $this->session->userdata('student_id');
		$query = $this->db->query("SELECT * FROM eb_admin_chat WHERE student_id = ".$student_id." ORDER BY id ASC");
		return $query->result();
	}
	public function del_student_documents($id){
			$query = $this->db->where('id', $id);
		  $query = $this->db->limit(1,0);
		  $query = $this->db->delete('eb_student_documents');
		  return ($this->db->affected_rows() > 0) ? TRUE : FALSE;
	}
}

?>