<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MessagesModel extends CI_Model{

	public function messages(){
		$user_id = $this->input->post('user_id');
		$query = $this->db->query("select * from inbox_sellers where (receiver_id='$user_id' or sender_id='$user_id') AND NOT message_status='empty' order by time DESC");
		echo json_encode($query->result());
	}

	public function createInboxGroup(){
		$user_id = $this->input->post('user_id');
		$recipient_id = $this->input->post('recipient_id');
		if($this->input->post('offer_id')){
			$offer_id = $this->input->post('offer_id');
		}else{
			$offer_id = "0";
		}

		$inbox_group = $this->db->query("
		select * from inbox_sellers where 
		sender_id='$user_id' and receiver_id='$recipient_id' 
		or 
		sender_id='$recipient_id' and receiver_id='$user_id'
		");

		if($inbox_group->num_rows() == 0){
			$message_status = "empty";
			$message_group_id = mt_rand();
			$insert_inbox_group = $this->db->query("insert into inbox_sellers (message_group_id,offer_id,sender_id,receiver_id,message_status) values ('$message_group_id','$offer_id','$user_id','$recipient_id','$message_status')");
		}else{
			$message_group_id = $inbox_group->row()->message_group_id;
		}

		echo $message_group_id;
	}

	public function inboxGroupMessages(){
		$message_group_id = $this->input->post('message_group_id');
		$query = $this->db->query("select * from inbox_messages where message_group_id='$message_group_id'");
		echo json_encode($query->result());
	}

	public function removeJava($html){
		$attrs = array('onabort', 'onactivate', 'onafterprint', 'onafterupdate', 'onbeforeactivate', 'onbeforecopy', 'onbeforecut', 'onbeforedeactivate', 'onbeforeeditfocus', 'onbeforepaste', 'onbeforeprint', 'onbeforeunload', 'onbeforeupdate', 'onblur', 'onbounce', 'oncellchange', 'onchange', 'onclick', 'oncontextmenu', 'oncontrolselect', 'oncopy', 'oncut', 'ondataavaible', 'ondatasetchanged', 'ondatasetcomplete', 'ondblclick', 'ondeactivate', 'ondrag', 'ondragdrop', 'ondragend', 'ondragenter', 'ondragleave', 'ondragover', 'ondragstart', 'ondrop', 'onerror', 'onerrorupdate', 'onfilterupdate', 'onfinish', 'onfocus', 'onfocusin', 'onfocusout', 'onhelp', 'onkeydown', 'onkeypress', 'onkeyup', 'onlayoutcomplete', 'onload', 'onlosecapture', 'onmousedown', 'onmouseenter', 'onmouseleave', 'onmousemove', 'onmoveout', 'onmouseover', 'onmouseup', 'onmousewheel', 'onmove', 'onmoveend', 'onmovestart', 'onpaste', 'onpropertychange', 'onreadystatechange', 'onreset', 'onresize', 'onresizeend', 'onresizestart', 'onrowexit', 'onrowsdelete', 'onrowsinserted', 'onscroll', 'onselect', 'onselectionchange', 'onselectstart', 'onstart', 'onstop', 'onsubmit', 'onunload');
	  $dom = new DOMDocument;
	  // @$dom->loadHTML($html);
	  @$dom->loadHTML(mb_convert_encoding($html, 'HTML-ENTITIES', 'UTF-8'));
	  $nodes = $dom->getElementsByTagName('*');//just get all nodes, 
	  foreach($nodes as $node){
	    foreach ($attrs as $attr) { 
	    	if ($node->hasAttribute($attr)){  $node->removeAttribute($attr);  } 
	    }
	  }
		return strip_tags($dom->saveHTML(),"<div><img>");
	}

	public function insertMessage(){
		$message_group_id = $this->input->post('message_group_id');
		$message_sender = $this->input->post('sender_id');
		$message = $this->input->post('message');
		$file = $this->input->post('file');

		$inbox_group = $this->db->get_where("inbox_sellers",array("message_group_id" => $message_group_id))->row();
		$sender_id = $inbox_group->sender_id;
		$receiver_id = $inbox_group->receiver_id;
		if($message_sender == $sender_id){
			$receiver_seller_id = $receiver_id;
		}else{
			$receiver_seller_id = $sender_id;
		}

		$message_date = date("h:i: F d, Y");
		$dateAgo = date("Y-m-d H:i:s");
		$message_status = "unread";
		$time = time();

		$data = array(
			"message_sender" => $message_sender,
			"message_receiver" => $receiver_seller_id,
			"message_group_id" => $message_group_id,
			"message_desc" => $message,
			"message_file" => $file,
			"message_date" => $message_date,
			"dateAgo" => $dateAgo,
			"bell" => 'active',
			"message_status" => $message_status
		);
		$insert_message = $this->db->insert("inbox_messages",$data);
		$message_id = $this->db->insert_id();

		$data = array(
			"sender_id" => $message_sender,
			"receiver_id" => $receiver_seller_id,
			"message_status" => $message_status,
			"time"=>$time,
			"message_id" => $message_id,
			'popup'=>'1'
		);
		$update_inbox_sellers = $this->db->update("inbox_sellers",$data,array("message_group_id"=>$message_group_id));
		if($update_inbox_sellers){
			// New Spam Words Code Starts
			$n_date = date("F d, Y");
			$getWords = $this->db->get("spam_words")->result();
			foreach($getWords as $rowWords){
				$name = $rowWords->word;
				if(preg_match("/\b($name)\b/i", $message)){
					$data = array(
						"seller_id" => $message_sender,
						"content_id" => $message_group_id,
						"reason" => "message_spam",
						"date" => $n_date,
						"status" => "unread"
					);
					if($this->db->insert("admin_notifications",$data)){
						break;
					}
				}
			}
			// New Spam Words Code Ends

			$hide_seller_messages = $this->db->query("select * from hide_seller_messages where hider_id='$message_sender' AND hide_seller_id='$receiver_seller_id' or hider_id='$receiver_seller_id' AND hide_seller_id='$message_sender'");
			$count_hide_seller_messages = $hide_seller_messages->num_rows();
			if($count_hide_seller_messages >= 1){
				$delete_hide_seller_messages = $this->db->query("delete from hide_seller_messages where hider_id='$message_sender' and hide_seller_id='$receiver_seller_id' or hider_id='$receiver_seller_id' AND hide_seller_id='$message_sender'");
			}

			echo $message_id;
		}
	}

	public function uploadFile(){
		$file = $_FILES["file"]["name"];
		$file_tmp = $_FILES["file"]["tmp_name"];
		$allowed = array('jpeg','jpg','gif','png','tif','avi','mpeg','mpg','mov','rm','3gp','flv','mp4', 'zip','rar','mp3','wav','docx','csv','xls','pptx','pdf','txt');
		$file_extension = pathinfo($file, PATHINFO_EXTENSION);

		if(!in_array($file_extension,$allowed)){
			echo "Your File Format Extension Is Not Supported.";
		}else{
			if(move_uploaded_file($file_tmp, "../conversations/conversations_files/$file")){
				echo $file;
			}
		}
	}

	public function hideDeleteMessages(){
		$user_id = $this->input->post('user_id');
		$recipient_id = $this->input->post('recipient_id');
		$hide_seller_messages = $this->db->query("insert into hide_seller_messages (hider_id,hide_seller_id) values ('$user_id','$recipient_id')");
		echo json_encode($hide_seller_messages);
	}

}