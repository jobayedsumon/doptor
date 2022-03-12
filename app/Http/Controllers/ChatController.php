<?php

namespace Fickrr\Http\Controllers;

use Illuminate\Http\Request;
use Fickrr\Models\Settings;
use Fickrr\Models\Members;
use Fickrr\Models\Items;
use Fickrr\Models\Chat;
use Fickrr\Models\EmailTemplate;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\File;
use Auth;
use Mail;
use URL;
use Image;
use Storage;
use Session;
use Illuminate\Support\Str;
use LaravelEmojiOne;


class ChatController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
		
    }
	
	
	public function view_conversation($to_slug,$order_id)
	{
	$encrypter = app('Illuminate\Contracts\Encryption\Encrypter');
	$ord_id   = $encrypter->decrypt($order_id);
	$order_details = Chat::getorderDetails($ord_id);
	$user_details = Members::logindataUser($order_details->item_user_id);
	$chat['message'] = Chat::getChatDetails($ord_id);
	
	return view('conversation-to-vendor', ['to_slug' => $to_slug, 'user_details' => $user_details, 'ord_id' => $ord_id, 'chat' => $chat, 'order_id' => $order_id, 'order_details' => $order_details]);
	}
	
	
	public function conversation_message(Request $request)
	{
	 $encrypter = app('Illuminate\Contracts\Encryption\Encrypter');
	 $conver_text = $request->input('conver_text');
	 $conver_user_id = $request->input('conver_user_id');
	 $conver_seller_id = $request->input('conver_seller_id');
	 $conver_order_id = $encrypter->decrypt($request->input('conver_order_id'));
	 $order_id = $request->input('conver_order_id');
	 $conver_url = $request->input('conver_url');
	 $conver_date = date('Y-m-d H:i:s');
	 $savedata = array( 'conver_user_id' => $conver_user_id, 'conver_seller_id' => $conver_seller_id, 'conver_order_id' => $conver_order_id, 'conver_text' => $conver_text, 'conver_date' => $conver_date);
	 Chat::savemessageData($savedata);
	 $userfrom['data'] = Members::singlebuyerData($conver_user_id);
	 $userto['data'] = Members::singlevendorData($conver_seller_id);
	    $from_email = $userfrom['data']->email;
		$from_name = $userfrom['data']->name;
		$from_username = $userfrom['data']->username;
		$to_email = $userto['data']->email;
		$to_name  = $userto['data']->name;
		$conversation_url = $conver_url.'/'.$from_username.'/'.$order_id;
		
		$record = array('to_name' => $to_name, 'from_name' => $from_name, 'from_email' => $from_email, 'conver_text' => $conver_text, 'conver_order_id' => $conver_order_id, 'conversation_url' => $conversation_url);
		/* email template code */
	          $checktemp = EmailTemplate::checkTemplate(1);
			  if($checktemp != 0)
			  {
			  $template_view['mind'] = EmailTemplate::viewTemplate(1);
			  $template_subject = $template_view['mind']->et_subject;
			  }
			  else
			  {
			  $template_subject = "Conversation Message";
			  }
			  /* email template code */
		  Mail::send('chat_mail', $record, function($message) use ($to_email, $from_email, $to_name, $from_name, $template_subject) {
				$message->to($to_email, $to_name)
						->subject($template_subject);
				$message->from($from_email,$from_name);
			});
	 
	 
	 return redirect()->back()->with('success', 'Your message has been sent successfully');
	 
	}
	
	
	public function delete_conversation($id)
	{
	$conver_id = base64_decode($id); 
	   Chat::deleteChat($conver_id);
	return redirect()->back()->with('success', 'Your message has been deleted');
	}
	
	
	public function view_buyer_conversation($to_slug,$order_id)
	{
	$encrypter = app('Illuminate\Contracts\Encryption\Encrypter');
	$ord_id   = $encrypter->decrypt($order_id);
	$order_details = Chat::getorderDetails($ord_id);
	$user_details = Members::editUser($to_slug);
	$chat['message'] = Chat::getChatDetails($ord_id);
	
	return view('conversation-to-buyer', ['to_slug' => $to_slug, 'user_details' => $user_details, 'ord_id' => $ord_id, 'chat' => $chat, 'order_id' => $order_id, 'order_details' => $order_details]);
	}
	
	
	/* messages */
	
	public function view_messages()
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
	   return view('messages', ['login_user' => $login_user, 'other_user' => $other_user, 'last_user' => $last_user, 'chat' => $chat, 'slug' => $slug, 'chck' => $chck]);
	  
	}
	
	public function view_message_conversation($slug)
	{
	   
	   $last_data = Members::editUser($slug);
	   /*if($last_data->user_message_permission == 1)
	   {*/
	   $user_id = Auth::user()->id;
	   $record = array('message_read_type' => 'read');
	   Chat::readData($user_id,$record);
	   $login_user = Members::editprofileData($user_id);
	   $other_user['details'] = Members::otherUserData($user_id);
	   $last_user = $last_data->id;
	   $chck = Chat::ConvCount($last_user,$user_id);
	   if($chck != 0)
	   {
	   $convert_data = Chat::ConvData($last_user,$user_id);
	   $chatting['message'] = Chat::getChatData($convert_data->conver_order_id);
	   $record          = '<div class="chat-messages p-4">';
	 
	 foreach($chatting['message'] as $chat)
	 {
	    $record .='<div class="chat-message-left pb-4">
							 <div align="center">';
							  if($chat->user_photo!='')
							  {
        $record .= '<img src="'.url('/').'/public/storage/users/'.$chat->user_photo.'" class="rounded-circle mr-1" alt="'.$chat->username.'" width="60" height="60">';
                              }
							  else
							  {
        $record .= '<img class="rounded-circle mr-1" width="60" height="60" src="'.url('/').'/public/img/no-user.png" alt="'.$chat->username.'"/>';
                              }
		$record .= '<div class="text-muted small text-nowrap mt-2">'.$this->timeAgo(strtotime($chat->conver_date)).'</div>
                              </div>';
							  $record .= '<div class="flex-shrink-1 bg-light rounded py-2 px-3 ml-3">';
									$record .='<div class="font-weight-bold mb-1">'.$chat->username.'</div>';
									$record .= LaravelEmojiOne::toImage($chat->conver_text).'<br/>
                                    
								</div>
                            </div>';
	    
	 }
	 $record .= '</div>';
	 $record .= '<script type="text/javascript">
   $(document).ready(function() {
   $(".chat-messages").scrollTop($(".chat-messages")[0].scrollHeight);
    });
</script>';
     /*$record .='<form method="post" id="checkout_form" enctype="multipart/form-data" class="media-body needs-validation ml-3">';
                   $record .='<input type="hidden" name="_token" id="csrf-token" value="'.Session::token().'" />';
					$record .='<div class="flex-grow-0 py-3 px-4 border-top">
						<div class="input-group">';
                            $record .='<input type="hidden" name="conver_user_id" value="'.Auth::user()->id.'">
                            <input type="hidden" name="conver_seller_id" value="'.$last_user.'">
                            <input type="hidden" name="conver_url" value="'.url('/messages').'">';
		$record .='<input type="text" class="form-control" name="conver_text" id="conver_text" placeholder="Type your message" data-bvalidator="required">';
							$record .='<button class="btn btn-primary btn-submit" type="submit">Send</button>
						</div>
					</div>
                   </form>';*/
	   }
	   else
	   {
	   $chatting = 0;
	   }
	  /*return view('messages', ['login_user' => $login_user, 'other_user' => $other_user, 'last_user' => $last_user, 'chat' => $chat, 'chck' => $chck, 'slug' => $slug]);      }
	   else
	   {
	      return redirect('404');
	   }*/
	  return response()->json(['success' => true, 'record' => $record, 'last_user' => $last_user]);
	   
	}
	
	
	
	public function new_message_conversation($name,$slug)
	{
	   
	   $last_data = Members::editUser($slug);
	   
	   $user_id = Auth::user()->id;
	   $record = array('message_read_type' => 'read');
	   Chat::readData($user_id,$record);
	   $login_user = Members::editprofileData($user_id);
	   $other_user['details'] = Members::otherUserData($user_id);
	   $last_user = $last_data->id;
	  $chck = Chat::ConvCount($last_user,$user_id);
	   if($chck != 0)
	   {
	   $convert_data = Chat::ConvData($last_user,$user_id);
	   $chat['message'] = Chat::getChatData($convert_data->conver_order_id);
	   
	   $record          = '<div class="chat-messages p-4">';
	 
	 foreach($chat['message'] as $chats)
	 {
	    $record .='<div class="chat-message-left pb-4">
							 <div align="center">';
							  if($chats->user_photo!='')
							  {
        $record .= '<img src="'.url('/').'/public/storage/users/'.$chats->user_photo.'" class="rounded-circle mr-1" alt="'.$chats->username.'" width="60" height="60">';
                              }
							  else
							  {
        $record .= '<img class="rounded-circle mr-1" width="60" height="60" src="'.url('/').'/public/img/no-user.png" alt="'.$chats->username.'"/>';
                              }
		$record .= '<div class="text-muted small text-nowrap mt-2">'.$this->timeAgo(strtotime($chats->conver_date)).'</div>
                              </div>';
							  $record .= '<div class="flex-shrink-1 bg-light rounded py-2 px-3 ml-3">';
									$record .='<div class="font-weight-bold mb-1">'.$chats->username.'</div>';
									$record .= LaravelEmojiOne::toImage($chats->conver_text).'<br/>
                                    
								</div>
                            </div>';
	    
	 }
	 $record .= '</div>';
	 $record .= '<script type="text/javascript">
   $(document).ready(function() {
   $(".chat-messages").scrollTop($(".chat-messages")[0].scrollHeight);
    });
</script>';
     /*$record .='<form method="post" id="checkout_form" enctype="multipart/form-data" class="media-body needs-validation ml-3">';
                   $record .='<input type="hidden" name="_token" id="csrf-token" value="'.Session::token().'" />';
					$record .='<div class="flex-grow-0 py-3 px-4 border-top">
						<div class="input-group">';
                            $record .='<input type="hidden" name="conver_user_id" value="'.Auth::user()->id.'">
                            <input type="hidden" name="conver_seller_id" value="'.$last_user.'">
                            <input type="hidden" name="conver_url" value="'.url('/messages').'">';
		$record .='<input type="text" class="form-control" name="conver_text" id="conver_text" placeholder="Type your message" data-bvalidator="required">';
							$record .='<button class="btn btn-primary btn-submit" type="submit">Send</button>
						</div>
					</div>
                   </form>';*/
				   
	   }
	   else
	   {
	   $chat = 0;
	   }
	   
	   
	   
	  /*return view('messages', ['login_user' => $login_user, 'other_user' => $other_user, 'last_user' => $last_user, 'chat' => $chat, 'chck' => $chck, 'slug' => $slug]);      }
	   else
	   {
	      return redirect('404');
	   }*/
	  return view('messages',['success' => true, 'record' => $record, 'last_user' => $last_user, 'other_user' => $other_user, 'slug' => $slug, 'chck' => $chck, 'chat' => $chat]);
	   
	}
	
	
	public function timeAgo($time_ago)
	{
		$cur_time 	= time();
		$time_elapsed 	= $cur_time - $time_ago;
		$seconds 	= $time_elapsed ;
		$minutes 	= round($time_elapsed / 60 );
		$hours 		= round($time_elapsed / 3600);
		$days 		= round($time_elapsed / 86400 );
		$weeks 		= round($time_elapsed / 604800);
		$months 	= round($time_elapsed / 2600640 );
		$years 		= round($time_elapsed / 31207680 );
		$timedata = "";
		// Seconds
		if($seconds <= 60){
			$timedata .= "$seconds seconds ago";
		}
		//Minutes
		else if($minutes <=60){
			if($minutes==1){
				$timedata .= "one minute ago";
			}
			else{
				$timedata .= "$minutes minutes ago";
			}
		}
		//Hours
		else if($hours <=24){
			if($hours==1){
				$timedata .= "an hour ago";
			}else{
				$timedata .= "$hours hours ago";
			}
		}
		//Days
		else if($days <= 7){
			if($days==1){
				$timedata .= "yesterday";
			}else{
				$timedata .= "$days days ago";
			}
		}
		//Weeks
		else if($weeks <= 4.3){
			if($weeks==1){
				$timedata .= "a week ago";
			}else{
				$timedata .= "$weeks weeks ago";
			}
		}
		//Months
		else if($months <=12){
			if($months==1){
				$timedata .= "a month ago";
			}else{
				$timedata .= "$months months ago";
			}
		}
		//Years
		else{
			if($years==1){
				$timedata .= "one year ago";
			}else{
				$timedata .= "$years years ago";
			}
		}
		
		return $timedata;
	}

	
	
	
	public function chat_message(Request $request)
	{
	 $encrypter = app('Illuminate\Contracts\Encryption\Encrypter');
	 $conver_text = $request->input('conver_text');
	 $conver_user_id = $request->input('conver_user_id');
	 $conver_seller_id = $request->input('conver_seller_id');
	 $logged_id = Auth::user()->id;
	 $group_count = Chat::checkChat($conver_user_id,$conver_seller_id);
	 if($group_count == 0)
	 {
	    $conver_order_id = rand(1111,9999);
	 }
	 else
	 {
	   $groupdata = Chat::viewChat($conver_user_id,$conver_seller_id);
	   $conver_order_id = $groupdata->conver_order_id;
	 }
	 
	  $order_id = $conver_order_id;
	 $conver_url = $request->input('conver_url');
	 $conver_date = date('Y-m-d H:i:s');
	 $savedata = array( 'conver_user_id' => $conver_user_id, 'conver_seller_id' => $conver_seller_id, 'conver_order_id' => $conver_order_id, 'logged_id' => $logged_id, 'conver_text' => $conver_text, 'conver_date' => $conver_date);
	 
	 Chat::savemessageData($savedata);
	 $userfrom['data'] = Members::singlebuyerData($conver_user_id);
	 $userto['data'] = Members::singlevendorData($conver_seller_id);
	    $from_email = $userfrom['data']->email;
		$from_name = $userfrom['data']->name;
		$from_username = $userfrom['data']->username;
		$to_email = $userto['data']->email;
		$to_name  = $userto['data']->name;
		$conversation_url = $conver_url;
		
		$myrecord = array('to_name' => $to_name, 'from_name' => $from_name, 'from_email' => $from_email, 'conver_text' => $conver_text, 'conver_order_id' => $conver_order_id, 'conversation_url' => $conversation_url);
		/* email template code */
	          $checktemp = EmailTemplate::checkTemplate(1);
			  if($checktemp != 0)
			  {
			  $template_view['mind'] = EmailTemplate::viewTemplate(1);
			  $template_subject = $template_view['mind']->et_subject;
			  }
			  else
			  {
			  $template_subject = "Conversation Message";
			  }
			  /* email template code */
		  Mail::send('chat_mail', $myrecord, function($messager) use ($to_email, $from_email, $to_name, $from_name, $template_subject) {
				$messager->to($to_email, $to_name)
						->subject($template_subject);
				$messager->from($from_email,$from_name);
			});
			
	
	 $chatting['message'] = Chat::getChatData($conver_order_id);
	 $record          = '<div class="chat-messages p-4">';
	 
	 foreach($chatting['message'] as $chat)
	 {
	    $record .='<div class="chat-message-left pb-4">
							 <div align="center">';
							  if($chat->user_photo!='')
							  {
        $record .= '<img src="'.url('/').'/public/storage/users/'.$chat->user_photo.'" class="rounded-circle mr-1" alt="'.$chat->username.'" width="60" height="60">';
                              }
							  else
							  {
        $record .= '<img class="rounded-circle mr-1" width="60" height="60" src="'.url('/').'/public/img/no-user.png" alt="'.$chat->username.'"/>';
                              }
		$record .= '<div class="text-muted small text-nowrap mt-2">'.$this->timeAgo(strtotime($chat->conver_date)).'</div>
                              </div>';
							  $record .= '<div class="flex-shrink-1 bg-light rounded py-2 px-3 ml-3">';
									$record .='<div class="font-weight-bold mb-1">'.$chat->username.'</div>';
									$record .= LaravelEmojiOne::toImage($chat->conver_text).'<br/>
                                    
								</div>
                            </div>';
	    
	 }
	 $record .= '</div>';
	 $record .= '<script type="text/javascript">
   $(document).ready(function() {
   $(".chat-messages").scrollTop($(".chat-messages")[0].scrollHeight);
    });
</script>';
	 return response()->json(['success' => true, 'record' => $record]);
	 
	 
	 
	}
	
	
	
	
	public function view_message_delete($drop,$msg_id)
	{
	   $encrypter = app('Illuminate\Contracts\Encryption\Encrypter');
	   $id   = $encrypter->decrypt($msg_id);
	   Chat::deleteChat($id);
	   return redirect()->back()->with('success', 'Your message has been deleted');
	}
	
	/* messages */
	
	
}
