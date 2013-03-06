<?php 
class addnewpages extends CI_Model {
	 // defult constructor 
   public function __construct() 
   {
	  parent::__construct();
		// Your own constructor code
   }
	 // models are stated below this   
	public function AddNewPage($data){
		$sqlQuery = "INSERT INTO eb_pages 
			(title ,meta_keywords, meta_description, description, position,url) VALUES 
			(".$this->db->escape($data['title']).",".$this->db->escape($data['metakeyword']).",".$this->db->escape($data['metadescription']).",'".htmlentities($data['description'])."','".$data['position']."','".$data['url']."')";
		$this->db->query($sqlQuery);
	}	
	public function getEditData($pageID){
		$query = $this->db->get_where('eb_pages', array('id' => $pageID));
		$result = $query->row();
		return $result;
	}
	
	public function updateEditpage($data){
		
		$sqlQuery = "UPDATE eb_pages SET 
		title = ".$this->db->escape($data['title']).",
		meta_keywords = ".$this->db->escape($data['metakeyword']).", 
		meta_description = ".$this->db->escape($data['metadescription']).", 
		description = '".htmlentities($data['description'])."', 
		position = '".$data['position']."',
                url = '".$data['url']."'
		WHERE id = '".$data['PageID']."'";
		$this->db->query($sqlQuery);	
	}
	
		public function deletePage($PageID){
		  $query = $this->db->where('id', $PageID);
		  $query = $this->db->limit(1,0);
		  $query = $this->db->delete('eb_pages');
		  return ($this->db->affected_rows() > 0) ? TRUE : FALSE;
		
	}
}

?>