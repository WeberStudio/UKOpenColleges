<?php 
class social_model extends CI_Model {
	 // defult constructor 
   public function __construct() 
   {
	  parent::__construct();
		// Your own constructor code
   }
	 // models are stated below this  
	 //======================== 
   public function savesocialmedia($data){
        
        $sqlQuery = "INSERT INTO eb_social 
			(url,title, image) VALUES 
			('".$data['url']."','".$data['title']."','".$data['icone']."')";
			$this->db->query($sqlQuery);
   }
   public function getsocialmedia(){
                $query = $this->db->query('SELECT * FROM eb_social');   
		 return $query->result();
   }
   public function deletesocialmedia($id){
                   $this->db->where('id', $id);
		   $this->db->limit(1,0);
		   $this->db->delete('eb_social');
		  return ($this->db->affected_rows() > 0) ? TRUE : FALSE;
   }
   public function geteditdata($id){
                $query = $this->db->get_where('eb_social', array('id' => $id));
		$result = $query->row();
		return $result;
       
   }
   public function updatesocialmedis($data){
       if(!empty($data['icone'])){
            $sqlQuery = "UPDATE eb_social SET 
		title = '".$data['title']."',
		url = '".$data['url']."',
                image = '".$data['icone']."'    
		WHERE id = '".$data['id']."'";
       } else {
       $sqlQuery = "UPDATE eb_social SET 
		title = '".$data['title']."',
		url = '".$data['url']."'
		WHERE id = '".$data['id']."'";
       }
		$this->db->query($sqlQuery);	
       
   }
}

?>