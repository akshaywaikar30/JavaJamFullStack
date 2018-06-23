<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class jobs extends CI_Controller {
	public function jobsController(){
		$this->load->helper('url');
	 	$this->load->view('templates/header');
		$this->load->view('jobsview');
		$this->load->view('templates/footer');

}
public function form_validation(){
	$this->load->library('form_validation');
	$this->form_validation->set_rules("name","Name",'required');
	$this->form_validation->set_rules("email","E-mail",'required|valid_email');
	$this->form_validation->set_rules("experience","Experience",'required');

	if ($this->form_validation->run()) 
	{
		# true
		$this->load->model("jobsModel");
		$data=array( 
			"name" =>$this->input->post("name"),
			"email" =>$this->input->post("email"),
			"experience" =>$this->input->post("experience")
		 );

		$this->jobsModel->insert_data($data);
		redirect("/jobs/inserted");
	}
	else{
		$this->jobsController();
	}
}
public function inserted(){
	$this->jobsController();
}
}

?>