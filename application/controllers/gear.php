<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class gear extends CI_Controller {

public function gearController(){
   $this->load->helper('url');
	 $this->load->view('templates/gheader');
	
	$this->load->model('gearModel');
	$data['products']= $this->gearModel->getData();
	$this->load->view('gearview', $data);
	 $this->load->view('templates/gfooter');
	}

public function cartController(){
   $this->load->helper('url');
	 $this->load->view('templates/header');
	 $this->load->view('cartview');
	 $this->load->view('templates/footer');
}
public function orderController(){
   $this->load->helper('url');
	 $this->load->view('templates/header');
	 $this->load->view('orderview');
	 $this->load->view('templates/ofooter');
}
      //function checks for validation for the placeyourorder page
      public function checkValidationErrors(){

         $this->load->library('form_validation');
         
         //Validation rule for name
         $this->form_validation->set_rules('name2', 'Name',  'required|min_length[5]|max_length[100]');
         //Validation rule for email
         $this->form_validation->set_rules('email2', 'Email',  'required|valid_email');
         //Validation rule for Address
         $this->form_validation->set_rules('address2', 'Address',  'required|min_length[5]|max_length[150]'); 
         //Validation rule for city
         $this->form_validation->set_rules('city2', 'City',  'required|min_length[5]|max_length[50]');
         //Validation rule for State
         $this->form_validation->set_rules('state2', 'State',  'required|min_length[5]|max_length[15]');
         //Validation rule for Zip
         $this->form_validation->set_rules('zip2', 'Zip', 'required|numeric|exact_length[5]');
         //Validation rule for Credit Card
         $this->form_validation->set_rules('credit2', 'Credit Card Number',  'required|numeric|min_length[14]|max_length[16]');
         //Validation rule for Month
         $this->form_validation->set_rules('month2', 'Month', 'required|numeric|min_length[1]|max_length[2]');
         //Validation rule for Year
         $this->form_validation->set_rules('year2', 'Year', 'required|numeric|exact_length[4]');

         if ($this->form_validation->run() == FALSE){
            $this->load->helper('url');
            $this->load->view('templates/header');
            $this->load->view('orderview');
            $this->load->view('templates/ofooter');
         }else{
               $this->load->model('orderModel');
               $this->orderModel->insertToDbOrder();
               session_unset();
               session_destroy();
               $this->load->helper('url');
               $this->load->view('templates/header');
               $this->load->view('orderview');
               $this->load->view('templates/ofooter');
         }//end of if

      }
}