<?php
class social extends CI_Controller {
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
            $this->load->model("admin/social_model");
    }
// contollers are created below this line 
	public function socialmedialist()
	{
		
			$data['list'] = $this->social_model->getsocialmedia();
			$this->load->view('admin/header');
			$this->load->view('admin/left');
			$this->load->view('admin/socialmedialist',$data);
			$this->load->view('admin/footer');
	}
        public function addnewsocialmedia(){
                        $this->load->view('admin/header');
			$this->load->view('admin/left');
			$this->load->view('admin/addnewsocialmedia');
			$this->load->view('admin/footer');
        }
       public function savesocialmedia(){
                   $data['title'] = $this->input->post('title');
                     $data['url'] = $this->input->post('url');
                     //echo $_SERVER['SCRIPT_FILENAME']; exit;
                    $targetFolder = '/projects/English2/uploadfiles/scoialicone/';
			if (!empty($_FILES)) {
				foreach($_FILES as $file => $details){
				$tempFile = $details['tmp_name'];
				$targetPath = $_SERVER['DOCUMENT_ROOT'] . $targetFolder;
				$targetFile = rtrim($targetPath,'/') . '/' . $details['name'];
				$filename = $details['name'];
				$fileParts = pathinfo($details['name']);
				move_uploaded_file($tempFile,$targetFile);
				$data['icone'] = $filename;
				}
                                
			}
                        $this->social_model->savesocialmedia($data);
                        $this->socialmedialist();
       }
       public function editsocialmedia($id){
                        $data['getedit'] = $this->social_model->geteditdata($id);
                        $this->load->view('admin/header');
			$this->load->view('admin/left');
			$this->load->view('admin/socialmediaedit',$data);
			$this->load->view('admin/footer');  
       }
       public function deletesocialmedia($id){
          $this->social_model->deletesocialmedia($id); 
          $this->socialmedialist();
       }
       public function updatesocialmedia(){
                     $data['title'] = $this->input->post('title');
                     $data['url'] = $this->input->post('url');
                     $data['id'] = $this->input->post('hiddenid');
                     $targetFolder = '/projects/English2/uploadfiles/scoialicone/';
			if (!empty($_FILES)) {
				foreach($_FILES as $file => $details){
				$tempFile = $details['tmp_name'];
				$targetPath = $_SERVER['DOCUMENT_ROOT'] . $targetFolder;
				$targetFile = rtrim($targetPath,'/') . '/' . $details['name'];
				$filename = $details['name'];
				$fileParts = pathinfo($details['name']);
				move_uploaded_file($tempFile,$targetFile);
				$data['icone'] = $filename;
				}
                        }
                                
                  $this->social_model->updatesocialmedis($data);  
                  $this->socialmedialist();
                        
           
       }
}
?>
