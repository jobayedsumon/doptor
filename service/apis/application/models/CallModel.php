<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CallModel extends CI_Model{

	public function call(){
		// make a call do all database work
		$data = $this->input->post();
		$call_room = $this->db->where($data)->get("call_rooms");

		if ($call_room->num_rows() === 0) {
			$data["room_number"] = uniqid();
			$data["status"] = "pending";
			$insert_call_room = $this->db->insert("call_rooms", $data);
		} else {
			$call_room = $call_room->row();
			$data["room_number"] = $call_room->room_number;
			$data["status"] = "pending";
			if ($this->db->where("room_number",$call_room->room_number)->update("call_rooms", array("status" => "pending"))) {
			}
		}

		echo json_encode($data);
	}

	public function view_call_status(){
		$room_number = $this->input->post("room_number");
		$call_room = $this->db->where("room_number", $room_number)->get("call_rooms");
		if ($call_room->num_rows() !== 0) {
	   echo $call_room->row()->status;
		}
	}

	public function incoming_call(){
		$data = array(
		"receiver_id" => $this->input->post('receiver_id'),
		"receiver_type" => $this->input->post('receiver_type'),
		"status" => "pending"
		);

		$call_room = $this->db->from("call_rooms")->where($data)->get();
		if ($call_room->num_rows() === 0) {
			echo "failed";
		}else{
			$call_room =  $call_room->row();
			$data["sender_id"] = $call_room->sender_id;
			$data["sender_type"] = $call_room->sender_type;
			$data["room_number"] = $call_room->room_number;

			if ($this->db->where("room_number", $call_room->room_number)->update("call_rooms", array("status" => "received"))) {
				echo json_encode($data);
			}
		}
	}

	public function ended_call(){
		$data = array(
		"receiver_id" => $this->input->post('receiver_id'),
		"receiver_type" => $this->input->post('receiver_type'),
		"status" => "ended"
		);

		$call_room = $this->db->from("call_rooms")->where($data)->get();
		if ($call_room->num_rows() === 0) {
			echo "failed";
		}else{
			$call_room = $call_room->row();
			$data["sender_id"] = $call_room->sender_id;
			$data["sender_type"] = $call_room->sender_type;
			if ($this->db->where(array("status"=>"ended","room_number"=>$call_room->room_number))->delete("call_rooms")) {
				echo json_encode($data);
			}
		}
	}

	public function checkSuccess(){
		echo ($this->db->affected_rows() > 0) ? "success" : "failed";
	}

	public function accept_call(){
		// just by room_number
		$data = $this->input->post();
		if ($this->db->where($data)->update("call_rooms",array("status" => "accepted"))) {
			$this->checkSuccess();
		}
	}


	public function decline_call(){
		// just by room_number
		$data = $this->input->post();
		if ($this->db->where($data)->update("call_rooms",array("status" => "declined"))) {
			$this->checkSuccess();
		}
	}

	public function end_call(){
		// just by room_number
		$room_number = $this->input->post("room_number");
		$where = "room_number='$room_number' and (status='pending' OR status='received')";
		if ($this->db->where($where)->update("call_rooms", array("status" => "ended"))) {
			$this->checkSuccess();
		}
	}

}