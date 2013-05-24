<?php
Class Forum_model extends CI_Model
{

	//this is the expiration for a non-remember session
	var $session_expire	= 7200;
	
	
	function __construct()
	{
			parent::__construct();
	}
	
	
	
	function get_forums($limit=0, $offset=0, $order_by='forum_title', $direction='ASC')
	{
		$this->db->order_by($order_by, $direction);
		if($limit>0)
		{
			$this->db->limit($limit, $offset);
		}

		$result	= $this->db->get('forums');
		return $result->result();
	}
	
	function count_tutors()
	{
		return $this->db->count_all_results('forums');
	}
	
	function get_forum($id)
	{
		$result	= $this->db->get_where('forums', array('forum_id'=>$id));
		return $result->row();
	}
	
	function save($data)
	{
		if($data['forum_id'])
		{
			$this->db->where('forum_id', $data['forum_id']);
			$this->db->update('oc_forums', $data);
			return $data['forum_id'];
		}
		else
		{
			$this->db->insert('oc_forums', $data);
			return $this->db->insert_id();
		}
	}
	
	
}