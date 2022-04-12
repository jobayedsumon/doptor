<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Messages extends MY_Controller{
	// api to get the specfic patient/doctor/nurse chat messages "inbox_groups"
	public function index(){
		if(!empty($this->input->post())){
			$this->MessagesModel->messages();
		}else{
			echo "invalid"; 
		}
	}

	// api to create the "inbox_group"
	public function createInboxGroup(){
		$this->MessagesModel->createInboxGroup();
	}

	// api to get the specfic "inbox_group" messages
	public function inboxGroupMessages(){
		$this->MessagesModel->inboxGroupMessages();
	}

	// api to upload inbox message file
	public function uploadFile(){
		if(isset($_FILES["file"]["name"])){
			$this->MessagesModel->uploadFile();
		}else{
			echo "invalid"; 
		}
	}

	// api to insert inbox message
	public function insertMessage(){
		$this->MessagesModel->insertMessage();
	}

	// api to hide/delete the specfic user inbox messages
	public function hideDeleteMessages(){
		$this->MessagesModel->hideDeleteMessages();
	}
}
