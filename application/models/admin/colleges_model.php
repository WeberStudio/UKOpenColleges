<?php 
class Colleges_model extends CI_Model {
	 // defult constructor 
   public function __construct() 
   {
	  parent::__construct();
		// Your own constructor code
   }
	 // models are stated below this  
	 //========================		Save College 
	public function SaveColeeges($data){
		$sqlQuery = "INSERT INTO eb_colleges 
			(useremail,password, rand_id,collegename,status) VALUES 
			('".$data['username']."','".$data['password']."',uuid(),'".$data['cname']."','".$data['status']."')";
			$this->db->query($sqlQuery);
			 $lastInsertID = $this->db->insert_id();
			return  $this->getdata($lastInsertID);
	}
	public function getdata($lastInsertID){
			$query = $this->db->get_where('eb_colleges', array('id' => $lastInsertID));
			return $query->row();
	}
	public function getCollegelist($data){
            if(!empty($data['search'])){
                  $query_main = "SELECT * FROM eb_colleges WHERE collegename LIKE '%".$data['search']."%'";
                 $query = $this->db->query($query_main);
                } else {
		$query = $this->db->get('eb_colleges');
                }
		return $query->result();
	}
	
	//========================		Delete College
	
	public function deletecollege($collegeID){
		  $query = $this->db->where('id', $collegeID);
		  $query = $this->db->limit(1,0);
		  $query = $this->db->delete('eb_colleges');
		  return ($this->db->affected_rows() > 0) ? TRUE : FALSE;
	}
	
	public function getCollege($college_id){
			$query = $this->db->get_where('eb_colleges', array('id' => $college_id));
			return $query->row();
	}
        public function getcollegeid($id){
            $query = $this->db->get_where('eb_college_branches', array('id' => $id));
	    $result =  $query->row();
            return $result->college_id;
            
        }
		 //========================		Edit College 
	public function EditColeeges($data){
		$college_id = $data['college_id'];
		$sqlQuery = "UPDATE eb_colleges SET
			useremail 	= '".$data['username']."', 
			password 	= '".$data['password']."', 
			collegename = '".$data['cname']."', 
			status = '".$data['status']."'
			WHERE id = ".$college_id;
			$this->db->query($sqlQuery);
			 $lastInsertID = $this->db->insert_id();
			return  $this->getdata($college_id);
	}
        public function getcollegedetails($cid){
                         $query = $this->db->get_where('eb_colleges', array('id' => $cid));
			 return $query->row();
        }
        public function getcollegedetails_all($cid){
                         $query = $this->db->get_where('eb_collegedetails', array('cid' => $cid));
			 return $query->row();
        }
         public function getcollegedetails_personal($cid){
                         $query = $this->db->get_where('eb_college_personaldetail', array('cid' => $cid));
			 return $query->row();
        }
	
	/* =============================		Customer personal Info	=================================*/
		
	public function get_personal_info($collegeID)
    {
		
		$query = $this->db->query("SELECT * FROM eb_college_personaldetail WHERE cid = '".$collegeID."'");
		return $query->row();
    }

	public function editCustomer_info($data)
    {
		$cust_id = $this->session->userdata('customer_id');
		$Query = "UPDATE eb_college_personaldetail SET
			name 	= '".$data['name']."',
			email 	= '".$data['email']."', 
			mobile 	= '".$data['mobile']."', 
			phone 	= '".$data['phone']."', 
			fax 	= '".$data['fax']."', 
			skype 	= '".$data['skype']."', 
			county 	= '".$data['county']."',
			city 	= '".$data['city']."', 
			gender 	= '".$data['gender']."'
			WHERE id = ".$data['college_id'];
			$this->db->query($Query);
    }
	
	/* =============================		College Info	=================================	*/
	
	public function get_Collegdetail($college_id)
    {
		$query = $this->db->query("SELECT * FROM eb_collegedetails WHERE cid = '".$college_id."'");
		return $query->row();
    }
		public function edit_Collegedetail($data)
    {
		if($data['image'] != ""){
		$Query = "UPDATE eb_collegedetails SET
			name 				= '".$data['name']."',
			city 				= '".$data['city']."', 
			post_code 			= '".$data['post_code']."', 
			address 			= ".$this->db->escape($data['address']).", 
			phone 				= '".$data['phone']."', 
			fax 				= '".$data['fax']."',
			email 				= '".$data['email']."', 
			year_of_establish 	= '".$data['year_of_establish']."', 
			no_branches 		= '".$data['no_branches']."', 
			description 		= ".$this->db->escape($data['description']).", 
			image 		= '".$data['image']."', 
			hts 				= '".$data['hts']."'
			WHERE id = ".$data['id'];
		}else{
		$Query = "UPDATE eb_collegedetails SET
			name 				= '".$data['name']."',
			city 				= '".$data['city']."', 
			post_code 			= '".$data['post_code']."', 
			address 			= ".$this->db->escape($data['address']).", 
			phone 				= '".$data['phone']."', 
			fax 				= '".$data['fax']."',
			email 				= '".$data['email']."', 
			year_of_establish 	= '".$data['year_of_establish']."', 
			no_branches 		= '".$data['no_branches']."', 
			description 		= ".$this->db->escape($data['description']).", 
			hts 				= '".$data['hts']."'
			WHERE id = ".$data['id'];
		}
		$this->db->query($Query);
    }
    public function getcategories(){
            $query = $this->db->get('categories');
            return $query->result(); 
    }
    public function addcategory($data){
        $sqlQuery = "INSERT INTO categories 
			(name,status) VALUES 
			('".$data['name']."','".$data['status']."')";
			$this->db->query($sqlQuery);
    }
    public function geteditcategory($id){
           $query = $this->db->get_where('categories', array('id' => $id));
	   return $query->row();
    }
    public function updatecategory($data){
        $Query = "UPDATE categories SET
			name 				= '".$data['name']."',
			status 				= '".$data['status']."'
			WHERE id = ".$data['id'];
        $this->db->query($Query);
    }
}

?>