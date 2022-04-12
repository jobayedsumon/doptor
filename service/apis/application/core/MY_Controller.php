<?php

class My_Controller extends CI_Controller{

	public function __construct(){
		
		parent::__construct();
		
		$this->mobileApp_apiKey = $this->db->get("general_settings")->row()->mobileApp_apiKey;
		$this->output->set_header('Access-Control-Allow-Origin: *');
		$this->output->set_header('Access-Control-Allow-Headers: X-Requested-With, Content-Type, Accept, Origin, Authorization');
		$this->output->set_header('Access-Control-Allow-Methods: GET, POST');
		
		if($this->input->post("apiKey") != $this->mobileApp_apiKey){
			exit();
		}

	}

}