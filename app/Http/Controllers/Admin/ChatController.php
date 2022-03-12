<?php

namespace Fickrr\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Fickrr\Http\Controllers\Controller;
use Session;
use Fickrr\Models\Blog;
use Fickrr\Models\Category;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;
use Fickrr\Models\Settings;
use Fickrr\Models\Members;
use Fickrr\Models\Chat;
use Auth;
use Mail;
use URL;
use Image;
use Storage;
use Illuminate\Support\Str;

class ChatController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
		
    }
	
	
	public function view_messages($slug)
	{
	   $user_id = Auth::user()->id;
	   $login_user = Members::editprofileData($user_id);
	   $other_user['details'] = Members::otherUserData($user_id);
	   $last_data = Members::otherUserSingle($user_id);
	   $last_user = $last_data->id;
	   $chck = Chat::ConvCount($last_user,$user_id);
	   if($chck != 0)
	   {
	   $convert_data = Chat::ConvData($last_user,$user_id);
	   $chat['message'] = Chat::getChatData($convert_data->conver_order_id);
	   }
	   else
	   {
	   $chat = 0;
	   }
	   $slug = $last_data->username;
	   return view('admin.messages', ['login_user' => $login_user, 'other_user' => $other_user, 'last_user' => $last_user, 'chat' => $chat, 'slug' => $slug, 'chck' => $chck]);
	  
	}
	
	
	public function view_message_users($slug)
	{
	   $user_details = Members::editUser($slug);
	   $other_user['details'] = Members::otherUserData($user_details->id);
	   return view('admin.conversation', ['other_user' => $other_user, 'user_details' => $user_details]);
	   
	}
	
	
	
	public function view_message_conversation($slug,$logslug)
	{
	   
	   $last_data = Members::editUser($slug);
	   $log_data = Members::editUser($logslug);
	   $user_id = $log_data->id;
	   if($last_data->user_message_permission == 1)
	   {
	   $login_user = Members::editprofileData($user_id);
	   $other_user['details'] = Members::otherUserData($user_id);
	   $last_user = $last_data->id;
	   $chck = Chat::ConvCount($last_user,$user_id);
	   if($chck != 0)
	   {
	   $convert_data = Chat::ConvData($last_user,$user_id);
	   $chat['message'] = Chat::getChatData($convert_data->conver_order_id);
	   }
	   else
	   {
	   $chat = 0;
	   }
	   return view('admin.messages', ['login_user' => $login_user, 'other_user' => $other_user, 'last_user' => $last_user, 'chat' => $chat, 'chck' => $chck, 'slug' => $slug, 'last_data' => $last_data, 'log_data' => $log_data]);      }
	   else
	   {
	      return redirect('404');
	   }
	   
	}
	
	
	public function view_message_delete($msg_id)
	{
	   $encrypter = app('Illuminate\Contracts\Encryption\Encrypter');
	   $id   = $encrypter->decrypt($msg_id);
	   Chat::deleteChat($id);
	   return redirect()->back()->with('success', 'Your message has been deleted');
	}
	
	
	
	
}
