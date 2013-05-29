<?php
Class Commission_model extends CI_Model
{

	//this is the expiration for a non-remember session
	var $session_expire	= 7200;
	
	
	function __construct()
	{
			parent::__construct();
	}
	
	function get_commissions($limit=0, $offset=0, $order_by='comm_id', $direction='ASC')
	{
		$this->db->order_by($order_by, $direction);
		if($limit>0)
		{
			$this->db->limit($limit, $offset);
		}

		$result	= $this->db->get('oc_commission');
		return $result->result();
	}
	
	function count_message()
	{
		return $this->db->count_all_results('topics');
	}
	
	function get_commission($id)
	{
		$result	= $this->db->get_where('oc_commission', array('comm_id'=>$id));
		return $result->row();
	}
	
		
	function save($data)
	{
			
			
		if($data['comm_level_id'] == 'universal')
		{
			$this->db->where('comm_level', $data['comm_level']);
			$this->db->update('oc_commission', array('comm_active' => 'No'));
		}
		else
		{
			$this->db->where('comm_level', $data['comm_level']);
			$this->db->where('comm_level_id', $data['comm_level_id']);
			$this->db->update('oc_commission', array('comm_active' => 'No'));
		}
				
		if($data['comm_id'])
		{
			$this->db->where('comm_id', $data['comm_id']);
			$this->db->update('oc_commission', $data);
			return $data['comm_id'];
		}
		else
		{
			$this->db->insert('oc_commission', $data);
			return $this->db->insert_id();
		}
		
		
	}
	
	function delete($id)
	{			
		$this->db->delete('oc_commission', array('comm_id' => $id));
		return true;	
	}
	
}