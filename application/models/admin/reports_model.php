<?php 
class reports_model extends CI_Model {
	 // defult constructor 
   public function __construct() 
   {
	  parent::__construct();
		// Your own constructor code
   }
	  
	 // models are stated below this   
    public function getcolleges(){
		$query = $this->db->get('eb_colleges');	
		 return $query->result();
	}
	
	
}

?>