<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Apis extends MY_Controller{
	
	// public function __construct(){
	// 	parent::__construct();
	// 	$this->mobileApp_apiKey = $this->db->get("general_settings")->row()->mobileApp_apiKey;
	// }

	// api to login Validate/Check login credential of the ("admin","doctor","pateint","nurse") 
	public function login(){
		$this->Db->login();
	}

	// api to register
	public function register(){
		if(empty($this->input->post())){
			echo "invalid";
		}else{
			$this->Db->register();
		}
	}

	// api to forgot password
	public function forgot(){
		if(empty($this->input->post())){
			echo "invalid";
		}else{
			$this->Db->forgot();
		}
	}

	// Get All Tables Data, Get All Tables Single/Row Data
	public function data($table,$id=""){
		$this->Db->data($table,$id);
	}

	/// Deliver Seller Order
	public function deliver_order(){
		// echo "power";
		// echo $mobileApp_apiKey;
		// echo $this->mobileApp_apiKey;
		$this->Db->deliver_order();
	}

	public function add_buyer_rating(){
		$this->Db->add_buyer_rating();
	}

	public function add_seller_rating(){
		$this->Db->add_seller_rating();
	}

	public function get_app_links(){
		$this->Db->get_app_links();
	}

}