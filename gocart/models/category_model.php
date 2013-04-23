<?php
Class Category_model extends CI_Model
{

	function get_all_categories()
	{
		
		$this->db->select('*');
		$this->db->order_by('name', 'ASC');
		$this->db->where('delete', '0');
		$this->db->where('publish_by_admin', '1');
		$result	= $this->db->get('categories');
		if(count($result)>0)
		{
			return $result->result_array();
		}
		else
		{
			return false;
		}	
	}
	
	function get_categories($parent = false, $data=array())
	{
		if ($parent !== false)
		{
			$this->db->where('parent_id', $parent);
			
		}
		
		$this->db->select('id');
		
		
		if(!empty($this->admin_access) && $this->admin_access!='Superadmin')
		{
			$this->db->where('admin_id', $this->admin_id);
		}
		//$this->db->where('publish_by', 'Admin');
		//$this->db->where('status', '1');
		//$this->db->where('delete', '0');
		
		if(empty($data))
		{
			$this->db->order_by('categories.sequence', 'ASC');
			$this->db->order_by('id', 'ASC');
		}
		else
		{
			if(!empty($data['order_by']))
			{
				//if we have an order_by then we must have a direction otherwise KABOOM
				$this->db->order_by($data['order_by'], $data['sort_order']);
			}	
		}
		
		
		//this will alphabetize them if there is no sequence
		
		$result	= $this->db->get('categories');
		
		$categories	= array();
		foreach($result->result() as $cat)
		{
			$categories[]	= $this->get_category($cat->id);
		}
		
		return $categories;
	}
	
	//this is for building a menu
	function get_categories_tierd($parent=0, $data=array())
	{
		$categories	= array();
		$result	= $this->get_categories($parent, $data);
		foreach ($result as $category)
		{
			$categories[$category->id]['category']	= $category;
			$categories[$category->id]['children']	= $this->get_categories_tierd($category->id);
		}
		return $categories;
	}
	
	function category_autocomplete($name, $limit)
	{
		return	$this->db->like('name', $name)->get('categories', $limit)->result();
	}
	
	function get_category($id)
	{
		return $this->db->get_where('categories', array('id'=>$id))->row();
	}
	
	function get_category_products_admin($id)
	{
		$this->db->order_by('sequence', 'ASC');
		$result	= $this->db->get_where('category_products', array('category_id'=>$id));
		$result	= $result->result();
		
		$contents	= array();
		foreach ($result as $product)
		{
			$result2	= $this->db->get_where('products', array('id'=>$product->product_id));
			$result2	= $result2->row();
			
			$contents[]	= $result2;	
		}
		
		return $contents;
	}
	
	function get_category_products($id, $limit, $offset)
	{
		$this->db->order_by('sequence', 'ASC');
		$result	= $this->db->get_where('category_products', array('category_id'=>$id), $limit, $offset);
		$result	= $result->result();
		
		$contents	= array();
		$count		= 1;
		foreach ($result as $product)
		{
			$result2	= $this->db->get_where('products', array('id'=>$product->product_id));
			$result2	= $result2->row();
			
			$contents[$count]	= $result2;
			$count++;
		}
		
		return $contents;
	}
	
	function organize_contents($id, $products)
	{
		//first clear out the contents of the category
		$this->db->where('category_id', $id);
		$this->db->delete('category_products');
		
		//now loop through the products we have and add them in
		$sequence = 0;
		foreach ($products as $product)
		{
			$this->db->insert('category_products', array('category_id'=>$id, 'product_id'=>$product, 'sequence'=>$sequence));
			$sequence++;
		}
	}
	
	function save($category)
	{
		if ($category['id'])
		{
			$this->db->where('id', $category['id']);
			$this->db->update('categories', $category);
			
			return $category['id'];
		}
		else
		{
			$this->db->insert('categories', $category);
			return $this->db->insert_id();
		}
	}
	
	function delete($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('categories');
		
		//delete references to this category in the product to category table
		$this->db->where('category_id', $id);
		$this->db->delete('category_products');
	}
	
	function trash($id)
	{
		$data = array('publish_by_admin' => '0');
		if(!empty($this->admin_access) && $this->admin_access == 'Superadmin')
		{
			$data = array('publish_by_super' => '0');
		}
		
		$this->db->where('id', $id);
		$this->db->update('categories', $data);
		return true;
	}
	
	
	
}