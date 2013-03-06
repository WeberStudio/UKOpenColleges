<?php
class sendemail extends CI_Controller {
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
            $this->load->model("admin/sendemail_model");
    }
// contollers are created below this line 

       public function sendnewsletteremail(){
            $data['emaillist'] = $this->sendemail_model->getemiallistnewsletter();
            $this->load->view('admin/header');
            $this->load->view('admin/left');
            $this->load->view('admin/sendnewletter', $data);
            $this->load->view('admin/footer');
       } 
       public function sendoffrletteremail(){
            $data['emaillist'] = $this->sendemail_model->getemiallistofferletter();
            $this->load->view('admin/header');
            $this->load->view('admin/left');
            $this->load->view('admin/sendofferletter', $data);
            $this->load->view('admin/footer');
       }
       public function sendnewsletter(){
        $emailaddress = $_POST['subscribe'];
        $gettemplate = $this->sendemail_model->getemailtemplate('1');
        foreach ($emailaddress as $email){
            $this->email->clear();
            $this->email->to($email);
            $this->email->from('your@example.com');
            $this->email->subject($gettemplate->title);
            $this->email->message($gettemplate->description);
            $this->email->send();  
        } 
       }
       public function sendofferletter(){
        $emailaddress = $_POST['subscribe'];
        $gettemplate = $this->sendemail_model->getemailtemplate('1');
        foreach ($emailaddress as $email){
            $this->email->clear();
            $this->email->to($email);
            $this->email->from('your@example.com');
            $this->email->subject($gettemplate->title);
            $this->email->message($gettemplate->description);
            $this->email->send();  
        } 
       }
}
?>
