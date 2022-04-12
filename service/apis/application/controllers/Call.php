<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Call extends MY_Controller{

	// Call Api To Make A Video Call For ("patients","doctors","nursers")
	public function index(){
		$this->CallModel->call();
	}

	// View Call Status Api 
	public function view_call_status(){
		$this->CallModel->view_call_status();
	}

	// For To Check Incoming Call And Received The Call
	public function incoming_call(){
		$this->CallModel->incoming_call();
	}

	// For To Check Ended Call And Delete The Call
	public function ended_call(){
		$this->CallModel->ended_call();
	}

	// For To Accept Call
	public function accept_call(){
		$this->CallModel->accept_call();
	}

	// For To Decline Call
	public function decline_call(){
		$this->CallModel->decline_call();
	}

	// For To End Call
	public function end_call(){
		$this->CallModel->end_call();
	}

}
