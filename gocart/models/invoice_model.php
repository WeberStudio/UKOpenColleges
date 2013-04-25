<?php
Class Invoice_model extends CI_Model
{

    
    function get_all_categories()
    {
        
        $this->db->select('*');
        $this->db->order_by('name', 'ASC');
        $this->db->where('status', '1');
        $this->db->where('delete', '0');
        $result    = $this->db->get('categories');
        if(count($result)>0)
        {
            return $result->result_array();
        }
        else
        {
            return false;
        }    
    }
    
   
    function category_autocomplete($name, $limit)
    {
        return    $this->db->like('name', $name)->get('categories', $limit)->result();
    }
    
    function get_invoice($id)
    {
        return $this->db->get_where('invoices', array('invoice_id'=>$id))->row();
    }
    
        
    function save($invoice)
    {
        $this->db->insert('invoices', $invoice);
		return $this->db->insert_id();      
    }
    
    function delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('categories');
        
        //delete references to this category in the product to category table
        $this->db->where('category_id', $id);
        $this->db->delete('category_products');
    }
	
	
	
	function get_all_admin($admin_id = '')
	{
		$this->db->select('*');
		$this->db->where('access', 'Admin');
		$this->db->where('status', '1');
		
		if(!empty($admin_id))
		$this->db->where('id', $admin_id);
		
		$result	= $this->db->get('admin');
		$result	= $result->result_array();
		//print_r($this->db->last_query());
		//$this->show->pe($result);
		return $result;
	}
	
	
	function get_all_groups($group_id = '')
	{
		$this->db->select('*');		
		
		if(!empty($group_id))
		{
			$this->db->where('invoice_group_id', $group_id);
		}
		$result	= $this->db->get('invoice_groups');
		$result	= $result->result_array();
		//print_r($this->db->last_query());
		//$this->show->pe($result);
		return $result;
	}
		
}
?>
