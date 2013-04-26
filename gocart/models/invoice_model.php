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
		
		
	function insert_invoice_items($data)
	{
			
		$this->db->insert('invoice_items', $data);
		return $this->db->insert_id();  
	}	
	
	function insert_invoice_items_totals($data)
	{
		
		$this->db->insert('invoice_item_amounts', $data);
		return $this->db->insert_id();
	}
	
	function get_invoice_items_by_invoice_id($invoice_id)
	{
		$invoice_items = $this->db->query("SELECT * FROM oc_invoice_items it LEFT JOIN oc_invoice_item_amounts iia ON it.item_id = iia.item_id WHERE it.invoice_id = ".$invoice_id);
		$result 	   = $invoice_items->result_array($invoice_items);
		return $result;
	}	
	
	function delete_all_items($invoice_id)
	{
	
		$this->db->query("DELETE FROM oc_invoice_item_amounts  WHERE EXISTS (SELECT item_id FROM oc_invoice_items  WHERE oc_invoice_items.invoice_id =".$invoice_id." AND oc_invoice_items.item_id = oc_invoice_item_amounts.item_id)");
		$this->db->query("DELETE FROM  oc_invoice_items  WHERE invoice_id =".$invoice_id);
		
		return true;
		
	}
}
?>
