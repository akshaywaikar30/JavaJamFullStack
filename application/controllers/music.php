<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class music	 extends CI_Controller {

public function musicController(){
	$this->load->helper('url');
	 $this->load->view('templates/header');
	$this->load->model('musicModel');
			$data['performers']= $this->musicModel->getData();
	$this->load->view('musicview', $data);
	$this->load->view('templates/mfooter');
}
}