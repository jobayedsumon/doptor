<?php

namespace Fickrr\Models;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\File;

class Deposit extends Model
{
    
	
	
	
	/* deposit */
	
   public static function getdepositData()
  {

    $value=DB::table('deposit')->orderBy('dep_id', 'desc')->get(); 
    return $value;
	
  }
  
  public static function viewdepositData()
  {

    $value=DB::table('deposit')->where('deposit_status', '=', 1)->orderBy('deposit_price', 'asc')->get(); 
    return $value;
	
  }
      
  
  public static function insertDeposit($data){
   
      DB::table('deposit')->insert($data);
     
 
    }
  
  public static function deleteDeposit($deposit_id){
    
	
	DB::table('deposit')->where('dep_id', '=', $deposit_id)->delete();
	
  }
  
  
  
  public static function editDeposit($deposit_id){
    $value = DB::table('deposit')
      ->where('dep_id', '=', $deposit_id)
      ->first();
	return $value;
  }
  
  
  public static function updateDeposit($deposit_id, $data){
    DB::table('deposit')
      ->where('dep_id', '=', $deposit_id)
      ->update($data);
  }
  
    
  
  /* coupon */
  
  
  
	
	
	
	
	
  
  
  
  
}
