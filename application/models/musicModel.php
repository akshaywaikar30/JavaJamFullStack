<?php
		class musicModel extends CI_Model{
		public function getData()
		{
			$this->db->select('musician.musician_image_url,perfomance.Description,perfomance.Month_Year,musician.name');
			$this->db->from('musician');
			$this->db->join('perfomance', 'musician.musicianid = perfomance.MusicianId');
			$this->db->order_by("perfomance.Month_Year","asc");

			$query = $this->db->get();

			return $query->result();	
			

		} 
		}
?>