<?php
class Commission extends Admin_Controller {    

    function __construct()
    {        
        parent::__construct();

        remove_ssl();
		
        /*** Get User Info***/
       //$admin_info = $this->admin_session->userdata('admin'); 
		
        $user_info = $this->auth->admin_info();
        $this->admin_id = $user_info['id'];
        $this->admin_email = $user_info['email'];
        $this->admin_access = $user_info['access'];
		$this->first_name = $user_info['firstname'];
		$this->last_name = $user_info['lastname'];
		$this->image = $user_info['image'];		
		$this->load->helper('formatting_helper');		
        /*** Get User Info***/
		
		/*** Left Menu Selection ***/
		$this->session->set_userdata('active_module', 'commisions');
		/*** Left Menu Selection ***/
		
		$this->auth->check_access($this->admin_access, true);  
        
		if($this->admin_access=='Admin')
		{
			redirect($this->config->item('admin_folder'));
		}
		
		$this->load->model(array('Customer_model', 'Product_model', 'Product_model', 'Category_model'));
		$this->load->model('Commission_model');
		
    }
	

    function index()
    {
       		
		$data['commissions'] = $this->Commission_model->get_commissions($limit=0, $offset=0, $order_by='comm_level', $direction='ASC');
        $this->load->view($this->config->item('admin_folder').'/includes/header');
        $this->load->view($this->config->item('admin_folder').'/includes/leftbar');
        $this->load->view($this->config->item('admin_folder').'/commission_listing', $data);
        $this->load->view($this->config->item('admin_folder').'/includes/inner_footer');

    }
	
	function form($id = false)
	{
		$this->load->helper('form');
		$this->load->library('form_validation');
		$this->form_validation->set_error_delimiters('<div class="error">', '</div>');
		
		$data['id'] 				= $id;
		$data['comm_level_id'] 		= '';
		$data['comm_level'] 		= '';
		$data['comm_rate']			= '';
		$data['comm_rate_mode']		= '';
		$data['comm_active']		= '';
		
		
				
		if($id)
		{
			
			$commission				= $this->Commission_model->get_commission($id);
			//print_r($message);exit;
			
			if(!$commission)
			{
				//forum does not exist
				$this->session->set_flashdata('error', lang('error_forum_not_found'));
				redirect($this->config->item('admin_folder').'/commission/commission_form/'.$topic_id);
			}
			
			
			//set values to db values
			$data['id']					= $commission->comm_id;
			$data['comm_level_id']		= $commission->comm_level_id;			
			$data['comm_level']			= $commission->comm_level;
			$data['comm_rate_mode']		= $commission->comm_rate_mode;
			$data['comm_rate']			= $commission->comm_rate;
				
		}
		//echo '--'.$message_mode;exit;
		
		
		
		$this->form_validation->set_rules('comm_rate', 'Commission Rate', 'required');
		
		
		if($this->form_validation->run() == false)
		{
				
			$this->load->view($this->config->item('admin_folder').'/includes/header');
			$this->load->view($this->config->item('admin_folder').'/includes/leftbar');
			$this->load->view($this->config->item('admin_folder').'/commission_form', $data);
			$this->load->view($this->config->item('admin_folder').'/includes/inner_footer');
		}
		else
		{
			$save['comm_id']			= $data['id'];
			$save['comm_level_id']		= $this->input->post('comm_level_id');
			$save['comm_level'] 		= $this->input->post('comm_level');
			$save['comm_rate_mode'] 	= $this->input->post('comm_rate_mode');
			$save['comm_rate']			= $this->input->post('comm_rate');
			$save['comm_active']		= 'Yes';	
			
			//save the forum
			$commission	= $this->Commission_model->save($save);
			$this->session->set_flashdata('message', lang('message_saved_forum'));
			
			//go back to the forum list
			redirect($this->config->item('admin_folder').'/commission/');
		}
	}
	
	function ajax_commission_levels()
	{
		//echo $_POST['level_value'];
		if($_POST['level_value'] == 'course_provider')
		{
			$admins		= $this->auth->get_admin_list();
		
			echo '<select data-placeholder="Choose Multiple Categories" class="chzn-select span12" name="comm_level_id"  tabindex="5"><option>Select Option</option>';
			foreach($admins as $admin){
		
			?>	
				<option value="<?=$admin->id?>"><?=$admin->firstname.' '.$admin->lastname?></option>
			<?	
			
			}
			echo  '</select>';		
		}
		else if($_POST['level_value'] == 'cat_level')
		{
			$categories	= $this->Category_model->get_all_categories();
			
			echo '<select data-placeholder="Choose Multiple Categories" class="chzn-select span12" name="comm_level_id"  tabindex="5"><option>Select Option</option>';
			foreach($categories as $categorie){
		
			?>	
				<option value="<?=$categorie['id']?>"><?=$categorie['name']?></option>
			<?	
			
			}
			echo  '</select>';		
		}		
		else if($_POST['level_value'] == 'course_level')
		{
			$products	= $this->Product_model->get_products();
			echo '<select data-placeholder="Choose Multiple Categories" class="chzn-select span12" name="comm_level_id"  tabindex="5"><option>Select Option</option>';
			foreach($products as $product){
		
			?>	
				<option value="<?=$product->id?>"><?=$product->name?></option>
			<?	
			
			}
			echo  '</select>';	
		}
		else
		{
			echo '<select data-placeholder="Choose Multiple Categories" class="chzn-select span12" name="comm_level_id"  tabindex="5">
			<option>Select Option</option>
			</select>';
		
		}
	}
	
	function delete($id)
	{			
		$this->Commission_model->delete($id);
		//go back to the commission list
		redirect($this->config->item('admin_folder').'/commission/');
	}
}
?>