<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class cart extends CI_Controller {

public function cartController(){
	$this->load->helper('url');
	$this->load->view('templates/header');
	$this->load->view('cartview');
	$this->load->view('templates/footer');
}
}