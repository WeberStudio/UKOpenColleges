<?php
Class Invoice_model extends CI_Model
{
        function get_all_template()
        {
                     $this->db->from('invoice_templates');
                     $this->db->order_by("invoice_template_id", "asc");
                    $query = $this->db->get();
                    return $query->result();
            
        }
   
    function save($template)
    {
        $this->db->insert('invoice_templates', $template);
        return $this->db->insert_id();   
        
    }
    function get_template($id)
    {
      return $this->db->get_where('invoice_templates', array('invoice_template_id'=>$id))->row();
    }
    function update_template($id,$data) 
    {
        $this->db->where('invoice_template_id', $id);
        $query2    =$this->db->update( 'invoice_templates', $data );
                
    }
     function invoice_save($data)
    {
        $this->db->insert('invoices', $data);
        return $this->db->insert_id();   
        
    }
      function get_all_invoices()
        {
        $this->db->from('invoices');
        $this->db->order_by("invoice_id", "asc");
        $query = $this->db->get();
        return $query->result();
            
        }
      function update_invoice($id,$data) 
      {
        $this->db->where('invoice_id', $id);
        $query2    =$this->db->update( 'invoices', $data );
                
      }
    
}

