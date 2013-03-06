<?php 
class branch_detail_model extends CI_Model {
	 // defult constructor 
     public function __construct() 
	  {
          parent::__construct();
		    // Your own constructor code
      }
	  
	 // models are stated below this   
    public function add_newbranch($data,$nationality,$percentage, $accommodation)
    {
		$accomo = $accommodation;
		$cust_id = $this->session->userdata('customer_id');
		 $Query = "INSERT INTO eb_college_branches 
			(college_id, name, city, post_code, address, phone, fax, email, year_of_establish, traffic_info, intertainment_info, weather_info, accommodation, description, image) VALUES 
			('".$data['college_id']."',".$this->db->escape($data['name']).", ".$this->db->escape($data['city']).", '".$data['post_code']."', ".$this->db->escape($data['address']).", '".$data['phone']."', '".$data['fax']."',
			'".$data['email']."', '".$data['year_of_establish']."', '".$data['traffic_info']."', '".$data['intertainment_info']."', '".$data['weather_info']."', 
			'".$accomo."', ".$this->db->escape($data['description']).", '".$data['image']."')";
		$this->db->query($Query);
		$lastbranchID = $this->db->insert_id();
		$i = 0;
		$totalcount = count($percentage);
		
			while($i<$totalcount){
				$nan = $nationality[$i];
				$per = $percentage[$i];
				$Querys = "INSERT INTO eb_branches_diversity 
				(college_id, nationality, persentage, branch_id) VALUES 
				('".$cust_id."','".$nan."', '".$per."', '".$lastbranchID."')";
				$this->db->query($Querys);
					$i++;
			}
		
    }
	public function getbranches($college_id,$data){
                 if(!empty($data['search'])){
                    echo $query = "SELECT B.*,C.id AS CID, C.collegename FROM eb_college_branches B INNER JOIN eb_colleges C ON B.college_id = C.id WHERE C.id = '".$college_id."' AND  b.name LIKE '%".$data['search']."%' "; 
                 } else{
		$query = "SELECT B.*,C.id AS CID, C.collegename FROM eb_college_branches B INNER JOIN eb_colleges C ON B.college_id = C.id WHERE C.id = ".$college_id;
                 }
                $result = $this->db->query($query);
		return $result->result();
	}
	public function deletebranch($bramchid){
		  $query = $this->db->where('id', $bramchid);
		  $query = $this->db->limit(1,0);
		  $query = $this->db->delete('eb_college_branches');
		  return ($this->db->affected_rows() > 0) ? TRUE : FALSE;
		
	}
	public function getBranchData($branch_id){
		$query = $this->db->get_where("eb_college_branches", array('id' => $branch_id));
		return $query->row();
	}
	public function getBranchDiversity($branch_id){
		$query2 = $this->db->get_where(" eb_branches_diversity", array('branch_id' => $branch_id));
		return $query2->result();
	}
	//		Edit Branches Data
    public function editBranches($data,$nationality,$percentage, $diver_id, $accommodation)
    {
		$accomo = $accommodation;
		$Br_id = $data['branch_id'];
		if($data['image'] != ""){
			 $Query = "UPDATE eb_college_branches SET 
				name 				= '".$data['name']."', 
				city 				= ".$this->db->escape($data['city']).", 
				post_code 			= '".$data['post_code']."', 
				address 			= ".$this->db->escape($data['address']).", 
				phone 				= '".$data['phone']."', 
				fax 				= '".$data['fax']."', 
				email 				= '".$data['email']."', 
				year_of_establish 	= '".$data['year_of_establish']."', 
				traffic_info 		= '".$data['traffic_info']."', 
				intertainment_info 	= '".$data['intertainment_info']."', 
				weather_info 		= '".$data['weather_info']."', 
				description 		= ".$this->db->escape($data['description']).",
				image 				= '".$data['image']."',
				accommodation 		= '".$accomo."'
				WHERE id = ".$Br_id;
		}else{
			 $Query = "UPDATE eb_college_branches SET 
				name 				= ".$this->db->escape($data['name']).", 
				city 				= '".$data['city']."', 
				post_code 			= '".$data['post_code']."', 
				address 			= ".$this->db->escape($data['address']).", 
				phone 				= '".$data['phone']."', 
				fax 				= '".$data['fax']."', 
				email 				= '".$data['email']."', 
				year_of_establish 	= '".$data['year_of_establish']."', 
				traffic_info 		= '".$data['traffic_info']."', 
				intertainment_info 	= '".$data['intertainment_info']."', 
				weather_info 		= '".$data['weather_info']."', 
				description 		= ".$this->db->escape($data['description']).",
				accommodation 		= '".$accomo."'
				WHERE id = ".$Br_id;
		}
		$this->db->query($Query);
		$lastbranchID = $this->db->insert_id();
		$i = 0;
		$totalcount = count($percentage);
		
			while($i<$totalcount){
			$Diversity_id = $diver_id[$i];
			$nan = $nationality[$i];
			$per = $percentage[$i];
			$Querys = "UPDATE eb_branches_diversity SET
			nationality = '".$nan."', 
			persentage = '".$per."' 
			WHERE id = ".$Diversity_id;
				//exit;
			$this->db->query($Querys);
				$i++;
			}
    }
    public function getbranchpopup($id){
                $query2 = $this->db->get_where("eb_college_branches", array('id' => $id));
		return $query2->row();
    }
    public function getdiveresty($id){
                $query2 = $this->db->get_where("eb_branches_diversity", array('branch_id' => $id));
		return $query2->result();
    }
}
?>