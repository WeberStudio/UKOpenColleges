<?php 
class login extends CI_Model {
	 // defult constructor 
   public function __construct() 
   {
	  parent::__construct();
		// Your own constructor code
   }
	  
	 // models are stated below this   
    public function login($username,$userpassword)
    {
       $sql = $this->db->query('SELECT * FROM eb_adminuser WHERE user_loginname = "'.$username.'" AND user_password = "'.$userpassword.'" ');
	   $adminresultarray = $sql->row();
	   if($adminresultarray->user_id == 1) {
		   $rights = 'all';
	   } else {
		  $rights = $adminresultarray->user_rights; 
	   }
	   if(!empty($adminresultarray)){
			$newdata = array(
                   'admin_id'  => $adminresultarray->user_id,
                   'admin_name'     => $adminresultarray->user_name,
                   'rights' =>  $rights,
				   'admin-login'=>'TRUE'
               );

		$this->session->set_userdata($newdata);
	   }else {
		  $newdata = array(
               'admin-login'=>''
               );

		$this->session->set_userdata($newdata);
	   }
    }
	public function logout(){
		/*Log out function destroy the seesion of login admin user*/
		$this->session->sess_destroy();
	}
        public function getnotifaction(){
             $sql = $this->db->query("SELECT * FROM adminnotifaction WHERE status = 1 ".$offset1."");
	     return   $sql->result();
        }
         public function getnotifaction_num(){
             $sql = $this->db->query('SELECT * FROM adminnotifaction WHERE status = 1  ');
	     return   $sql->num_rows();
        }
}

?>