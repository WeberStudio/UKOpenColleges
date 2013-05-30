<?php
Class Tutor_model extends CI_Model
{

	//this is the expiration for a non-remember session
	var $session_expire	= 7200;
	
	
	function __construct()
	{
			parent::__construct();
	}
	
	/********************************************************************

	********************************************************************/
	
	function get_tutors($limit=0, $offset=0, $order_by='firstname', $direction='ASC')
	{
		$this->db->order_by($order_by, $direction);
		if($limit>0)
		{
			$this->db->limit($limit, $offset);
		}

		$result	= $this->db->get('tutors');
		//echo $this->db->last_query(); exit;
		return $result->result();
	}
	
	function count_tutors()
	{
		return $this->db->count_all_results('tutors');
	}
	
	function get_tutor($id)
	{
		$result	= $this->db->get_where('tutors', array('tutor_id'=>$id));
		return $result->row();
	}
	
	function get_subscribers()
	{
		$this->db->where('email_subscribe','1');
		$res = $this->db->get('customers');
		return $res->result_array();
	}
	
	function get_address_list($id)
	{
		$addresses = $this->db->where('customer_id', $id)->get('customers_address_bank')->result_array();
		// unserialize the field data
		if($addresses)
		{
			foreach($addresses as &$add)
			{
				$add['field_data'] = unserialize($add['field_data']);
			}
		}
		
		return $addresses;
	}
	
	function get_address($address_id)
	{
		$address= $this->db->where('id', $address_id)->get('customers_address_bank')->row_array();
		if($address)
		{
			$address_info			= unserialize($address['field_data']);
			$address['field_data']	= $address_info;
			$address				= array_merge($address, $address_info);
		}
		return $address;
	}
	
	function save_address($data)
	{
		// prepare fields for db insertion
		$data['field_data'] = serialize($data['field_data']);
		// update or insert
		if(!empty($data['id']))
		{
			$this->db->where('id', $data['id']);
			$this->db->update('customers_address_bank', $data);
			return $data['id'];
		} else {
			$this->db->insert('customers_address_bank', $data);
			return $this->db->insert_id();
		}
	}
	
	function delete_address($id, $customer_id)
	{
		$this->db->where(array('id'=>$id, 'customer_id'=>$customer_id))->delete('customers_address_bank');
		return $id;
	}
	
	function save($tutor)
	{
		if ($tutor['tutor_id'])
		{
			$this->db->where('tutor_id', $tutor['tutor_id']);
			$this->db->update('oc_tutors', $tutor);
			return $tutor['tutor_id'];
		}
		else
		{
			$this->db->insert('oc_tutors', $tutor);
			return $this->db->insert_id();
		}
	}
	
	function deactivate($id)
	{
		$customer	= array('id'=>$id, 'active'=>0);
		$this->save_customer($customer);
	}
	
	function delete($id)
	{		
		//this deletes the tutor record
		$this->db->where('tutor_id', $id);
		$this->db->delete('oc_tutors');
		return true;
	}
	
	function check_email($str, $id=false)
	{
		$this->db->select('email');
		$this->db->from('customers');
		$this->db->where('email', $str);
		if ($id)
		{
			$this->db->where('id !=', $id);
		}
		$count = $this->db->count_all_results();
		
		if ($count > 0)
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	
	/*
	these functions handle logging in and out
	*/
	function logout()
	{
		$this->session->unset_userdata('customer');
		$this->go_cart->destroy(false);
		//$this->session->sess_destroy();
	}
	
	function login($email, $password, $remember=false)
	{
		$this->db->select('*');
		$this->db->where('email', $email);
		$this->db->where('active', 1);
		$this->db->where('password', sha1($password));
		$this->db->limit(1);
		$result = $this->db->get('customers');
		$customer	= $result->row_array();
		
		if ($customer)
		{
			
			// Retrieve customer addresses
			$this->db->where(array('customer_id'=>$customer['id'], 'id'=>$customer['default_billing_address']));
			$address = $this->db->get('customers_address_bank')->row_array();
			if($address)
			{
				$fields = unserialize($address['field_data']);
				$customer['bill_address'] = $fields;
				$customer['bill_address']['id'] = $address['id']; // save the addres id for future reference
			}
			
			$this->db->where(array('customer_id'=>$customer['id'], 'id'=>$customer['default_shipping_address']));
			$address = $this->db->get('customers_address_bank')->row_array();
			if($address)
			{
				$fields = unserialize($address['field_data']);
				$customer['ship_address'] = $fields;
				$customer['ship_address']['id'] = $address['id'];
			} else {
				 $customer['ship_to_bill_address'] = 'true';
			}
			
			
			// Set up any group discount 
			if($customer['group_id']!=0) 
			{
				$group = $this->get_group($customer['group_id']);
				if($group) // group might not exist
				{
					if($group->discount_type == "fixed")
					{
						$customer['group_discount_formula'] = "- ". $group->discount; 
					}
					else
					{
						$percent	= (100-(float)$group->discount)/100;
						$customer['group_discount_formula'] = '* ('.$percent.')';
					}
				}
			}
			
			if(!$remember)
			{
				$customer['expire'] = time()+$this->session_expire;
			}
			else
			{
				$customer['expire'] = false;
			}
			
			// put our customer in the cart
			$this->go_cart->save_customer($customer);

		
			return true;
		}
		else
		{
			return false;
		}
	}
	
	function is_logged_in($redirect = false, $default_redirect = 'secure/login/')
	{
		
		//$redirect allows us to choose where a customer will get redirected to after they login
		//$default_redirect points is to the login page, if you do not want this, you can set it to false and then redirect wherever you wish.
		
		$customer = $this->go_cart->customer();
		if (!isset($customer['id']))
		{
			//this tells gocart where to go once logged in
			if ($redirect)
			{
				$this->session->set_flashdata('redirect', $redirect);
			}
			
			if ($default_redirect)
			{	
				redirect($default_redirect);
			}
			
			return false;
		}
		else
		{
		
			//check if the session is expired if not reset the timer
			if($customer['expire'] && $customer['expire'] < time())
			{

				$this->logout();
				if($redirect)
				{
					$this->session->set_flashdata('redirect', $redirect);
				}

				if($default_redirect)
				{
					redirect('secure/login');
				}

				return false;
			}
			else
			{

				//update the session expiration to last more time if they are not remembered
				if($customer['expire'])
				{
					$customer['expire'] = time()+$this->session_expire;
					$this->go_cart->save_customer($customer);
				}

			}

			return true;
		}
	}
	
	function reset_password($email)
	{
		$this->load->library('encrypt');
		$customer = $this->get_customer_by_email($email);
		if ($customer)
		{
			$this->load->helper('string');
			$this->load->library('email');
			
			$new_password		= random_string('alnum', 8);
			$customer['password']	= sha1($new_password);
			$this->save($customer);
			
			$this->email->from($this->config->item('email'), $this->config->item('site_name'));
			$this->email->to($email);
			$this->email->subject($this->config->item('site_name').': Password Reset');
			$this->email->message('Your password has been reset to <strong>'. $new_password .'</strong>.');
			$this->email->send();
			
			return true;
		}
		else
		{
			return false;
		}
	}
	
	function get_customer_by_email($email)
	{
		$result	= $this->db->get_where('customers', array('email'=>$email));
		return $result->row_array();
	}
	
	
	/******************************************/
	//Add Tutor Degree Details
	
	function save_tutor_attributes($table_name, $data)
	{		
					
			$this->db->insert($table_name, $data);
			//$this->db->insert_id();	
			return  true;	
	}
	
	
	/******************************************/
	//Get Tutor Degree Details
	
	function get_tutor_attributes($table_name, $id)
	{		
		$result	= $this->db->get_where($table_name, array('tutor_id'=>$id));
		return $result->result();
	}
	
	
	/******************************************/
	//Delete Tutor Degree Details
	function delete_tutor_attributes($table_name, $tutor_id)
	{
			//echo $table_name;
			$this->db->where('tutor_id', $tutor_id);
			$this->db->delete($table_name);
			//echo $this->db->last_query();
			return true ;
	}

}