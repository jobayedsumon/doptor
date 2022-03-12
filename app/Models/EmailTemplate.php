<?php

namespace Fickrr\Models;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\File;

class EmailTemplate extends Model
{
    
	
  public static function gettemplate()
  {

    $value=DB::table('email_template')->orderBy('et_id', 'desc')->get(); 
    return $value;
	
  }	
  
  public static function savetemplate($data)
  {
   
      DB::table('email_template')->insert($data);
     
 
    }
  
  public static function edittemplate($et_id){
    $value = DB::table('email_template')
      ->where('et_id', $et_id)
      ->first();
	return $value;
  }
  
  public static function checkTemplate($id)
  {
    $get=DB::table('email_template')->where('et_id', '=', $id)->where('et_status', '=', 1)->get();
	$value = $get->count(); 
    return $value;
	 
  }
  
  public static function viewTemplate($id)
  {

    $value=DB::table('email_template')->where('et_id', '=', $id)->where('et_status', '=', 1)->first(); 
    return $value;
	
  }	
  
  
  public static function updateTemplate($et_id,$data){
    DB::table('email_template')
      ->where('et_id', $et_id)
      ->update($data);
  }
  
  
	
	
	
  
  
  
  
}
