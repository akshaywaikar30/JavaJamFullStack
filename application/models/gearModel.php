<?php
		class gearModel extends CI_Model{
		public function getData()
		{
			$this->db->select('productsid,name,description,product_image_url,price');
			$this->db->from('products');
			

			$query = $this->db->get();

			return $query->result();	
			

		} 
		}
?>