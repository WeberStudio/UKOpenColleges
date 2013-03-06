<?php
class User extends CI_Controller {
	/**
	 * Admin Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/admin
	 *	- or -  
	 * 		http://example.com/admin/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/admin/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	 	// defult constructor 
	public function __construct()
    {
            parent::__construct();
            // Your own constructor code
			$this->load->model('admin/User_model');	
			
    }
	
	// contollers are created below this line 
	public function addnew()
	{
		
		/*
			Mian admin index page check it if user login already move to home page of admin otherwise move to Login page 
		*/
				 $data['rights'] = $this->User_model->getRights();
			 	  $this->load->view('admin/header');
				  $this->load->view('admin/left');
				  $this->load->view('admin/addnewuser',$data);
				  $this->load->view('admin/footer');
	}
	public function savenewadmin(){
			$data['fullname'] = $this->input->post('fullname');
			$data['password'] = $this->input->post('password');
			$data['loginname'] = $this->input->post('loginname');
			$data['emailaddress'] = $this->input->post('emailaddress');
			$data['skypeid'] = $this->input->post('skypeid');
			$data['address'] = $this->input->post('address');
			$data['primerycontact'] = $this->input->post('primerycontact');
			$data['secondarycontact'] = $this->input->post('secondarycontact');
			$data['officecontact'] = $this->input->post('officecontact');
			$data['Rights'] = $this->input->post('checkboxright');
			$this->User_model->AddNewAdminUser($data);
			//$this->adminlist();
			 redirect('/admin_main/User/adminlist');
			
	}
	public function adminlist(){
				  $data['results'] = $this->User_model->Adminlist();
		  		  $this->load->view('admin/header');
				  $this->load->view('admin/left');
				  $this->load->view('admin/adminviewlist',$data);
				  $this->load->view('admin/footer');
	}
	public function Userdelete($userID){
			$this->User_model->deleteUser($userID);
			$this->adminlist();
	}
	public function UserEdit($userID){
		$data['user'] = $this->User_model->getEditData($userID);
		$data['rights'] = $this->User_model->getRights();
		$data['hiddenuserID'] = $userID;
		$this->load->view('admin/header');
	    $this->load->view('admin/left');
	    $this->load->view('admin/adminEdit',$data);
	    $this->load->view('admin/footer');
	}
	public function updateAdmin(){
			$data['hiddenUserID'] = $this->input->post('hiddenUserID');
			$data['fullname'] = $this->input->post('fullname');
			$data['password'] = $this->input->post('password');
			$data['loginname'] = $this->input->post('loginname');
			$data['emailaddress'] = $this->input->post('emailaddress');
			$data['skypeid'] = $this->input->post('skypeid');
			$data['address'] = $this->input->post('address');
			$data['primerycontact'] = $this->input->post('primerycontact');
			$data['secondarycontact'] = $this->input->post('secondarycontact');
			$data['officecontact'] = $this->input->post('officecontact');
			$data['Rights'] = $this->input->post('checkboxright');
			$this->User_model->updateEditUser($data);
			redirect('/admin_main/User/adminlist');
	}
        public function adminedit($userID){
                $data['user'] = $this->User_model->getEditData($userID);
                $data['hiddenuserID'] = $userID;
                $this->load->view('admin/header');
                $this->load->view('admin/left');
                $this->load->view('admin/adminUserEdit',$data);
                $this->load->view('admin/footer');
        }
        public function updateadminprofile(){
                        $data['hiddenUserID'] = $this->input->post('hiddenUserID');
			$data['fullname'] = $this->input->post('fullname');
			$data['password'] = $this->input->post('password');
			$data['loginname'] = $this->input->post('loginname');
			$data['emailaddress'] = $this->input->post('emailaddress');
			$data['skypeid'] = $this->input->post('skypeid');
			$data['address'] = $this->input->post('address');
			$data['primerycontact'] = $this->input->post('primerycontact');
			$data['secondarycontact'] = $this->input->post('secondarycontact');
			$data['officecontact'] = $this->input->post('officecontact');
			$this->User_model->updateEditUserprofile($data);
			redirect('/admin');
        }
        public function homepage(){
                    $data['text'] = $this->User_model->gethomedate();
                    $this->load->view('admin/header');
                    $this->load->view('admin/left');
                    $this->load->view('admin/addhomepagetext',$data);
                    $this->load->view('admin/footer');
        }
        public function updatehomepagetext(){
               $data['text'] = $this->input->post('description');
               $this->User_model->updatehomepagetext($data);
               $this->homepage();
        }
}
?>
