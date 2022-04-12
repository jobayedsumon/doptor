<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Database extends CI_Model{

	public function __construct(){
		parent::__construct();
		$this->load->model("S3");
	}

	function get_real_user_ip(){
	  //This is to check ip from shared internet network
	  if(!empty($_SERVER['HTTP_CLIENT_IP'])){
	    $ip = $_SERVER['HTTP_CLIENT_IP'];
	  }elseif(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
	    $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
	  }else{
	    $ip = $_SERVER['REMOTE_ADDR'];
	  }
	  return $ip;
	}

	function checkPlugin($plugin,$site=""){
		if($plugin=="videoPlugin" and $site=="site"){
			$videoPlugin = $this->db->get_where("plugins",array("folder"=>$plugin,"status"=>1))->num_rows();
			if($videoPlugin!=0){
				$row_general_settings = $this->db->get("general_settings")->row();   
				$opentok_api_key = $row_general_settings->opentok_api_key;
				$opentok_api_secret = $row_general_settings->opentok_api_secret;
				if(!empty($opentok_api_key) and !empty($opentok_api_secret)){
					return 1;
				}else{
					return 0;
				}
			}
		}else{
			return $this->db->get_where("plugins",array("folder"=>$plugin,"status"=>1))->num_rows();
		}
	}

	public function login(){
		$ip = $this->get_real_user_ip();
		$user_name = $this->input->post('user_name');
		$password = $this->input->post('password');
		$row_seller = $this->db->get_where("sellers",array("seller_user_name"=>$user_name))->row();
		@$hashed_password = $row_seller->seller_pass;
		@$seller_status = $row_seller->seller_status;
		$decrypt_password = password_verify($password, $hashed_password);

		if($decrypt_password == 0){
			echo "Opps! password or username is incorrect";
		}else{
			if($seller_status == "block-ban"){
				echo "You have been blocked by the Admin";
			}elseif($seller_status == "deactivated"){
				echo "You have deactivated your account";
			}else{
				$select_seller = $this->db->get_where("sellers",array("seller_user_name"=>$user_name,"seller_pass"=>$hashed_password));
				if($select_seller){
					$update_seller_status = $this->db->update("sellers",array("seller_status"=>'online',"seller_ip"=>$ip),array("seller_user_name"=>$user_name,"seller_pass"=>$hashed_password));
					echo json_encode($row_seller);
				}
			}
		}
	}

  public function register(){
  	$paymentGateway = $this->checkPlugin("paymentGateway","site");
  	$signup_email = $this->db->get("general_settings")->row()->signup_email;   

  	$ip = $this->get_real_user_ip();
		$error_array = array();
		$name = ucfirst(strtolower($this->input->post('name')));
		$user_name = $this->input->post('user_name');
		$email = $this->input->post('email');
		$pass = $this->input->post('pass');
		$con_pass = $this->input->post('con_pass');
		// This is just an example. In application this will come from Javascript (via an AJAX or something)
		$timezone = $this->input->post('timezone');
		$geoplugin = unserialize(file_get_contents('http://www.geoplugin.net/php.gp?ip='.$ip));
		$country = $geoplugin['geoplugin_countryName'];
		if(empty($country)){ 
			$country = ""; 
		}
		$regsiter_date = date("F d, Y");
		$date = date("F d, Y");

		$check_seller_username = $this->db->get_where("sellers",array("seller_user_name" => $user_name))->num_rows();
		$check_seller_email = $this->db->get_where("sellers",array("seller_email" => $email))->num_rows();
		if(preg_match('/[اأإء-ي]/ui', $user_name)){
		  array_push($error_array, "Foreign characters are not allowed in username, Please try another one.");
		}
		if($check_seller_username > 0 ){
		  array_push($error_array, "Opps! This username has already been taken. Please try another one");
		}
		if($check_seller_email > 0){
		  array_push($error_array, "Email has already been taken. Try logging in instead.");
		}
		if($pass != $con_pass){
	   	array_push($error_array, "Passwords don't match. Please try again.");
		}
	  
		if(empty($error_array)){
			$referral_code = mt_rand();
			if($signup_email == "yes"){
				$verification_code = mt_rand();
			}else{
				$verification_code = "ok";
			}
			$encrypted_password = password_hash($pass, PASSWORD_DEFAULT);
			$seller_activity = date("Y-m-d H:i:s");
			
			// Convert minutes to seconds and get timezone
			$timezone = timezone_name_from_abbr("", $timezone*60, false);
			
			$insert_seller = $this->db->insert("sellers",array("seller_name" => $name,"seller_user_name" => $user_name,"seller_email" => $email,"seller_pass" => $encrypted_password,"seller_country"=>$country,"seller_level" => 1,"seller_recent_delivery" => 'none',"seller_rating" => 100,"seller_offers" => 10,"seller_referral" => $referral_code,"seller_ip" => $ip,"seller_verification" => $verification_code,"seller_vacation" => 'off',"seller_register_date" => $regsiter_date,"seller_activity"=>$seller_activity,"seller_timezone"=>$timezone,"seller_status" => 'online'));
			$regsiter_seller_id = $this->db->insert_id();
			if($insert_seller){
				$insert_seller_account = $this->db->insert("seller_accounts",array("seller_id" => $regsiter_seller_id));
				if($paymentGateway == 1){
					$insert_seller_settings = $this->db->insert("seller_settings",array("seller_id" => $regsiter_seller_id));
				}
				if($insert_seller_account){
					$row_seller = $this->db->get_where("sellers",array("seller_id"=>$regsiter_seller_id))->row();
					echo json_encode($row_seller);
				}
			}
		}
		if(!empty($error_array)){
			echo json_encode($error_array);
		}
	}

	public function forgot(){
		// Load PHPMailer library
    $this->load->library('phpmailer_lib');
    // PHPMailer object
    $mail = $this->phpmailer_lib->load();
    //
		$row_smtp_settings = $this->db->get("smtp_settings")->row();   
		$enable_smtp = $row_smtp_settings->enable_smtp;
		$s_host = $row_smtp_settings->host;
		$s_port = $row_smtp_settings->port;
		$s_secure = $row_smtp_settings->secure;
		$s_username = $row_smtp_settings->username;
		$s_password = $row_smtp_settings->password;
		$row_general_settings = $this->db->get("general_settings")->row();   
		$site_url = $row_general_settings->site_url;
		$site_email_address = $row_general_settings->site_email_address;
		$site_logo = $row_general_settings->site_logo;
		$site_name = $row_general_settings->site_name;

		$email = $this->input->post('email');
		$select_seller_email = $this->db->get_where("sellers",array("seller_email" => $email));
		$count_seller_email = $select_seller_email->num_rows();
		if($count_seller_email == 0){
			echo "Hmm! We don\'t seem to have this email in our system.";
		}else{
			$row_seller_email = $select_seller_email->row();
			$seller_user_name = $row_seller_email->seller_user_name;
			$seller_pass = $row_seller_email->seller_pass;
			try{
			    if($enable_smtp == "yes"){
			      $mail->isSMTP();
			      $mail->Host = $s_host;
			      $mail->Port = $s_port;
			      $mail->SMTPAuth = true;
			      $mail->SMTPSecure = $s_secure;
			      $mail->Username = $s_username;
			      $mail->Password = $s_password;
			    }
				$mail->setFrom($site_email_address,$site_name);
				$mail->addAddress($email);
				$mail->addReplyTo($site_email_address,$site_name);
				$mail->isHTML(true);
				$mail->Subject = "$site_name: Password Reset";
				$mail->Body = <<<EOT
				<html>
				<head>
				<style>
				.container {
					background: rgb(238, 238, 238);
					padding: 80px;
				}
				.box {
					background: #fff;
					margin: 0px 0px 30px;
					padding: 8px 20px 20px 20px;
					border:1px solid #e6e6e6;
					box-shadow:0px 1px 5px rgba(0, 0, 0, 0.1);
				}
				h2{
					margin-top: 0px;
					margin-bottom: 0px;
				}
				.lead {
					margin-top: 10px;
					margin-bottom: 0px;
					font-size:16px;
				}
				.btn{
					background:green;
					margin-top:20px;
					color:white !important;
					text-decoration:none;
					padding:10px 16px;
					font-size:18px;
					border-radius:3px;
				}
				hr{
					margin-top:20px;
					margin-bottom:20px;
					border:1px solid #eee;
				}
			  @media only screen and (max-device-width: 690px) {
		      .container {
		        background: rgb(238, 238, 238);
		        width:100%;
		        padding:1px;
		      }
		      .btn{
						background:green;
						margin-top:15px;
						color:white !important;
						text-decoration:none;
						padding:10px;
						font-size:14px;
						border-radius:3px;
					}
					.lead {
						font-size:14px;
					}
		    }
				</style>
				</head>
				<body>
				<div class='container'>
				<div class='box'>
				<center>
				<img class='logo' src='$site_url/images/$site_logo' width='100' >
				<h2> Dear $seller_user_name </h2>
				<p class='lead'> Are You Ready To Change Your Password. </p>
				<br>
				<a href='$site_url/change_password?code=$seller_pass".""."&username=$seller_user_name' class='btn'>
				 Click Here To Change Your Password
				</a>
				<hr>
				<p class='lead'>
				If clicking the button above does not work, copy and paste the following url in a new browser window: $site_url/change_password?code=$seller_pass".""."&username=$seller_user_name
				</p>
				</center>
				</div>
				</div>
				</body>
				</html>
EOT;
	      $mail->send();
				echo "An email has been sent to your email address with instructions on how to change your password.";
			}catch(Exception $e){

			}
		}
	}

	public function data($table,$id=""){
		if(empty($id)){
			echo json_encode($this->db->get($table)->result());
		}else{
			if($table!=="search") {
				$field = $this->db->query("show columns from $table where extra like '%auto_increment%'")->row()->Field;
				$result = $this->db->where($field, $id)->get($table)->row();
				echo json_encode($result);
			}elseif($table==="search"){
				$this->search($id);
			}
		}
	}

	public function search($tableName){
		if($this->input->post('searchQuery')){
			$this->db->like('proposal_title',$this->input->post('searchQuery'));
		}
		if(!empty($this->input->post())){
			$where = $this->input->post();
			unset($where['apiKey']);
			unset($where["searchQuery"]);
			$this->db->where($where);
		}
		$data = $this->db->get($tableName)->result();
		echo json_encode($data);
	}


	public function watermarkImage($image,$data){
	 
	  $site_watermark = $this->db->get("general_settings")->row()->site_watermark;	  

	  $fileType = pathinfo($image,PATHINFO_EXTENSION);
	  if($fileType == "jpg" or $fileType == "jpeg" or $fileType == "png"){

	    $to_image = imagecreatefromstring(file_get_contents($data));
	    $stamp = imagecreatefromstring(file_get_contents("../images/$site_watermark"));
	    $spacing = 15;
	    $spacing_double = $spacing  * 2;

	    list($width,$height) = getimagesize($data);
	    list($stamp_width,$stamp_height) = getimagesize("../images/$site_watermark");

	    $offsetX = ($width  - ($stamp_width + $spacing)) / 2;
	    $offsetY = ($height - ($stamp_height + $spacing)) / 2;
	    
	    imagecopy($to_image, $stamp, $offsetX, $offsetY, 0, 0, $stamp_width, $stamp_height);

	    ob_start();
	    imagejpeg($to_image,null,100);
	    $image_contents = ob_get_clean();
	    imagedestroy($to_image);

	    $this->S3->uploadToS3("$image","",$image_contents);

	  }else{
	    $this->S3->uploadToS3("$image",$data);
	  }

	}

	public function deliver_order(){

		$data = $this->input->post();

		$row_general_settings = $this->db->get("general_settings")->row();
	    $order_auto_complete = $row_general_settings->order_auto_complete;

		$get_api_settings = $this->db->get("api_settings");
		$row_api_settings = $get_api_settings->row();
		$enable_s3 = $row_api_settings->enable_s3;

		$select_order = $this->db->get_where("orders",array("order_id" => $data['order_id']));
		$row_order = $select_order->row();
		$order_id = $row_order->order_id;
		$seller_id = $row_order->seller_id;
		$buyer_id = $row_order->buyer_id;
		$order_status = $row_order->order_status;

        if($order_status == "progress" or $order_status == "revision requested" or $order_status == "delivered"){

	        $d_message = $data['delivered_message'];

	        $d_file = $_FILES['delivered_file']['name'];
	        $d_file_tmp = $_FILES['delivered_file']['tmp_name'];

	        $allowed = array('jpeg','jpg','gif','png','tif','avi','mpeg','mpg','mov','rm','3gp','flv','mp4','zip','rar','mp3','wav','docx','csv','xls','xlsx','pptx','pdf','txt','psd','xd','txt');
	        $file_extension = pathinfo($d_file, PATHINFO_EXTENSION);
	        if(!in_array($file_extension,$allowed) & !empty($d_file)){
	          echo "File Extension Not Supported.";
	        }else{

	          if(!empty($d_file)){
	            
	            $d_file = pathinfo($d_file, PATHINFO_FILENAME);

	            if(isset($_POST['enable_watermark'])){
	              $watermark = 1;
	              $watermark_file = $d_file."_".time()."_watermark.$file_extension";
	              $d_file = $d_file."_".time().".$file_extension";
	              $this->watermarkImage("order_files/$watermark_file",$d_file_tmp);
	              $this->S3->uploadToS3("order_files/$d_file",$d_file_tmp);
	            }else{
	              $watermark = 0;
	              $watermark_file = "";
	              $d_file = $d_file."_".time().".$file_extension";
	              $this->S3->uploadToS3("order_files/$d_file",$d_file_tmp);
	            }
	          
	          }else{
	            $watermark = 0;
	            $watermark_file = "";
	          }

	          $last_update_date = date("h:m: F d Y");
	          
	          $update_messages = $this->db->update("order_conversations",array("status" => "message"),array("order_id" => $order_id,"status" => "delivered"));
	          
	          $n_date = date("F d, Y");

	          $insert_delivered_message = $this->db->insert("order_conversations",array("order_id" => $order_id,"sender_id" => $seller_id,"message" => $d_message,"watermark" => $watermark,"watermark_file" => $watermark_file,"file" => $d_file,"isS3"=>$enable_s3,"date" => $last_update_date,"status" => "delivered"));

	          if($insert_delivered_message){

	            $insert_notification = $this->db->insert("notifications",array("receiver_id" => $buyer_id,"sender_id" => $seller_id,"order_id" => $order_id,"reason" => "order_delivered","date" => $n_date,"status" => "unread"));

	            $date_time = date("M d, Y H:i:s");

	            $complete_time = date("M d, Y H:i:s",strtotime($date_time." + $order_auto_complete days"));

	            $update_order = $this->db->update("orders",array("order_status" => "delivered","complete_time" => $complete_time),array("order_id" => $order_id));

	            echo "Message Sent Succesfully.";

	          }
	        }

        }else{
          echo "An Error Occurred.";
        }

	}

	public function add_buyer_rating(){

		$data = $this->input->post();

        $order_id = $data['order_id'];
        $rating = $data['rating'];
        $review = $data['review'];

		$select_order = $this->db->get_where("orders",array("order_id" => $data['order_id']));
		$row_order = $select_order->row();
		$seller_id = $row_order->seller_id;
		$buyer_id = $row_order->buyer_id;
		$proposal_id = $row_order->proposal_id;

        $count_seller_buyer_reviews = $this->db->get("buyer_reviews",array("review_seller_id" => $seller_id))->num_rows();
        
        $date = date("M d Y");

        $insert_review = $this->db->insert("buyer_reviews", array("proposal_id" => $proposal_id, "order_id" => $order_id, "review_buyer_id" => $buyer_id, "buyer_rating" => $rating, "buyer_review" => $review, "review_seller_id" => $seller_id, "review_date" => $date));

        $last_update_date = date("F d, Y");

        $insert_notification = $this->db->insert("notifications", array("receiver_id" => $seller_id, "sender_id" => $buyer_id, "order_id" => $order_id, "reason" => "buyer_order_review", "date" => $last_update_date, "status" => "unread"));

        $ratings = array();

        $sel_proposal_reviews = $this->db->get_where("buyer_reviews", array("proposal_id" => $proposal_id));
        $sel_proposal_reviews = $sel_proposal_reviews->result();

        foreach($row_proposals_reviews as $sel_proposal_reviews){

            $proposal_buyer_rating = $row_proposals_reviews->buyer_rating;
            array_push($ratings, $proposal_buyer_rating);

        }

        array_push($ratings, $rating);
        $total = array_sum($ratings);
        $avg = $total / count($ratings);
        $updated_propoasl_rating = substr($avg, 0, 1);

        if ($rating == "5") {

            if ($order_seller_rating == "100") {

            } else {

                if ($count_seller_buyer_reviews == 0) {
                    $update_seller_rating = $this->db->query("update sellers set seller_rating=100 where seller_id='$seller_id'");
                } else {

                    $review_rating = $order_seller_rating + 7;
                    if ($review_rating > 100) {
                        $review_rating = 100;
                    }
                    $update_seller_rating = $this->db->query("update sellers set seller_rating=$review_rating where seller_id='$seller_id'");

                }

            }


        } elseif ($rating == "4") {

            if ($order_seller_rating == "100") {

            } else {

                $review_rating = $order_seller_rating + 2;
                if ($review_rating > 100) {
                    $review_rating = 100;
                }
                $update_seller_rating = $this->db->query("update sellers set seller_rating=$review_rating where seller_id='$seller_id'");

            }

        } elseif ($rating == "3") {

            $review_rating = $order_seller_rating - 3;
            if ($review_rating < 0) {
                $review_rating = 0;
            }
            $update_seller_rating = $this->db->query("update sellers set seller_rating=$review_rating where seller_id='$seller_id'");

        } elseif ($rating == "2") {

            $review_rating = $order_seller_rating - 5;
            if ($review_rating < 0) {
                $review_rating = 0;
            }
            $update_seller_rating = $this->db->query("update sellers set seller_rating=$review_rating where seller_id='$seller_id'");

        } elseif ($rating == "1") {

            $review_rating = $order_seller_rating - 7;
            if ($review_rating < 0) {
                $review_rating = 0;
            }
            $update_seller_rating = $this->db->query("update sellers set seller_rating=$review_rating where seller_id='$seller_id'");

        }

        $update_proposal_rating = $this->db->update("proposals", array("proposal_rating" => $updated_propoasl_rating), array("proposal_id" => $proposal_id));

        if ($update_proposal_rating) {

        	echo "Rating Added Succesfully.";

        }


	}

	public function add_seller_rating(){
		
		$data = $this->input->post();

        $order_id = $data['order_id'];
        $rating = $data['rating'];
        $review = $data['review'];

		$select_order = $this->db->get_where("orders",array("order_id" => $data['order_id']));
		$row_order = $select_order->row();
		$seller_id = $row_order->seller_id;
		$buyer_id = $row_order->buyer_id;

        $insert_review = $this->db->insert("seller_reviews", array("order_id" => $order_id, "review_seller_id" => $seller_id, "seller_rating" => $rating, "seller_review" => $review));

        $last_update_date = date("F d, Y");

        $insert_notification = $this->db->insert("notifications", array("receiver_id" => $buyer_id, "sender_id" => $seller_id, "order_id" => $order_id, "reason" => "seller_order_review", "date" => $last_update_date, "status" => "unread"));

        echo "Rating Added Succesfully.";
        
	}

	public function get_app_links(){


		$get_general_settings = $this->db->get("general_settings");
		$row_general_settings = $get_general_settings->row();
		$google_app_link = $row_general_settings->google_app_link;
		$apple_app_link = $row_general_settings->apple_app_link;

		$data = array("google_app_link"=>$google_app_link,"apple_app_link"=>$apple_app_link);

		echo json_encode($data);

	}

}