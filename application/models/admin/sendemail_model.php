<?php 
class sendemail_model extends CI_Model {
	 // defult constructor 
   public function __construct() 
   {
	  parent::__construct();
		// Your own constructor code
   }
	 // models are stated below this  
	 
	
	public function getemiallistnewsletter(){
		$query = $this->db->query('SELECT * FROM eb_newsletter');   
		return $query->result();
	}
        public function getemailtemplate($emailtemplateid){
          $query = $this->db->get_where('eb_email_templates', array('id' => $emailtemplateid));  
          return $query->row();
        }
        public function getemiallistofferletter(){
            $query = $this->db->query('SELECT * FROM eb_subscribe_offer');   
		return $query->result();
        }

	 
}

?>