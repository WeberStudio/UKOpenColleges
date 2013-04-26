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
    
    {
    }
    
        
    {
    }
    
    {
        
    }
	
	
	{
		
		
	}
	
	
	{
		
		{
		}
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
