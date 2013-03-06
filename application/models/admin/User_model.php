<?php 
class User_model extends CI_Model {
	 // defult constructor 
   public function __construct() 
   {
	  parent::__construct();
		// Your own constructor code
   }
	  
	 // models are stated below this   
    public function getRights(){
		$query = $this->db->get('eb_userright');	
		 return $query->result();
	}
	public function AddNewAdminUser($data){
		if(!empty($data['Rights'])){
			$rights = implode(',',$data['Rights']);
		} else {
			$rights = "";
		}
	
		$sqlQuery = "INSERT INTO eb_adminuser (user_name,user_password,user_loginname,user_emailaddress , user_skypeid , user_address , user_contactno1 , user_contactno2 , user_officecontactno,user_image , user_rights   ) VALUES (".$this->db->escape($data['fullname']).",'".$data['password']."','".$data['loginname']."','".$data['emailaddress']."','".$data['skypeid']."',".$this->db->escape($data['address']).",'".$data['primerycontact']."','".$data['secondarycontact']."','".$data['officecontact']."','','".$rights."')";
		$this->db->query($sqlQuery);
		
		
	}
	public function Adminlist(){
		 if($this->session->userdata('admin_id') == '1'){	
			 $query = $this->db->get('eb_adminuser');	
			 return $query->result();
		 } else {
			 $query = $this->db->query('SELECT * FROM eb_adminuser WHERE user_id !="1"');	
			 return $query->result();	
		 }
	}
	public function deleteUser($userID){
		  $query = $this->db->where('user_id', $userID);
		  $query = $this->db->limit(1,0);
		  $query = $this->db->delete('eb_adminuser');
		  return ($this->db->affected_rows() > 0) ? TRUE : FALSE;
		
	}
	public function getEditData($userID){
			$query = $this->db->get_where('eb_adminuser', array('user_id' => $userID));
			$result = $query->row();
			return $result;
	}
	public function updateEditUser($data){
		if(!empty($data['Rights'])){
			$rights = implode(',',$data['Rights']);
		} else {
			$rights = "";
		}
		$sqlQuery = "UPDATE eb_adminuser SET user_name = '".$data['fullname']."',user_password = '".$data['password']."',user_loginname = '".$data['loginname']."',user_emailaddress = '".$data['emailaddress']."', user_skypeid = '".$data['skypeid']."', user_address ='".$data['address']."', user_contactno1 = '".$data['primerycontact']."', user_contactno2 = '".$data['secondarycontact']."', user_officecontactno = '".$data['officecontact']."' , user_rights  = '".$rights."' WHERE user_id = '".$data['hiddenUserID']."'";
		$this->db->query($sqlQuery);	
	}
        public function updateEditUserprofile($data){
           
		$sqlQuery = "UPDATE eb_adminuser SET user_name = '".$data['fullname']."',user_password = '".$data['password']."',user_loginname = '".$data['loginname']."',user_emailaddress = '".$data['emailaddress']."', user_skypeid = '".$data['skypeid']."', user_address ='".$data['address']."', user_contactno1 = '".$data['primerycontact']."', user_contactno2 = '".$data['secondarycontact']."', user_officecontactno = '".$data['officecontact']."' WHERE user_id = '".$data['hiddenUserID']."'";
		$this->db->query($sqlQuery);	
        }
        public function gethomedate(){
            $query = $this->db->query('SELECT * FROM eb_homepage_text WHERE id ="1"');	
			 return $query->row();
        }
        public function updatehomepagetext($data){
          $sqlQuery = "UPDATE eb_homepage_text SET value = '".$data['text']."'WHERE id = '1'";
		$this->db->query($sqlQuery);  
        }
	
}

?>