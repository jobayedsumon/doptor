<?php

// Require the Composer autoloader.
require "../vendor/autoload.php";

use Aws\S3\S3Client;
use Aws\S3\Exception\S3Exception;

class S3 extends CI_Model{

	public function __construct(){
		parent::__construct();

		$get_api_settings = $this->db->get("api_settings");
		$row_api_settings = $get_api_settings->row();
		$this->enable_s3 = $row_api_settings->enable_s3;
		$this->s3_access_key = $row_api_settings->s3_access_key;
		$this->s3_access_sceret = $row_api_settings->s3_access_sceret;
		$this->s3_bucket = $row_api_settings->s3_bucket;
		$this->s3_region = $row_api_settings->s3_region;
		$this->s3_domain = $row_api_settings->s3_domain;

		$this->dir = "../";

		$this->config = array(
			"key" => $this->s3_access_key,
			"secret" => $this->s3_access_sceret,
			"bucket" => $this->s3_bucket,
			"region" => $this->s3_region
		);

		// Connect to AWS
		try {

			$this->s3 = S3Client::factory(
				array(
					'credentials' => array(
						'key' => $this->config["key"],
						'secret' => $this->config["secret"]
					),
					'version' => 'latest',
					'region'  => $this->config['region']
				)
			);

		}catch(Exception $error){
			return false;
		}

	}

	public function getMainFolderName($folder,$table){

		if($folder == "proposal_files"){ 
			$main_folder = "proposals"; 
		}elseif($folder == "request_files"){ 
			$main_folder = "requests"; 
		}elseif($folder == "conversations_files"){ 
			$main_folder = "conversations"; 
		}elseif($folder == "images" AND $table == "languages"){ 
			$main_folder = "languages";
		}elseif($folder == "article_images"){ 
			$main_folder = "article";
		}elseif($folder == "admin_images"){ 
			$main_folder = "admin";
		}else{
			$main_folder = "";
		}

		return $main_folder;

	}

	public function uploadToS3($KeyFile,$fileTmp,$fileContent="",$private=''){

		if($this->enable_s3 == 1 and (!empty($this->s3_access_key) and !empty($this->s3_access_sceret) and !empty($this->s3_bucket))) {

	      if(strpos($KeyFile,'order_files') !== false){
				$ACL = "private";
			}else{
				$ACL = "public-read";
			}

		   $object = array(
		    'Bucket' => $this->config["bucket"],
		    'Key' =>  $KeyFile,
		    'StorageClass' => 'STANDARD',
		    'ACL' => $ACL
			);

			if (empty($fileContent)) {
			 $object["SourceFile"] = $fileTmp;
			} else {
			 $object["Body"] = $fileContent;
			}

			// echo $enable_s3;
			try{
			  $this->s3->putObject($object);
			  return true;
			}catch(S3Exception $error) {
			  return false;
			}catch(Exception $error) {
			  return false;
			}

		}else{
			if(strpos($KeyFile, 'proposal_files') !== false){
				$folder = "proposals";
			}else{
				$folder = "admin_area";
			}

			$KeyFile = str_replace("languages_images","languages/images", $KeyFile);
			$sub_folder = explode("/",$KeyFile,2);
			$folder = $this->getMainFolderName($sub_folder[0],"");

			if(empty($fileContent)){
				move_uploaded_file($fileTmp,"$this->dir/$folder/$KeyFile");
			} else {
				file_put_contents("$this->dir/$folder/$KeyFile", $fileContent);
			}
			return true;

		}

	}

}