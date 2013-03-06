<?php 
class letter_model extends CI_Model {
	 // defult constructor 
   public function __construct() 
   {
	  parent::__construct();
		// Your own constructor code
   }
	 // models are stated below this  
	 //======================== 
   
   public function getnewsletter(){
                $query = $this->db->query('SELECT * FROM eb_newsletter');   
		 return $query->result();
   }
   public function getoffersubscriber(){
                $query = $this->db->query('SELECT * FROM eb_subscribe_offer');   
		 return $query->result();
       
   }
   
}

?>