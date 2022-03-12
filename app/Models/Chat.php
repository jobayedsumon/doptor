<?php

namespace Fickrr\Models;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\File;
use Fickrr\Models\Settings;
use Auth;
use Storage;

class Chat extends Model
{
    
	public static function getorderDetails($ord_id)
  {
     
     $value=DB::table('item_order')->join('items','items.item_id','item_order.item_id')->where('ord_id','=',$ord_id)->first();
	  return $value;
  }
  
  public static function getChatDetails($ord_id)
  {
  
     $value=DB::table('conversation')->join('users','users.id','conversation.conver_user_id')->where('conversation.conver_order_id','=',$ord_id)->orderBy('conversation.conver_id','desc')->get();
	  return $value;
  
  }
  
  public static function savemessageData($savedata)
  {
    
	DB::table('conversation')->insert($savedata);
    
  }
  
  public static function deleteChat($conver_id){
    
	
	
	DB::table('conversation')->where('conver_id', '=', $conver_id)->delete();	
	
	
  }
  
  public static function getgroupchatData()
  {

    $value=DB::table('conversation')->get()->groupBy('conver_order_id'); 
    return $value;
	
  }	
  
  
  /* message */
  
  public static function miniChat($user_id)
  {
  
     $get=DB::table('conversation')->join('users','users.id','conversation.conver_seller_id')->where('conversation.conver_seller_id','=',$user_id)->where('conversation.message_read_type','=','unread')->get();
	 $value = $get->count(); 
	  return $value;
  
  }
  
  public static function miniData($user_id)
  {
  
     $value=DB::table('conversation')->join('users','users.id','conversation.conver_user_id')->where('conversation.conver_seller_id','=',$user_id)->take(5)->orderBy('conversation.conver_id','desc')->get();
	 return $value;
  
  }
  
  public static function NChatData($last_user)
  {
  
     $value=DB::table('conversation')->join('users','users.id','conversation.conver_user_id')->where('conversation.conver_order_id','=',$last_user)->orderBy('conversation.conver_id','asc')->get();
	  return $value;
  
  }
  
  public static function getChatData($last_user)
  {
  
     $value=DB::table('conversation')->join('users','users.id','conversation.conver_user_id')->where('conversation.conver_order_id','=',$last_user)->orderBy('conversation.conver_id','asc')->get();
	  return $value;
  
  }
  
  
  public static function checkChat($conver_user_id,$conver_seller_id)
  {

    $get=DB::table('conversation')
             ->where(function($query) use ($conver_user_id,$conver_seller_id){
                 $query->where('conver_user_id', '=', $conver_user_id);
                 $query->where('conver_seller_id', '=', $conver_seller_id);
             })
             ->orWhere(function($query) use ($conver_user_id,$conver_seller_id){
                 $query->where('conver_user_id', '=', $conver_seller_id);
                 $query->where('conver_seller_id', '=', $conver_user_id);
             })
             ->get();
	$value = $get->count(); 
    return $value;
	
  }
  public static function viewChat($conver_user_id,$conver_seller_id)
  {

    $value = DB::table('conversation')
             ->where(function($query) use ($conver_user_id,$conver_seller_id){
                 $query->where('conver_user_id', '=', $conver_user_id);
                 $query->where('conver_seller_id', '=', $conver_seller_id);
             })
             ->orWhere(function($query) use ($conver_user_id,$conver_seller_id){
                 $query->where('conver_user_id', '=', $conver_seller_id);
                 $query->where('conver_seller_id', '=', $conver_user_id);
             })
			 ->orderBy('conversation.conver_id','desc')
             ->first();
	
    return $value;
	
  }
  
  
  public static function ConvData($last_user,$user_id)
  {
  
     $value=DB::table('conversation')
             ->where(function($query) use ($last_user,$user_id){
                 $query->where('conver_user_id', '=', $last_user);
                 $query->where('conver_seller_id', '=', $user_id);
             })
             ->orWhere(function($query) use ($last_user,$user_id){
                 
                 $query->where('conver_seller_id', '=', $last_user);
				 $query->where('conver_user_id', '=', $user_id);
             })
	 ->orderBy('conver_id','desc')->first();
	  return $value;
  
  }
  public static function ConvCount($last_user,$user_id)
  {
  
     $get=DB::table('conversation')
             ->where(function($query) use ($last_user,$user_id){
                 $query->where('conver_user_id', '=', $last_user);
                 $query->where('conver_seller_id', '=', $user_id);
             })
             ->orWhere(function($query) use ($last_user,$user_id){
                 
                 $query->where('conver_seller_id', '=', $last_user);
				 $query->where('conver_user_id', '=', $user_id);
             })
	     ->orderBy('conver_id','desc')
	     ->get();
	  $value = $get->count(); 
    return $value;
  
  }
  
  
  
  public static function readData($user_id,$record){
    
		
	DB::table('conversation')
      ->where('conver_seller_id', $user_id)
      ->update($record);
	
  }
  /* message */
  
  
  
}
