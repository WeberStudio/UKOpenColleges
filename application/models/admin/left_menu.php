<?php 
class addnewpages extends CI_Model {
	 // defult constructor 
   public function __construct() 
   {
	  parent::__construct();
		// Your own constructor code
   }
	 // models are stated below this   
	public function getEditData($pageID){
		$query = $this->db->get_where('eb_pages', array('id' => $pageID));
		$result = $query->row();
		return $result;
	}
}

?>