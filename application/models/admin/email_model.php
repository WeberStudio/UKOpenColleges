<?php 
class email_model extends CI_Model {
	 // defult constructor 
   public function __construct() 
   {
	  parent::__construct();
		// Your own constructor code
   }
	 // models are stated below this  
	 
	public function addnewemailaddress($data){	
		$sqlQuery = "INSERT INTO eb_emailaddress 
		(title,emailaddress) VALUES 
		('".$data['title']."','".$data['email']."')";
		$this->db->query($sqlQuery);
	}
	
	public function getemiallist(){
		$query = $this->db->query('SELECT * FROM eb_emailaddress');   
		return $query->result();
	}
		
	public function geteamiladdressedit($id){
		$query = $this->db->get_where('eb_emailaddress', array('id' => $id));
		$result = $query->row();
		return $result;	
	}
	
	public function updateeamiladdress($data){
		$sqlQuery = "UPDATE eb_emailaddress SET 
		title = '".$data['title']."',
		emailaddress = '".$data['email']."'
		WHERE id = '".$data['id']."'";	
		$this->db->query($sqlQuery);			
	}
	
	 //========================  Email Templates

	public function save_email_template($data){
		$Query = "INSERT INTO eb_email_templates (email_name, email_label, title, email_variables, description) VALUES 
		('".$data['email_name']."', '".$data['email_label']."', '".$data['title']."', '".$data['email_variables']."', '".$data['description']."')";
		$this->db->query($Query);			
	}
	 
	 public function email_template_list(){
		$query = $this->db->query('SELECT * FROM eb_email_templates');   
		return $query->result();
	}
	
	 public function get_edit_template($id){
		$query = $this->db->query('SELECT * FROM eb_email_templates WHERE id = '.$id);   
		return $query->row();
	}
	
	public function save_edit_email_template($data){
		$Query = "UPDATE eb_email_templates SET 
		email_name 		= '".$data['email_name']."', 
		email_label 	= '".$data['email_label']."', 
		title 			= '".$data['title']."', 
		email_variables = '".$data['email_variables']."', 
		description 	= '".$data['description']."' 
		WHERE id = ".$data['Email_ID'];
		$this->db->query($Query);			
	}

}

?>