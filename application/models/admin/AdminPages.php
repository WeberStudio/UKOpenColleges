<?php 
class AdminPages extends CI_Model {
	 // defult constructor 
   public function __construct() 
   {
	  parent::__construct();
		// Your own constructor code
   }
	  
	 // models are stated below this  
	     public function getPages()
    {
   		 $query = $this->db->query('SELECT * FROM eb_pages   ORDER BY id ASC');   
		 return $query->result();
    }
 
}

?>