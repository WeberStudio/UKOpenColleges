<?php
class students_list extends CI_Controller {

	 	// defult constructor 
	public function __construct()
    {
            parent::__construct();
            // Your own constructor code	
		$this->load->model('admin/students_list_model');
    }
	
	public function Get_student_list($offset = 0) {
               $student_name =  $this->input->post('location');
                $per_page = 15;
                $counti = $per_page + $offset;
                 $offset1 = $offset.",".$counti;
                        $data['student'] = $this->students_list_model->get_students($offset1,$student_name);
                        $data['total'] = $this->students_list_model->get_students_num();
                $config['base_url'] = base_url().'admin_main/students_list/Get_student_list/';
                $config['total_rows'] = $data['total'];
                $config['per_page'] = 15;
                $config['num_links']=9;
                $config['uri_segment'] =4;
                $this->pagination->initialize($config); 
			$this->load->view('admin/header');
			$this->load->view('admin/left');
			$this->load->view('admin/students_list',$data);
			$this->load->view('admin/footer');
	}    
        public function searchstent(){
             $query = "SELECT * FROM eb_student_profile WHERE   family_name LIKE '%".$student_name."%' or four_name LIKE '%".$student_name."%' ORDER BY id DESC ";  
             $result = $this->db->query($query);
             foreach ($result->result() as $row){
             $id =  $row->id;
             $varresult .= "<a href='#' onclick ='check(this.id)' id='".$id."'><span id='s".$id."'>".$row->family_name."</span></a><br/>"  ;
            }
            echo  $varresult;
             
        }
}
?>
