<?php

namespace Fickrr\Http\Controllers;


use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;
use Illuminate\Validation\Rule;
use Fickrr\Models\Members;
use Fickrr\Models\Subscription;
use Fickrr\Models\EmailTemplate;
use Fickrr\Models\Settings;
use Auth;
use Mail;
use AmrShawky\LaravelCurrency\Facade\Currency;
use Razorpay\Api\Api;
use Paystack;
use IyzipayBootstrap;
use GuzzleHttp\Client;
use CoinGate\CoinGate;
use Cache;
use Image;


class ProfileController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
	 
	use AuthenticatesUsers; 
	 
    public function __construct()
    {
        $this->middleware('auth');
    }

    /* subscription */
	
	public function upgrade_subscription($id)
	{
	   $subscr_id = base64_decode($id);
	   $subscr['view'] = Subscription::getSubscription($subscr_id);
	   $sid = 1;
	  $setting['setting'] = Settings::editGeneral($sid);
	  $get_payment = explode(',', $setting['setting']->payment_option);
	   return view('confirm-subscription', ['subscr' => $subscr, 'get_payment' => $get_payment]);
	}
	
	public function paypal_success($ord_token, Request $request)
	{
	
	$payment_token = $request->input('tx');
	$purchased_token = $ord_token;
	$subscr_id = Auth::user()->user_subscr_id;
	$subscr['view'] = Subscription::editsubData($subscr_id);
	$subscri_date = $subscr['view']->subscr_duration;
	$user_subscr_item_level = $subscr['view']->subscr_item_level;
	$user_subscr_item = $subscr['view']->subscr_item;
	$user_subscr_download_item = $subscr['view']->subscr_download_item;
	$user_subscr_space_level = $subscr['view']->subscr_space_level;
	$user_subscr_space = $subscr['view']->subscr_space;
	$user_subscr_space_type = $subscr['view']->subscr_space_type;
	$user_subscr_type = $subscr['view']->subscr_name;
	$subscr_value = "+".$subscri_date;
	$subscr_date = date('Y-m-d', strtotime($subscr_value));
	$user_id = Auth::user()->id;
	if(Auth::user()->user_type == 'customer')
	{
	  $user_type = 'vendor';
	}
	else
	{
	  $user_type = Auth::user()->user_type;
	}
	$checkoutdata = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'user_subscr_item_level' => $user_subscr_item_level, 'user_subscr_item' => $user_subscr_item, 'user_subscr_download_item' => $user_subscr_download_item,  'user_subscr_space_level' => $user_subscr_space_level, 'user_subscr_space' => $user_subscr_space, 'user_subscr_space_type' => $user_subscr_space_type, 'user_type' => $user_type);
	Subscription::confirmsubscriData($user_id,$checkoutdata);
	/* subscription email */
	$sid = 1;
	$setting['setting'] = Settings::editGeneral($sid);
	$currency = $setting['setting']->site_currency;
	$subscr_price = $subscr['view']->subscr_price;
	$admin_name = $setting['setting']->sender_name;
	$admin_email = $setting['setting']->sender_email;
	$buyer_name = Auth::user()->name;
	$buyer_email = Auth::user()->email;
	$buyer_data = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'subscr_duration' =>  $subscri_date, 'subscr_price' => $subscr_price, 'currency' => $currency); 
	/* email template code */
	$checktemp = EmailTemplate::checkTemplate(20);
	if($checktemp != 0)
	{
		$template_view['mind'] = EmailTemplate::viewTemplate(20);
		$template_subject = $template_view['mind']->et_subject;
	}
	else
	{
		$template_subject = "Subscription Upgrade";
	}
	/* email template code */
	Mail::send('subscription_mail', $buyer_data , function($message) use ($admin_name, $admin_email, $buyer_name, $buyer_email, $template_subject) {
		$message->to($buyer_email, $buyer_name)
		->subject($template_subject);
		$message->from($admin_email,$admin_name);
	});
	/* subscription email */
	$result_data = array('payment_token' => $payment_token);
	return view('success')->with($result_data);
	
	}
	
	public function ipay_success(Request $request)
	{
	
	$payment_token = $request->input('txncd');
	$purchased_token = $request->input('id');
	$ipay_status = $request->input('status');
	if($ipay_status == 'aei7p7yrx4ae34') // success
	{
		$subscr_id = Auth::user()->user_subscr_id;
		$subscr['view'] = Subscription::editsubData($subscr_id);
		$subscri_date = $subscr['view']->subscr_duration;
		$user_subscr_item_level = $subscr['view']->subscr_item_level;
		$user_subscr_item = $subscr['view']->subscr_item;
		$user_subscr_download_item = $subscr['view']->subscr_download_item;
		$user_subscr_space_level = $subscr['view']->subscr_space_level;
		$user_subscr_space = $subscr['view']->subscr_space;
		$user_subscr_space_type = $subscr['view']->subscr_space_type;
		$user_subscr_type = $subscr['view']->subscr_name;
		$subscr_value = "+".$subscri_date;
		$subscr_date = date('Y-m-d', strtotime($subscr_value));
		$user_id = Auth::user()->id;
		if(Auth::user()->user_type == 'customer')
		{
			$user_type = 'vendor';
		}
		else
		{
			$user_type = Auth::user()->user_type;
		}
		$checkoutdata = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'user_subscr_item_level' => $user_subscr_item_level, 'user_subscr_item' => $user_subscr_item, 'user_subscr_download_item' => $user_subscr_download_item,  'user_subscr_space_level' => $user_subscr_space_level, 'user_subscr_space' => $user_subscr_space, 'user_subscr_space_type' => $user_subscr_space_type, 'user_type' => $user_type);
		Subscription::confirmsubscriData($user_id,$checkoutdata);
		/* subscription email */
		$sid = 1;
		$setting['setting'] = Settings::editGeneral($sid);
		$currency = $setting['setting']->site_currency;
		$subscr_price = $subscr['view']->subscr_price;
		$subscri_date = $subscr['view']->subscr_duration;
		$admin_name = $setting['setting']->sender_name;
		$admin_email = $setting['setting']->sender_email;
		$buyer_name = Auth::user()->name;
		$buyer_email = Auth::user()->email;
		$buyer_data = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'subscr_duration' =>  $subscri_date, 'subscr_price' => $subscr_price, 'currency' => $currency); 
		/* email template code */
		$checktemp = EmailTemplate::checkTemplate(20);
		if($checktemp != 0)
		{
			$template_view['mind'] = EmailTemplate::viewTemplate(20);
			$template_subject = $template_view['mind']->et_subject;
		}
		else
		{
			$template_subject = "Subscription Upgrade";
		}
		/* email template code */
		Mail::send('subscription_mail', $buyer_data , function($message) use ($admin_name, $admin_email, $buyer_name, $buyer_email, $template_subject) {
						$message->to($buyer_email, $buyer_name)
						->subject($template_subject);
						$message->from($admin_email,$admin_name);
		});
		/* subscription email */
		$result_data = array('payment_token' => $payment_token);
		return view('success')->with($result_data);
	 }
	 else
	 {
	    return view('cancel');
	 }	
	
	}
	
	
	public function coingateCallback(Request $request)
	{
	
	   $ord_token = Cache::get('coingate_id');
	   $purchase_id = Cache::get('purchase_id');
	   $sid = 1;
	   $setting['setting'] = Settings::editGeneral($sid);
	   $additional['setting'] = Settings::editAdditional();
	   $coingate_mode = $additional['setting']->coingate_mode;
	   if($coingate_mode == 0)
	   {
	      $coingate_mode_status = "sandbox";
	   }
	   else
	   {
	      $coingate_mode_status = "live";
	   }
	   $coingate_auth_token = $additional['setting']->coingate_auth_token;
	   \CoinGate\CoinGate::config(array(
					'environment'               => $coingate_mode_status, // sandbox OR live
					'auth_token'                => $coingate_auth_token,
					'curlopt_ssl_verifypeer'    => TRUE // default is false
					 ));
	   try 
	   {
         $order = \CoinGate\Merchant\Order::find($ord_token);
     
		if ($order) 
		{
		  //echo $order->status;
		 /*var_dump($order); 
		 echo $order->status;
		 echo $order->id;
		 echo $order->order_id;
		 echo $order->payment_address;*/
		 //dd($order); //sara
			$payment_token = $order->payment_address;
			$ord_token = $order->order_id;
			if($order->status == 'paid')
			{
		
				$purchased_token = $ord_token;
				$subscr_id = Auth::user()->user_subscr_id;
				$subscr['view'] = Subscription::editsubData($subscr_id);
				$subscri_date = $subscr['view']->subscr_duration;
				$user_subscr_item_level = $subscr['view']->subscr_item_level;
				$user_subscr_item = $subscr['view']->subscr_item;
				$user_subscr_download_item = $subscr['view']->subscr_download_item;
				$user_subscr_space_level = $subscr['view']->subscr_space_level;
				$user_subscr_space = $subscr['view']->subscr_space;
				$user_subscr_space_type = $subscr['view']->subscr_space_type;
				$user_subscr_type = $subscr['view']->subscr_name;
				$subscr_value = "+".$subscri_date;
				$subscr_date = date('Y-m-d', strtotime($subscr_value));
				$user_id = Auth::user()->id;
				if(Auth::user()->user_type == 'customer')
				{
					$user_type = 'vendor';
				}
				else
				{
					$user_type = Auth::user()->user_type;
				}
				$checkoutdata = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'user_subscr_item_level' => $user_subscr_item_level, 'user_subscr_item' => $user_subscr_item, 'user_subscr_download_item' => $user_subscr_download_item, 'user_subscr_space_level' => $user_subscr_space_level, 'user_subscr_space' => $user_subscr_space, 'user_subscr_space_type' => $user_subscr_space_type, 'user_type' => $user_type);
				Subscription::confirmsubscriData($user_id,$checkoutdata);
				/* subscription email */
				$sid = 1;
				$setting['setting'] = Settings::editGeneral($sid);
				$currency = $setting['setting']->site_currency;
				$subscr_price = $subscr['view']->subscr_price;
				$subscri_date = $subscr['view']->subscr_duration;
				$admin_name = $setting['setting']->sender_name;
				$admin_email = $setting['setting']->sender_email;
				$buyer_name = Auth::user()->name;
				$buyer_email = Auth::user()->email;
				$buyer_data = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'subscr_duration' =>  $subscri_date, 'subscr_price' => $subscr_price, 'currency' => $currency); 
				/* email template code */
				$checktemp = EmailTemplate::checkTemplate(20);
				if($checktemp != 0)
				{
					$template_view['mind'] = EmailTemplate::viewTemplate(20);
					$template_subject = $template_view['mind']->et_subject;
				}
				else
				{
					$template_subject = "Subscription Upgrade";
				}
				/* email template code */
				Mail::send('subscription_mail', $buyer_data , function($message) use ($admin_name, $admin_email, $buyer_name, $buyer_email, $template_subject) {
								$message->to($buyer_email, $buyer_name)
								->subject($template_subject);
								$message->from($admin_email,$admin_name);
				});
				/* subscription email */
                $result_data = array('payment_token' => $payment_token);
				return view('success')->with($result_data);
				
			 }
			 else
			 {
			   return view('cancel');
			 }
	
			 
			
			}
			else 
			{
			  echo 'Order not found';
			}
	   } catch (Exception $e) 
		 {
		  echo $e->getMessage(); // BadCredentials Not found App by Access-Key
		}
	
	
	
	}
	
	
	
	public function flutterwaveCallback(Request $request)
	{
	   	$payment_token = $request->input('transaction_id');
		$ord_token = $request->input('tx_ref');
		$pay_status = $request->input('status');
		if ($pay_status == 'successful') 
		{
			
			$purchased_token = $ord_token;
			$subscr_id = Auth::user()->user_subscr_id;
			$subscr['view'] = Subscription::editsubData($subscr_id);
			$subscri_date = $subscr['view']->subscr_duration;
			$user_subscr_item_level = $subscr['view']->subscr_item_level;
			$user_subscr_item = $subscr['view']->subscr_item;
			$user_subscr_download_item = $subscr['view']->subscr_download_item;
			$user_subscr_space_level = $subscr['view']->subscr_space_level;
			$user_subscr_space = $subscr['view']->subscr_space;
			$user_subscr_space_type = $subscr['view']->subscr_space_type;
			$user_subscr_type = $subscr['view']->subscr_name;
			$subscr_value = "+".$subscri_date;
			$subscr_date = date('Y-m-d', strtotime($subscr_value));
			$user_id = Auth::user()->id;
			if(Auth::user()->user_type == 'customer')
			{
			$user_type = 'vendor';
			}
			else
			{
			$user_type = Auth::user()->user_type;
			}
			$checkoutdata = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'user_subscr_item_level' => $user_subscr_item_level, 'user_subscr_item' => $user_subscr_item, 'user_subscr_download_item' => $user_subscr_download_item, 'user_subscr_space_level' => $user_subscr_space_level, 'user_subscr_space' => $user_subscr_space, 'user_subscr_space_type' => $user_subscr_space_type, 'user_type' => $user_type);
			Subscription::confirmsubscriData($user_id,$checkoutdata);
			/* subscription email */
			$sid = 1;
			$setting['setting'] = Settings::editGeneral($sid);
			$currency = $setting['setting']->site_currency;
			$subscr_price = $subscr['view']->subscr_price;
			$subscri_date = $subscr['view']->subscr_duration;
			$admin_name = $setting['setting']->sender_name;
			$admin_email = $setting['setting']->sender_email;
			$buyer_name = Auth::user()->name;
			$buyer_email = Auth::user()->email;
			$buyer_data = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'subscr_duration' =>  $subscri_date, 'subscr_price' => $subscr_price, 'currency' => $currency); 
			/* email template code */
			$checktemp = EmailTemplate::checkTemplate(20);
			if($checktemp != 0)
			{
				$template_view['mind'] = EmailTemplate::viewTemplate(20);
				$template_subject = $template_view['mind']->et_subject;
			}
			else
			{
				$template_subject = "Subscription Upgrade";
			}
			/* email template code */
			Mail::send('subscription_mail', $buyer_data , function($message) use ($admin_name, $admin_email, $buyer_name, $buyer_email, $template_subject) {
							$message->to($buyer_email, $buyer_name)
							->subject($template_subject);
							$message->from($admin_email,$admin_name);
			});
			/* subscription email */
            $result_data = array('payment_token' => $payment_token);
			return view('success')->with($result_data);
		}
		else
		{
		   return view('cancel');
		}	
			
	
	}
	
	
	
	public function payhere_success($ord_token, Request $request)
	{
	
	$payment_token = "";
	$purchased_token = $ord_token;
	$subscr_id = Auth::user()->user_subscr_id;
	$subscr['view'] = Subscription::editsubData($subscr_id);
	$subscri_date = $subscr['view']->subscr_duration;
	$user_subscr_item_level = $subscr['view']->subscr_item_level;
	$user_subscr_item = $subscr['view']->subscr_item;
	$user_subscr_download_item = $subscr['view']->subscr_download_item;
	$user_subscr_space_level = $subscr['view']->subscr_space_level;
	$user_subscr_space = $subscr['view']->subscr_space;
	$user_subscr_space_type = $subscr['view']->subscr_space_type;
	$user_subscr_type = $subscr['view']->subscr_name;
	$subscr_value = "+".$subscri_date;
	$subscr_date = date('Y-m-d', strtotime($subscr_value));
	$user_id = Auth::user()->id;
	if(Auth::user()->user_type == 'customer')
	{
		$user_type = 'vendor';
	}
	else
	{
		$user_type = Auth::user()->user_type;
	}
	$checkoutdata = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'user_subscr_item_level' => $user_subscr_item_level, 'user_subscr_item' => $user_subscr_item, 'user_subscr_download_item' => $user_subscr_download_item, 'user_subscr_space_level' => $user_subscr_space_level, 'user_subscr_space' => $user_subscr_space, 'user_subscr_space_type' => $user_subscr_space_type, 'user_type' => $user_type);
	Subscription::confirmsubscriData($user_id,$checkoutdata);
	/* subscription email */
	$sid = 1;
	$setting['setting'] = Settings::editGeneral($sid);
	$currency = $setting['setting']->site_currency;
	$subscr_price = $subscr['view']->subscr_price;
	$subscri_date = $subscr['view']->subscr_duration;
	$admin_name = $setting['setting']->sender_name;
	$admin_email = $setting['setting']->sender_email;
	$buyer_name = Auth::user()->name;
	$buyer_email = Auth::user()->email;
	$buyer_data = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'subscr_duration' =>  $subscri_date, 'subscr_price' => $subscr_price, 'currency' => $currency); 
	/* email template code */
	$checktemp = EmailTemplate::checkTemplate(20);
	if($checktemp != 0)
	{
		$template_view['mind'] = EmailTemplate::viewTemplate(20);
		$template_subject = $template_view['mind']->et_subject;
	}
	else
	{
		$template_subject = "Subscription Upgrade";
	}
	/* email template code */
	Mail::send('subscription_mail', $buyer_data , function($message) use ($admin_name, $admin_email, $buyer_name, $buyer_email, $template_subject) {
						$message->to($buyer_email, $buyer_name)
						->subject($template_subject);
						$message->from($admin_email,$admin_name);
	});
	/* subscription email */
	$result_data = array('payment_token' => $payment_token);
	return view('success')->with($result_data);
	
	}
	
	
	
	public function payu_success(Request $request)
	{
	
	$payment_token = $request->input('txnid');
	$purchased_token = $request->input('udf1');
	$subscr_id = Auth::user()->user_subscr_id;
	$subscr['view'] = Subscription::editsubData($subscr_id);
	$subscri_date = $subscr['view']->subscr_duration;
	$user_subscr_item_level = $subscr['view']->subscr_item_level;
	$user_subscr_item = $subscr['view']->subscr_item;
	$user_subscr_download_item = $subscr['view']->subscr_download_item;
	$user_subscr_space_level = $subscr['view']->subscr_space_level;
	$user_subscr_space = $subscr['view']->subscr_space;
	$user_subscr_space_type = $subscr['view']->subscr_space_type;
	$user_subscr_type = $subscr['view']->subscr_name;
	$subscr_value = "+".$subscri_date;
	$subscr_date = date('Y-m-d', strtotime($subscr_value));
	$user_id = Auth::user()->id;
	if(Auth::user()->user_type == 'customer')
	{
		$user_type = 'vendor';
	}
	else
	{
		$user_type = Auth::user()->user_type;
	}
	$checkoutdata = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'user_subscr_item_level' => $user_subscr_item_level, 'user_subscr_item' => $user_subscr_item, 'user_subscr_download_item' => $user_subscr_download_item, 'user_subscr_space_level' => $user_subscr_space_level, 'user_subscr_space' => $user_subscr_space, 'user_subscr_space_type' => $user_subscr_space_type, 'user_type' => $user_type);
	Subscription::confirmsubscriData($user_id,$checkoutdata);
	/* subscription email */
	$sid = 1;
	$setting['setting'] = Settings::editGeneral($sid);
	$currency = $setting['setting']->site_currency;
	$subscr_price = $subscr['view']->subscr_price;
	$subscri_date = $subscr['view']->subscr_duration;
	$admin_name = $setting['setting']->sender_name;
	$admin_email = $setting['setting']->sender_email;
	$buyer_name = Auth::user()->name;
	$buyer_email = Auth::user()->email;
	$buyer_data = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'subscr_duration' =>  $subscri_date, 'subscr_price' => $subscr_price, 'currency' => $currency); 
	/* email template code */
	$checktemp = EmailTemplate::checkTemplate(20);
	if($checktemp != 0)
	{
		$template_view['mind'] = EmailTemplate::viewTemplate(20);
		$template_subject = $template_view['mind']->et_subject;
	}
	else
	{
		$template_subject = "Subscription Upgrade";
	}
	/* email template code */
	Mail::send('subscription_mail', $buyer_data , function($message) use ($admin_name, $admin_email, $buyer_name, $buyer_email, $template_subject) {
				$message->to($buyer_email, $buyer_name)
						->subject($template_subject);
						$message->from($admin_email,$admin_name);
	});
	/* subscription email */
    $result_data = array('payment_token' => $payment_token);
	return view('success')->with($result_data);
	
	}
	
	
	
	public function handleGatewayCallback()
    {
        $paymentDetails = Paystack::getPaymentData();
		$sid = 1;
	    $setting['setting'] = Settings::editGeneral($sid);

        
		if (array_key_exists('data', $paymentDetails) && array_key_exists('status', $paymentDetails['data']) && ($paymentDetails['data']['status'] === 'success')) 
		{
		 
		$payment_token = $paymentDetails['data']['reference'];
		$purchased_token = $paymentDetails['data']['metadata'];
		$subscr_id = Auth::user()->user_subscr_id;
		$subscr['view'] = Subscription::editsubData($subscr_id);
		$subscri_date = $subscr['view']->subscr_duration;
		$user_subscr_item_level = $subscr['view']->subscr_item_level;
		$user_subscr_item = $subscr['view']->subscr_item;
		$user_subscr_download_item = $subscr['view']->subscr_download_item;
		$user_subscr_space_level = $subscr['view']->subscr_space_level;
		$user_subscr_space = $subscr['view']->subscr_space;
		$user_subscr_space_type = $subscr['view']->subscr_space_type;
		$user_subscr_type = $subscr['view']->subscr_name;
		$subscr_value = "+".$subscri_date;
		$subscr_date = date('Y-m-d', strtotime($subscr_value));
		$user_id = Auth::user()->id;
		if(Auth::user()->user_type == 'customer')
		{
			$user_type = 'vendor';
		}
		else
		{
			$user_type = Auth::user()->user_type;
		}
		$checkoutdata = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'user_subscr_item_level' => $user_subscr_item_level, 'user_subscr_item' => $user_subscr_item, 'user_subscr_download_item' => $user_subscr_download_item, 'user_subscr_space_level' => $user_subscr_space_level, 'user_subscr_space' => $user_subscr_space, 'user_subscr_space_type' => $user_subscr_space_type, 'user_type' => $user_type);
		Subscription::confirmsubscriData($user_id,$checkoutdata);
		/* subscription email */
		$sid = 1;
		$setting['setting'] = Settings::editGeneral($sid);
		$currency = $setting['setting']->site_currency;
		$subscr_price = $subscr['view']->subscr_price;
		$subscri_date = $subscr['view']->subscr_duration;
		$admin_name = $setting['setting']->sender_name;
		$admin_email = $setting['setting']->sender_email;
		$buyer_name = Auth::user()->name;
		$buyer_email = Auth::user()->email;
		$buyer_data = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'subscr_duration' =>  $subscri_date, 'subscr_price' => $subscr_price, 'currency' => $currency); 
		/* email template code */
		$checktemp = EmailTemplate::checkTemplate(20);
		if($checktemp != 0)
		{
			$template_view['mind'] = EmailTemplate::viewTemplate(20);
			$template_subject = $template_view['mind']->et_subject;
		}
		else
		{
			$template_subject = "Subscription Upgrade";
		}
		/* email template code */
		Mail::send('subscription_mail', $buyer_data , function($message) use ($admin_name, $admin_email, $buyer_name, $buyer_email, $template_subject) {
						$message->to($buyer_email, $buyer_name)
						->subject($template_subject);
						$message->from($admin_email,$admin_name);
		});
		/* subscription email */
		$result_data = array('payment_token' => $payment_token);
		return view('success')->with($result_data);
		 
			
		}
		else
		{
		  return redirect('/cancel');
		}
		
    }
	
	public function redirectToGateway()
    {
        return Paystack::getAuthorizationUrl()->redirectNow();
    }
	
	public function iyzico_success($ord_token, Request $request)
	{
	  $split = explode("-", $ord_token);
	  $payment_level = $split[0];
	  $purchase_token = $split[1];
	  include(app_path() . '\iyzipay-php\IyzipayBootstrap.php');
	  IyzipayBootstrap::init();
	  $options = new \Iyzipay\Options();
	  $additional['setting'] = Settings::editAdditional();
	  $iyzico_api_key = $additional['setting']->iyzico_api_key;
	  $iyzico_secret_key = $additional['setting']->iyzico_secret_key;
	  $iyzico_mode = $additional['setting']->iyzico_mode;
	  if($iyzico_mode == 0)
	  {
		  $iyzico_url = 'https://sandbox-api.iyzipay.com';
	  }
	  else
	  {
		 $iyzico_url = 'https://api.iyzipay.com';
	  }
      $options->setApiKey($iyzico_api_key);
	  $options->setSecretKey($iyzico_secret_key);
	  $options->setBaseUrl($iyzico_url);
	  $request = new \Iyzipay\Request\RetrieveCheckoutFormRequest();
	  $request->setLocale(\Iyzipay\Model\Locale::TR);
	  $request->setConversationId($purchase_token);
	  $request->setToken($_REQUEST['token']);
      # make request
      $checkoutForm = \Iyzipay\Model\CheckoutForm::retrieve($request, $options);
	  
	  $payment_token = $checkoutForm->getPaymentId();
	  $iyzico_status = $checkoutForm->getPaymentStatus();
		if($iyzico_status == 'SUCCESS')
		{
		$purchased_token = $purchase_token;
		$subscr_id = Auth::user()->user_subscr_id;
		$subscr['view'] = Subscription::editsubData($subscr_id);
		$subscri_date = $subscr['view']->subscr_duration;
		$user_subscr_item_level = $subscr['view']->subscr_item_level;
		$user_subscr_item = $subscr['view']->subscr_item;
		$user_subscr_download_item = $subscr['view']->subscr_download_item;
		$user_subscr_space_level = $subscr['view']->subscr_space_level;
		$user_subscr_space = $subscr['view']->subscr_space;
		$user_subscr_space_type = $subscr['view']->subscr_space_type;
		$user_subscr_type = $subscr['view']->subscr_name;
		$subscr_value = "+".$subscri_date;
		$subscr_date = date('Y-m-d', strtotime($subscr_value));
		$user_id = Auth::user()->id;
		if(Auth::user()->user_type == 'customer')
		{
			$user_type = 'vendor';
		}
		else
		{
			$user_type = Auth::user()->user_type;
		}
		$checkoutdata = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'user_subscr_item_level' => $user_subscr_item_level, 'user_subscr_item' => $user_subscr_item, 'user_subscr_download_item' => $user_subscr_download_item, 'user_subscr_space_level' => $user_subscr_space_level, 'user_subscr_space' => $user_subscr_space, 'user_subscr_space_type' => $user_subscr_space_type, 'user_type' => $user_type);
		Subscription::confirmsubscriData($user_id,$checkoutdata);
		/* subscription email */
		$sid = 1;
		$setting['setting'] = Settings::editGeneral($sid);
		$currency = $setting['setting']->site_currency;
		$subscr_price = $subscr['view']->subscr_price;
		$subscri_date = $subscr['view']->subscr_duration;
		$admin_name = $setting['setting']->sender_name;
		$admin_email = $setting['setting']->sender_email;
		$buyer_name = Auth::user()->name;
		$buyer_email = Auth::user()->email;
		$buyer_data = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'subscr_duration' =>  $subscri_date, 'subscr_price' => $subscr_price, 'currency' => $currency); 
		/* email template code */
		$checktemp = EmailTemplate::checkTemplate(20);
		if($checktemp != 0)
		{
			$template_view['mind'] = EmailTemplate::viewTemplate(20);
			$template_subject = $template_view['mind']->et_subject;
		}
		else
		{
			$template_subject = "Subscription Upgrade";
		}
		/* email template code */
		Mail::send('subscription_mail', $buyer_data , function($message) use ($admin_name, $admin_email, $buyer_name, $buyer_email, $template_subject) {
						$message->to($buyer_email, $buyer_name)
						->subject($template_subject);
						$message->from($admin_email,$admin_name);
		});
		/* subscription email */
        $result_data = array('payment_token' => $payment_token);
		return view('success')->with($result_data);
		}
		else
		{
		   return view('cancel');
		}
	
	}
	
	public function update_subscription(Request $request)
	{
	   
	   
	
	   $user_subscr_id = $request->input('user_subscr_id');
	   $subscription_details = Subscription::editsubData($user_subscr_id);
	   $token = $request->input('token');
	   $price = $subscription_details->subscr_price;
	   $user_id = Auth::user()->id;
	   $user_name = Auth::user()->name;
	   $order_email = Auth::user()->email;
	   $purchase_token = rand(111111,999999);
	   $payment_method = $request->input('payment_method');
	   $user_subscr_type = $request->input('user_subscr_type');
	   $user_subscr_date = $request->input('user_subscr_date');
	   $user_subscr_item_level = $request->input('user_subscr_item_level');
	   $user_subscr_item = $request->input('user_subscr_item');
	   $user_subscr_download_item = $request->input('user_subscr_download_item');
	   $user_subscr_space_level = $request->input('user_subscr_space_level');
	   $user_subscr_space = $request->input('user_subscr_space');
	   $user_subscr_space_type = $request->input('user_subscr_space_type');
	   $website_url = $request->input('website_url');
	   $subscr_value = "+".$user_subscr_date;
	   $subscr_date = date('Y-m-d', strtotime($subscr_value));
	   $sid = 1;
	   $setting['setting'] = Settings::editGeneral($sid);
	   $additional['setting'] = Settings::editAdditional();
	   $bank_details = $setting['setting']->local_bank_details;
	   $admin_amount = $price;
	   
	   if($payment_method == 'localbank')
	   {
	   $updatedata = array('user_subscr_price' => $price, 'user_subscr_id' => $user_subscr_id, 'user_purchase_token' => $purchase_token);
	   }
	   else
	   {
	   $updatedata = array('user_subscr_price' => $price, 'user_subscr_id' => $user_subscr_id);
	   }
	   
	   /* settings */
	   
	   $paypal_email = $setting['setting']->paypal_email;
	   $paypal_mode = $setting['setting']->paypal_mode;
	   $site_currency = $setting['setting']->site_currency;
	   if($paypal_mode == 1)
	   {
	     $paypal_url = "https://www.paypal.com/cgi-bin/webscr";
	   }
	   else
	   {
	     $paypal_url = "https://www.sandbox.paypal.com/cgi-bin/webscr";
	   }
	   $success_url = $website_url.'/subscription-success/'.$purchase_token;
	   $cancel_url = $website_url.'/cancel';
	   
	   $stripe_mode = $setting['setting']->stripe_mode;
	   if($stripe_mode == 0)
	   {
	     $stripe_publish_key = $setting['setting']->test_publish_key;
		 $stripe_secret_key = $setting['setting']->test_secret_key;
	   }
	   else
	   {
	     $stripe_publish_key = $setting['setting']->live_publish_key;
		 $stripe_secret_key = $setting['setting']->live_secret_key;
	   }
	   
	   $two_checkout_mode = $setting['setting']->two_checkout_mode;
	   $two_checkout_account = $setting['setting']->two_checkout_account;
	   $two_checkout_publishable = $setting['setting']->two_checkout_publishable;
	   $two_checkout_private = $setting['setting']->two_checkout_private;
	   
	   $payhere_success_url = $website_url.'/subscription-payhere/'.$purchase_token;
	   
	   /* iyzico */
	   $iyzico_api_key = $additional['setting']->iyzico_api_key;
	   $iyzico_secret_key = $additional['setting']->iyzico_secret_key;
	   $iyzico_mode = $additional['setting']->iyzico_mode;
	   if($iyzico_mode == 0)
	   {
		  $iyzico_url = 'https://sandbox-api.iyzipay.com';
	   }
	   else
	   {
		  $iyzico_url = 'https://api.iyzipay.com';
	   }
	   $iyzico_success_url = $website_url.'/subscription-iyzico/admin-'.$purchase_token;
	   /* iyzico */
	   
	   /* flutterwave */
	   $flutterwave_public_key = $additional['setting']->flutterwave_public_key;
	   $flutterwave_secret_key = $additional['setting']->flutterwave_secret_key;
	   $flutterwave_callback = $website_url.'/subscription-flutterwave';
	   /* flutterwave */
	   
	   /* coingate */
	   $coingate_mode = $additional['setting']->coingate_mode;
	   if($coingate_mode == 0)
	   {
	      $coingate_mode_status = "sandbox";
	   }
	   else
	   {
	      $coingate_mode_status = "live";
	   }
	   $coingate_auth_token = $additional['setting']->coingate_auth_token;
	   $coingate_callback = $website_url.'/subscription-coingate';
	   /* coingate */
	   
	   
	   /* ipay */
	   $ipay_mode = $additional['setting']->ipay_mode;
	   $ipay_vendor_id = $additional['setting']->ipay_vendor_id;
	   $ipay_hash_key = $additional['setting']->ipay_hash_key;
	   $ipay_callback = $website_url.'/subscription-ipay';
	   $ipay_url = 'https://payments.ipayafrica.com/v3/ke';
	   /* ipay */
	   
	   /* settings */
	   Subscription::upsubscribeData($user_id,$updatedata);
	   if($payment_method == 'paypal')
		  {
		     
			 $paypal = '<form method="post" id="paypal_form" action="'.$paypal_url.'">
			  <input type="hidden" value="_xclick" name="cmd">
			  <input type="hidden" value="'.$paypal_email.'" name="business">
			  <input type="hidden" value="'.$user_subscr_type.'" name="item_name">
			  <input type="hidden" value="'.$purchase_token.'" name="item_number">
			  <input type="hidden" value="'.$price.'" name="amount">
			  <input type="hidden" value="'.$site_currency.'" name="currency_code">
			  <input type="hidden" value="'.$success_url.'" name="return">
			  <input type="hidden" value="'.$cancel_url.'" name="cancel_return">
			  		  
			</form>';
			$paypal .= '<script>window.paypal_form.submit();</script>';
			echo $paypal;
					 
			 
		  }
		  else if($payment_method == 'ipay')
		  {
		  
		  	 if($site_currency != 'KES')
			   {
			   $convert = Currency::convert()->from($site_currency)->to('KES')->amount($price)->round(2)->get();
		       $price_amount = $convert;
			   }
			   else
			   {
			   $price_amount = $price;
			   }
		     $fields = array("live"=> $ipay_mode, // 0
                    "oid"=> $purchase_token,
                    "inv"=> $purchase_token,
                    "ttl"=> $price_amount,
                    "tel"=> "000000000000",
                    "eml"=> Auth::user()->email,
                    "vid"=> $ipay_vendor_id, // demo
                    "curr"=> "KES",
                    "cbk"=> $ipay_callback,
                    "cst"=> "1",
                    "crl"=> "2"
                    );
            
			$datastring =  $fields['live'].$fields['oid'].$fields['inv'].$fields['ttl'].$fields['tel'].$fields['eml'].$fields['vid'].$fields['curr'].$fields['cbk'].$fields['cst'].$fields['crl'];		
			 $hashkey = $ipay_hash_key; // demoCHANGED
			 $generated_hash = hash_hmac('sha1',$datastring , $hashkey);
			 
			 $ipay = '<form method="post" id="ipay_form" action="'.$ipay_url.'">';
			 foreach ($fields as $key => $value) 
			 { 
			  $ipay .= '<input type="hidden" value="'.$value.'" name="'.$key.'">';
			 } 
			$ipay .= '<input name="hsh" type="hidden" value="'.$generated_hash.'">';  		  
			$ipay .= '</form>';
			$ipay .= '<script>window.ipay_form.submit();</script>';
			echo $ipay;
					 
			 
		  }
		  else if($payment_method == 'coingate')
		  {
		  
		     \CoinGate\CoinGate::config(array(
					'environment'               => $coingate_mode_status, // sandbox OR live
					'auth_token'                => $coingate_auth_token,
					'curlopt_ssl_verifypeer'    => TRUE // default is false
					 ));
					 
			  $post_params = array(
			       'id'                => $purchase_token,
                   'order_id'          => $purchase_token,
                   'price_amount'      => $price,
                   'price_currency'    => $site_currency,
                   'receive_currency'  => $site_currency,
                   'callback_url'      => $coingate_callback,
                   'cancel_url'        => $cancel_url,
                   'success_url'       => $coingate_callback,
                   'title'             => $user_subscr_type,
                   'description'       => $user_subscr_type
				   
               );
                
				$order = \CoinGate\Merchant\Order::create($post_params);
				
				if ($order) {
					//echo $order->status;
					
					Cache::put('coingate_id', $order->id, now()->addDays(1));
					Cache::put('purchase_id', $order->order_id, now()->addDays(1));
					//echo $order->id;
					return redirect($order->payment_url);
					
					
				} else {
					return redirect($cancel_url);
				}
					  //return view('test');
	  		 
			 
		  }
		  else if($payment_method == 'flutterwave')
		  {
		  
		       if($site_currency != 'NGN')
			   {
		       $convert = Currency::convert()->from($site_currency)->to('NGN')->amount($price)->round(2)->get();
			   $price_amount = $convert;
			   }
			   else
			   {
			   $price_amount = $price;
			   }
		       $phone_number = "";
			   $csf_token = csrf_token();
			   $flutterwave = '<form method="post" id="flutterwave_form" action="https://checkout.flutterwave.com/v3/hosted/pay">
	          <input type="hidden" name="public_key" value="'.$flutterwave_public_key.'" />
	          <input type="hidden" name="customer[email]" value="'.Auth::user()->email.'" >
			  <input type="hidden" name="customer[phone_number]" value="'.$phone_number.'" />
			  <input type="hidden" name="customer[name]" value="'.Auth::user()->name.'" />
			  <input type="hidden" name="tx_ref" value="'.$purchase_token.'" />
			  <input type="hidden" name="amount" value="'.$price_amount.'">
			  <input type="hidden" name="currency" value="NGN">
			  <input type="hidden" name="meta[token]" value="'.$csf_token.'">
			  <input type="hidden" name="redirect_url" value="'.$flutterwave_callback.'">
			</form>';
			$flutterwave .= '<script>window.flutterwave_form.submit();</script>';
			echo $flutterwave;
			  
		  
		  }
		  else if($payment_method == 'iyzico')
		  {
		     if($site_currency != 'TRY')
			   {
		       
			   $convert = Currency::convert()->from($site_currency)->to('TRY')->amount($price)->round(2)->get();
			   $price_amount = $convert;
			   }
			   else
			   {
			   $price_amount = number_format((float)$price, 2, '.', '');
			   }
			  
		     $endpoint = $website_url."/app/iyzipay-php/iyzico.php";
			 $client = new Client(['base_uri' => $endpoint]);
             $api_key = $iyzico_api_key;
			 $secret_key = $iyzico_secret_key;
			 $iyzi_url = $iyzico_url;
			 $purchased_token = $purchase_token;
			 $amount = $price_amount;
			 $userids = Auth::user()->id;
			 $usernamer = Auth::user()->name;
             $response = $client->request('GET', $endpoint, ['query' => [
				'iyzico_api_key' => $api_key, 
				'iyzico_secret_key' => $secret_key,
				'iyzico_url' => $iyzi_url,
				'purchase_token' => $purchased_token,
				'price_amount' => $amount,
				'user_id' => $userids,
				'username' => $usernamer,
				'email' => Auth::user()->email,
				'user_token' => Auth::user()->user_token,
				'item_name' => $user_subscr_type,
				'iyzico_success_url' => $iyzico_success_url,
				
			]]);
        
            echo $response->getBody();

		  }
		  else if($payment_method == '2checkout')
		  {
		    
			$two_checkout = '<form method="post" id="two_checkout_form" action="https://www.2checkout.com/checkout/purchase">
			  <input type="hidden" name="sid" value="'.$two_checkout_account.'" />
			  <input type="hidden" name="mode" value="2CO" />
			  <input type="hidden" name="li_0_type" value="product" />
			  <input type="hidden" name="li_0_name" value="'.$user_subscr_type.'" />
			  <input type="hidden" name="li_0_price" value="'.$price.'" />
			  <input type="hidden" name="currency_code" value="'.$site_currency.'" />
			  <input type="hidden" name="merchant_order_id" value="'.$purchase_token.'" />';
			  if($two_checkout_mode == 0)
			  {
			  $two_checkout .= '<input type="hidden" name="card_holder_name" value="John Doe" />
			                 <input type="hidden" name="demo" value="Y" />';
			  
			  }
			  $two_checkout .= '<input type="hidden" name="street_address" value="" />
			  <input type="hidden" name="city" value="" />
			  <input type="hidden" name="state" value="" />
			  <input type="hidden" name="zip" value="" />
			  <input type="hidden" name="country" value="" />
			  <input type="hidden" name="x_receipt_link_url" value="subscription" />
			  <input type="hidden" name="email" value="'.$order_email.'" />
			  </form>';
			$two_checkout .= '<script>window.two_checkout_form.submit();</script>';
			echo $two_checkout;
          } 
		  else if($payment_method == 'payumoney')
		  {
		     $additional['settings'] = Settings::editAdditional();
			 $MERCHANT_KEY = $additional['settings']->payu_merchant_key; // add your id
					$SALT = $additional['settings']->payu_salt_key; // add your id
					if($additional['settings']->payumoney_mode == 1)
					{
					$PAYU_BASE_URL = "https://secure.payu.in";
					}
					else
					{
					$PAYU_BASE_URL = "https://test.payu.in";
					}
				if($site_currency != 'INR')
			   {
		       
			   $convert = Currency::convert()->from($site_currency)->to('INR')->amount($price)->round(2)->get();
			   $price_amount = $convert;
			   }
			   else
			   {
			   $price_amount = $price;
			   }
			   $action = '';
				$txnid = substr(hash('sha256', mt_rand() . microtime()), 0, 20);
				$posted = array();
				$posted = array(
					'key' => $MERCHANT_KEY,
					'txnid' => $txnid,
					'amount' => $price_amount,
					'udf1' => $purchase_token,
					'firstname' => $user_name,
					'email' => $order_email,
					'productinfo' => $user_subscr_type,
					'surl' => $website_url.'/payu_subscription',
					'furl' => $website_url.'/cancel',
					'service_provider' => 'payu_paisa',
				);
				$payu_success = $website_url.'/payu_subscription';
				
				if(empty($posted['txnid'])) {
					$txnid = substr(hash('sha256', mt_rand() . microtime()), 0, 20);
				} 
				else 
				{
					$txnid = $posted['txnid'];
				}
				$hash = '';
				$hashSequence = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";
				if(empty($posted['hash']) && sizeof($posted) > 0) {
					$hashVarsSeq = explode('|', $hashSequence);
					$hash_string = '';  
					foreach($hashVarsSeq as $hash_var) {
						$hash_string .= isset($posted[$hash_var]) ? $posted[$hash_var] : '';
						$hash_string .= '|';
					}
					$hash_string .= $SALT;
				
					$hash = strtolower(hash('sha512', $hash_string));
					$action = $PAYU_BASE_URL . '/_payment';
				} 
				elseif(!empty($posted['hash'])) 
				{
					$hash = $posted['hash'];
					$action = $PAYU_BASE_URL . '/_payment';
				}
				$paymoney = '<form action="'.$action.'" method="post" name="payumoney_form">
            <input type="hidden" name="key" value="'.$MERCHANT_KEY.'" />
            <input type="hidden" name="hash" value="'.$hash.'"/>
            <input type="hidden" name="txnid" value="'.$txnid.'" />
			<input type="hidden" name="udf1" value="'.$purchase_token.'" />
            <input type="hidden" name="amount" value="'.$price_amount.'" />
            <input type="hidden" name="firstname" id="firstname" value="'.$user_name.'" />
            <input type="hidden" name="email" id="email" value="'.$order_email.'" />
            <input type="hidden" name="productinfo" value="'.$user_subscr_type.'">
            <input type="hidden" name="surl" value="'.$payu_success.'" />
            <input type="hidden" name="furl" value="'.$cancel_url.'" />
            <input type="hidden" name="service_provider" value="payu_paisa"  />
			</form>';
			/*if(!$hash) {*/
            $paymoney .= '<script>window.payumoney_form.submit();</script>';
			/*}*/
			echo $paymoney;

			   
		  }
		  else if($payment_method == 'payhere')
		  {
		     $additional['settings'] = Settings::editAdditional();
		     $payhere_mode = $additional['settings']->payhere_mode;
			 if($payhere_mode == 1)
			 {
				$payhere_url = 'https://www.payhere.lk/pay/checkout';
			 }
			 else
			 {
				$payhere_url = 'https://sandbox.payhere.lk/pay/checkout';
			 }
			 $payhere_merchant_id = $additional['settings']->payhere_merchant_id;
			 if($site_currency != 'LKR')
			   {
		       
			   $convert = Currency::convert()->from($site_currency)->to('LKR')->amount($price)->round(2)->get();
			   $price_amount = $convert;
			   }
			   else
			   {
			   $price_amount = $price;
			   }
		      $payhere = '<form method="post" action="'.$payhere_url.'" id="payhere_form">   
							<input type="hidden" name="merchant_id" value="'.$payhere_merchant_id.'">
							<input type="hidden" name="return_url" value="'.$payhere_success_url.'">
							<input type="hidden" name="cancel_url" value="'.$cancel_url.'">
							<input type="hidden" name="notify_url" value="'.$cancel_url.'">  
							<input type="hidden" name="order_id" value="'.$purchase_token.'">
							<input type="hidden" name="items" value="'.$user_subscr_type.'"><br>
							<input type="hidden" name="currency" value="LKR">
							<input type="hidden" name="amount" value="'.$price_amount.'">  
							
							<input type="hidden" name="first_name" value="'.$user_name.'">
							<input type="hidden" name="last_name" value="'.$user_name.'"><br>
							<input type="hidden" name="email" value="'.$order_email.'">
							<input type="hidden" name="phone" value="'.$order_email.'"><br>
							<input type="hidden" name="address" value="'.$user_subscr_type.'">
							<input type="hidden" name="city" value="'.$user_name.'">
							<input type="hidden" name="country" value="'.$user_name.'">
							  
						</form>'; 
						$payhere .= '<script>window.payhere_form.submit();</script>';
			            echo $payhere;
		  
		  }
		 else if($payment_method == 'razorpay')
		  {
		       $additional['settings'] = Settings::editAdditional();
		       if($site_currency != 'INR')
			   {
		       
			   $convert = Currency::convert()->from($site_currency)->to('INR')->amount($price)->round(2)->get();
			   $price_amount = $convert * 100;
			   }
			   else
			   {
			   $price_amount = $price * 100;
			   }
			   
			   $csf_token = csrf_token();
			   
			   $logo_url = $website_url.'/public/storage/settings/'.$setting['setting']->site_logo;
			   $script_url = $website_url.'/resources/views/theme/js/vendor.min.js';
			   $callback = $website_url.'/subscription-razorpay';
			   $razorpay = '
			   <script type="text/javascript" src="'.$script_url.'"></script>
			   <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
			   <script>
				var options = {
					"key": "'.$additional['settings']->razorpay_key.'",
					"amount": "'.$price_amount.'", 
					"currency": "INR",
					"name": "'.$user_subscr_type.'",
					"description": "'.$purchase_token.'",
					"image": "'.$logo_url.'",
					"callback_url": "'.$callback.'",
					"prefill": {
						"name": "'.$user_name.'",
						"email": "'.$order_email.'"
						
					},
					"notes": {
						"address": "'.$user_subscr_type.'"
						
						
					},
					"theme": {
						"color": "'.$setting['setting']->site_theme_color.'"
					}
				};
				var rzp1 = new Razorpay(options);
				rzp1.on("payment.failed", function (response){
						alert(response.error.code);
						alert(response.error.description);
						alert(response.error.source);
						alert(response.error.step);
						alert(response.error.reason);
						alert(response.error.metadata);
				});
				
				$(window).on("load", function() {
					 rzp1.open();
					e.preventDefault();
					});
				</script>';
				echo $razorpay;
					
					
		  }
		   
		 else if($payment_method == 'paystack')
		  {
		       if($site_currency != 'NGN')
			   {
		      
			   $convert = Currency::convert()->from($site_currency)->to('NGN')->amount($price)->round(2)->get();
			   $price_amount = $convert * 100;
			   }
			   else
			   {
			   $price_amount = $price * 100;
			   }
		       
			   
		       $callback = $website_url.'/subscription-paystack';
			   $csf_token = csrf_token();
			   
			   $reference = $request->input('reference');
			   $paystack = '<form method="post" id="stack_form" action="'.route('paystack').'">
					  <input type="hidden" name="_token" value="'.$csf_token.'">
					  <input type="hidden" name="email" value="'.$order_email.'" >
					  <input type="hidden" name="order_id" value="'.$purchase_token.'">
					  <input type="hidden" name="amount" value="'.$price_amount.'">
					  <input type="hidden" name="quantity" value="1">
					  <input type="hidden" name="currency" value="NGN">
					  <input type="hidden" name="reference" value="'.$reference.'">
					  <input type="hidden" name="callback_url" value="'.$callback.'">
					  <input type="hidden" name="metadata" value="'.$purchase_token.'">
					  <input type="hidden" name="key" value="'.$setting['setting']->paystack_secret_key.'">
					</form>';
					$paystack .= '<script>window.stack_form.submit();</script>';
					echo $paystack;
			 
		  }
		 
		 /* wallet */
		 if($payment_method == 'wallet')
		 {
		    if(Auth::user()->earnings >= $price)
			{
			        $user_token = Auth::user()->user_token;
			        $earn_wallet = Auth::user()->earnings - $price;
					$walet_data = array('earnings' => $earn_wallet); 
					Members::updateData($user_token,$walet_data);
					if(Auth::user()->user_type == 'customer')
					{
					  $user_type = 'vendor';
					}
					else
					{
					  $user_type = Auth::user()->user_type;
					}
					$checkoutdata = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'user_subscr_item_level' => $user_subscr_item_level, 'user_subscr_item' => $user_subscr_item, 'user_subscr_download_item' => $user_subscr_download_item, 'user_subscr_space_level' => $user_subscr_space_level, 'user_subscr_space' => $user_subscr_space, 'user_subscr_space_type' => $user_subscr_space_type, 'user_type' => $user_type);
					Subscription::confirmsubscriData($user_id,$checkoutdata);
					/* subscription email */
					$sid = 1;
					$setting['setting'] = Settings::editGeneral($sid);
					$currency = $setting['setting']->site_currency;
					$subscr_price = $subscription_details->subscr_price;
					$subscri_date = $subscription_details->subscr_duration;
					$admin_name = $setting['setting']->sender_name;
					$admin_email = $setting['setting']->sender_email;
					$buyer_name = Auth::user()->name;
					$buyer_email = Auth::user()->email;
					$buyer_data = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'subscr_duration' =>  $subscri_date, 'subscr_price' => $subscr_price, 'currency' => $currency); 
					/* email template code */
					$checktemp = EmailTemplate::checkTemplate(20);
					if($checktemp != 0)
					{
						$template_view['mind'] = EmailTemplate::viewTemplate(20);
						$template_subject = $template_view['mind']->et_subject;
					}
					else
					{
						$template_subject = "Subscription Upgrade";
					}
					/* email template code */
					Mail::send('subscription_mail', $buyer_data , function($message) use ($admin_name, $admin_email, $buyer_name, $buyer_email, $template_subject) {
						$message->to($buyer_email, $buyer_name)
						->subject($template_subject);
						$message->from($admin_email,$admin_name);
					});
					/* subscription email */
                    return view('success');
					
			} 
			else
			{
			    return redirect()->back()->with('error', 'Please check your wallet balance amount');
			}
		 
		 }
		 
		 /* localbank */
		 if($payment_method == 'localbank')
		 {
			$bank_data = array('purchase_token' => $purchase_token, 'bank_details' => $bank_details);
			return view('upgrade-bank-details')->with($bank_data);
		 }
		  
		  
		  /* stripe code */
		  if($payment_method == 'stripe')
		  {
		     
			 			 
				$stripe = array(
					"secret_key"      => $stripe_secret_key,
					"publishable_key" => $stripe_publish_key
				);
			 
				\Stripe\Stripe::setApiKey($stripe['secret_key']);
			 
				
				$customer = \Stripe\Customer::create(array(
					'email' => $order_email,
					'source'  => $token
				));
			 
				
				$subscribe_name = $user_subscr_type;
				$subscribe_price = $price * 100;
				$currency = $site_currency;
				$book_id = $purchase_token;
			 
				
				$charge = \Stripe\Charge::create(array(
					'customer' => $customer->id,
					'amount'   => $subscribe_price,
					'currency' => $currency,
					'description' => $subscribe_name,
					'metadata' => array(
						'order_id' => $book_id
					)
				));
			 
				
				$chargeResponse = $charge->jsonSerialize();
			 
				
				if($chargeResponse['paid'] == 1 && $chargeResponse['captured'] == 1) 
				{
			 
					
										
					$payment_token = $chargeResponse['balance_transaction'];
					$purchased_token = $book_id;
					if(Auth::user()->user_type == 'customer')
					{
						$user_type = 'vendor';
					}
					else
					{
						$user_type = Auth::user()->user_type;
					}
					$checkoutdata = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'user_subscr_item_level' => $user_subscr_item_level, 'user_subscr_item' => $user_subscr_item, 'user_subscr_download_item' => $user_subscr_download_item, 'user_subscr_space_level' => $user_subscr_space_level, 'user_subscr_space' => $user_subscr_space, 'user_subscr_space_type' => $user_subscr_space_type, 'user_type' => $user_type);
					Subscription::confirmsubscriData($user_id,$checkoutdata);
					/* subscription email */
					$sid = 1;
					$setting['setting'] = Settings::editGeneral($sid);
					$currency = $setting['setting']->site_currency;
					$subscr_price = $subscription_details->subscr_price;
					$subscri_date = $subscription_details->subscr_duration;
					$admin_name = $setting['setting']->sender_name;
					$admin_email = $setting['setting']->sender_email;
					$buyer_name = Auth::user()->name;
					$buyer_email = Auth::user()->email;
					$buyer_data = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'subscr_duration' =>  $subscri_date, 'subscr_price' => $subscr_price, 'currency' => $currency); 
					/* email template code */
					$checktemp = EmailTemplate::checkTemplate(20);
					if($checktemp != 0)
					{
						$template_view['mind'] = EmailTemplate::viewTemplate(20);
						$template_subject = $template_view['mind']->et_subject;
					}
					else
					{
						$template_subject = "Subscription Upgrade";
					}
					/* email template code */
					Mail::send('subscription_mail', $buyer_data , function($message) use ($admin_name, $admin_email, $buyer_name, $buyer_email, $template_subject) {
						$message->to($buyer_email, $buyer_name)
						->subject($template_subject);
						$message->from($admin_email,$admin_name);
					});
					/* subscription email */
					$data_record = array('payment_token' => $payment_token);
					return view('success')->with($data_record);
					
					
				}
		     
		  
		  }
		  /* stripe code */
		  $subscr_id = $user_subscr_id;
	   	  $subscr['view'] = Subscription::getSubscription($subscr_id);
	      $get_payment = explode(',', $setting['setting']->payment_option);
	      $totaldata = array('subscr' => $subscr, 'get_payment' => $get_payment);
		  return view('confirm-subscription')->with($totaldata);
	
	
	
	}
	
	/* subscription */
	
	
	public function razorpay_payment(Request $request)
    {
	    $sid = 1;
	    $setting['setting'] = Settings::editGeneral($sid);
		$additional['settings'] = Settings::editAdditional();
        $input = $request->all();

        $api = new Api($additional['settings']->razorpay_key, $additional['settings']->razorpay_secret);

        $payment = $api->payment->fetch($input['razorpay_payment_id']);
        
        $user_id = Auth::user()->id;

        //dd($paymentDetails);
         //print_r($paymentDetails);
		if(count($input)  && !empty($input['razorpay_payment_id'])) 
		{
		
		 $payment_token = $input['razorpay_payment_id'];
		 $purchased_token = $payment->description;
		 $subscr_id = Auth::user()->user_subscr_id;
		 $subscr['view'] = Subscription::editsubData($subscr_id);
		 $subscri_date = $subscr['view']->subscr_duration;
		 $user_subscr_item_level = $subscr['view']->subscr_item_level;
		 $user_subscr_item = $subscr['view']->subscr_item;
		 $user_subscr_download_item = $subscr['view']->subscr_download_item;
		 $user_subscr_space_level = $subscr['view']->subscr_space_level;
		 $user_subscr_space = $subscr['view']->subscr_space;
		 $user_subscr_space_type = $subscr['view']->subscr_space_type;
		 $user_subscr_type = $subscr['view']->subscr_name;
		 $subscr_value = "+".$subscri_date;
		 $subscr_date = date('Y-m-d', strtotime($subscr_value));
		 $user_id = Auth::user()->id;
		 if(Auth::user()->user_type == 'customer')
		 {
			$user_type = 'vendor';
		 }
		 else
		 {
			$user_type = Auth::user()->user_type;
		 }
		 $checkoutdata = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'user_subscr_item_level' => $user_subscr_item_level, 'user_subscr_item' => $user_subscr_item, 'user_subscr_download_item' => $user_subscr_download_item, 'user_subscr_space_level' => $user_subscr_space_level, 'user_subscr_space' => $user_subscr_space, 'user_subscr_space_type' => $user_subscr_space_type, 'user_type' => $user_type);
		 Subscription::confirmsubscriData($user_id,$checkoutdata);
		 /* subscription email */
		 $sid = 1;
		 $setting['setting'] = Settings::editGeneral($sid);
		 $currency = $setting['setting']->site_currency;
		 $subscr_price = $subscr['view']->subscr_price;
		 $subscri_date = $subscr['view']->subscr_duration;
		 $admin_name = $setting['setting']->sender_name;
		 $admin_email = $setting['setting']->sender_email;
		 $buyer_name = Auth::user()->name;
		 $buyer_email = Auth::user()->email;
		 $buyer_data = array('user_subscr_type' => $user_subscr_type, 'user_subscr_date' => $subscr_date, 'subscr_duration' =>  $subscri_date, 'subscr_price' => $subscr_price, 'currency' => $currency); 
		 /* email template code */
		 $checktemp = EmailTemplate::checkTemplate(20);
		 if($checktemp != 0)
		 {
			$template_view['mind'] = EmailTemplate::viewTemplate(20);
			$template_subject = $template_view['mind']->et_subject;
		 }
		 else
		 {
			$template_subject = "Subscription Upgrade";
		 }
		 /* email template code */
		 Mail::send('subscription_mail', $buyer_data , function($message) use ($admin_name, $admin_email, $buyer_name, $buyer_email, $template_subject) {
							$message->to($buyer_email, $buyer_name)
							->subject($template_subject);
							$message->from($admin_email,$admin_name);
		 });
		/* subscription email */
        $result_data = array('payment_token' => $payment_token);
		return view('success')->with($result_data);
	    } 
		else
		{
		  return redirect('/cancel');
		}
		
        
    }
	
	
	
    public function view_profile_settings()
    {   
	    $user_id = Auth::user()->id;
	    $count_mode = Settings::checkuserSubscription($user_id);
	    $get_payment = explode(',', Auth::user()->user_payment_option);
	    /*$payment_option = array('paypal','stripe','paystack','razorpay');*/
		$sid = 1;
	    $setting['setting'] = Settings::editGeneral($sid);
		$payment_option = explode(',', $setting['setting']->vendor_payment_option);
        return view('profile-settings', [ 'payment_option' => $payment_option, 'get_payment' => $get_payment, 'count_mode' => $count_mode]);
    }
	
	
	
	public function update_profile(Request $request)
	{
	   $additional = Settings::editAdditional();
	   $name = $request->input('name');
	   $username = $request->input('username');
       $email = $request->input('email');
		 
		 
		 if(!empty($request->input('password')))
		 {
		 $password = bcrypt($request->input('password'));
		 $pass = $password;
		 $user_auth_token = base64_encode($request->input('password'));
		 }
		 else
		 {
		 $pass = $request->input('save_password');
		 $user_auth_token = $request->input('save_auth_token');
		 }
		  
		 
		 if(!empty($request->input('website')))
		 {
		 $website  = $request->input('website');
		 $website_url = $website;
		 }
		 else
		 {
		 $website_url = "";
		 }
		 $country = $request->input('country');
		 
		 $profile_heading = $request->input('profile_heading');
		 
		 $about = $request->input('about');
		 
		 if(!empty($request->input('facebook_url')))
		 {
		 $facebook_url  = $request->input('facebook_url');
		 $facebook = $facebook_url;
		 }
		 else
		 {
		 $facebook = "";
		 }
		 
		 
		 if(!empty($request->input('twitter_url')))
		 {
		 $twitter_url  = $request->input('twitter_url');
		 $twitter = $twitter_url;
		 }
		 else
		 {
		 $twitter = "";
		 }
		 
		 
		 if(!empty($request->input('gplus_url')))
		 {
		 $gplus_url  = $request->input('gplus_url');
		 $gplus = $gplus_url;
		 }
		 else
		 {
		 $gplus = "";
		 }
		 
		 if(!empty($request->input('instagram_url')))
		 {
		 $instagram_url  = $request->input('instagram_url');
		 
		 }
		 else
		 {
		 $instagram_url = "";
		 }
		 
		 if(!empty($request->input('linkedin_url')))
		 {
		 $linkedin_url  = $request->input('linkedin_url');
		 
		 }
		 else
		 {
		 $linkedin_url = "";
		 }
		 
		 if(!empty($request->input('pinterest_url')))
		 {
		 $pinterest_url  = $request->input('pinterest_url');
		 
		 }
		 else
		 {
		 $pinterest_url = "";
		 }
		 
		 
		 if(!empty($request->input('item_update_email')))
		 {
		 $item_update_email  = $request->input('item_update_email');
		 $item_update = $item_update_email;
		 }
		 else
		 {
		 $item_update = 0;
		 }
		 
		 
		 if(!empty($request->input('item_comment_email')))
		 {
		 $item_comment_email  = $request->input('item_comment_email');
		 $item_comment = $item_comment_email;
		 }
		 else
		 {
		 $item_comment = 0;
		 }
		 
		 
		 if(!empty($request->input('item_review_email')))
		 {
		 $item_review_email  = $request->input('item_review_email');
		 $item_review = $item_review_email;
		 }
		 else
		 {
		 $item_review = 0;
		 }
		 
		 
		 if(!empty($request->input('buyer_review_email')))
		 {
		 $buyer_review_email  = $request->input('buyer_review_email');
		 $buyer_review = $buyer_review_email;
		 }
		 else
		 {
		 $buyer_review = 0;
		 }
		 
		 
		 
		 if(!empty($request->input('user_freelance')))
		 {
		 $user_freelance  = $request->input('user_freelance');
		 $freelance = $user_freelance;
		 }
		 else
		 {
		 $freelance = 0;
		 }
		 
		 $country_badge = $request->input('country_badge');
		 $exclusive_author = $request->input('exclusive_author');
		 
		 if(!empty($request->input('user_message_permission')))
		 {
		 $user_message_permission  = $request->input('user_message_permission');
		 
		 }
		 else
		 {
		 $user_message_permission = 0;
		 }
		 
		 /*  $earnings = $request->input('save_earnings');*/
		 $allsettings = Settings::allSettings();
		  $image_size = $allsettings->site_max_image_size;
		  
		  $id = $request->input('id');
		  
		  $token = $request->input('user_token');
		  
		  if(!empty($request->input('user_payment_option')))
		   {
			 $payment = "";
			 foreach($request->input('user_payment_option') as $payment_option)
			 {
				$payment .= $payment_option.',';
			 }
			 $user_payment_option = rtrim($payment,',');
		   }
		   else
		   {
		   $user_payment_option = "";
		   }
		   $user_paypal_email = $request->input('user_paypal_email');
		   $user_paypal_mode = $request->input('user_paypal_mode');
		   $user_stripe_mode = $request->input('user_stripe_mode');
		   $user_test_publish_key = $request->input('user_test_publish_key');
		   $user_test_secret_key = $request->input('user_test_secret_key');
		   $user_live_publish_key = $request->input('user_live_publish_key');
		   $user_live_secret_key = $request->input('user_live_secret_key');
		   $user_paystack_public_key = $request->input('user_paystack_public_key');
		   $user_paystack_secret_key = $request->input('user_paystack_secret_key');
		   $user_paystack_merchant_email = $request->input('user_paystack_merchant_email');
		   $user_razorpay_key = $request->input('user_razorpay_key');
		   $user_razorpay_secret = $request->input('user_razorpay_secret');
		   
		   $user_payhere_mode = $request->input('user_payhere_mode');
		   $user_payhere_merchant_id = $request->input('user_payhere_merchant_id');
		   $user_payumoney_mode = $request->input('user_payumoney_mode');
		   $user_payu_merchant_key = $request->input('user_payu_merchant_key');
		   $user_payu_salt_key = $request->input('user_payu_salt_key');
		   
		   $user_two_checkout_mode = $request->input('user_two_checkout_mode');
		   $user_two_checkout_account = $request->input('user_two_checkout_account');
		   $user_two_checkout_publishable = $request->input('user_two_checkout_publishable');
		   $user_two_checkout_private = $request->input('user_two_checkout_private');
		   
		   $user_iyzico_api_key = $request->input('user_iyzico_api_key');
		   $user_iyzico_secret_key = $request->input('user_iyzico_secret_key');
		   $user_iyzico_mode = $request->input('user_iyzico_mode');
		   
		   $user_flutterwave_public_key = $request->input('user_flutterwave_public_key');
		   $user_flutterwave_secret_key = $request->input('user_flutterwave_secret_key');
		   
		   $user_coingate_mode = $request->input('user_coingate_mode');
		   $user_coingate_auth_token = $request->input('user_coingate_auth_token');
		   
		    $user_ipay_mode = $request->input('user_ipay_mode');
			$user_ipay_vendor_id = $request->input('user_ipay_vendor_id');
			$user_ipay_hash_key = $request->input('user_ipay_hash_key');
		   
		   $additional_settings = Settings::editAdditional();
         
		 $request->validate([
							'name' => 'required',
							'username' => 'required',
							'email' => 'required|email',
							'password' => 'confirmed|min:6',
							'user_photo' => 'mimes:jpeg,jpg,png,gif|max:'.$image_size,
							'user_banner' => 'mimes:jpeg,jpg,png,gif|max:'.$image_size,
							
         ]);
		 $rules = array(
				'username' => ['required', 'regex:/^[\w-]*$/', 'max:255', Rule::unique('users') ->ignore($id, 'id') -> where(function($sql){ $sql->where('drop_status','=','no');})],
				'email' => ['required', 'email', 'max:255', Rule::unique('users') ->ignore($id, 'id') -> where(function($sql){ $sql->where('drop_status','=','no');})],
				
	     );
		 
		 $messsages = array(
		      
	    );
		 
		$validator = Validator::make($request->all(), $rules,$messsages);
		
		if ($validator->fails()) 
		{
		 $failedRules = $validator->failed();
		 return back()->withErrors($validator);
		} 
		else
		{
		
		if ($request->hasFile('user_photo')) {
		     
			Members::droPhoto($token); 
		   
			$image = $request->file('user_photo');
			$img_name = time() . '.'.$image->getClientOriginalExtension();
			$destinationPath = public_path('/storage/users');
			$imagePath = $destinationPath. "/".  $img_name;
			$image->move($destinationPath, $img_name);
			$img=Image::make(public_path('/storage/users/'.$img_name));
			$img->save(base_path('public/storage/users/'.$img_name),$additional->image_quality);
			$user_image = $img_name;
		  }
		  else
		  {
		     $user_image = $request->input('save_photo');
		  }
		  
		 
		 if ($request->hasFile('user_banner')) {
		     
			Members::droBanner($token); 
		   
			$image = $request->file('user_banner');
			$img_name = time() . '456.'.$image->getClientOriginalExtension();
			$destinationPath = public_path('/storage/users');
			$imagePath = $destinationPath. "/".  $img_name;
			$image->move($destinationPath, $img_name);
			$img=Image::make(public_path('/storage/users/'.$img_name));
			$img->save(base_path('public/storage/users/'.$img_name),$additional->image_quality);
			$user_banner = $img_name;
		  }
		  else
		  {
		     $user_banner = $request->input('save_banner');
		  }
		 
		 
		 
		 
		$data = array('password' => $pass, 'website' => $website_url, 'country' => $country, 'profile_heading' => $profile_heading, 'about' => $about, 'facebook_url' => $facebook, 'twitter_url' => $twitter, 'gplus_url' => $gplus,  'user_photo' => $user_image, 'user_banner' => $user_banner, 'item_update_email' => $item_update, 'item_comment_email' => $item_comment, 'item_review_email' => $item_review, 'buyer_review_email' => $buyer_review, 'updated_at' => date('Y-m-d H:i:s'), 'user_freelance' => $freelance, 'country_badge' => $country_badge, 'exclusive_author' => $exclusive_author, 'user_payment_option' => $user_payment_option, 'user_paypal_email' => $user_paypal_email, 'user_paypal_mode' => $user_paypal_mode, 'user_stripe_mode' => $user_stripe_mode, 'user_test_publish_key' => $user_test_publish_key, 'user_test_secret_key' => $user_test_secret_key, 'user_live_publish_key' => $user_live_publish_key, 'user_live_secret_key' => $user_live_secret_key, 'user_paystack_public_key' => $user_paystack_public_key,  'user_paystack_secret_key' => $user_paystack_secret_key, 'user_paystack_merchant_email' => $user_paystack_merchant_email, 'user_razorpay_key' => $user_razorpay_key, 'user_razorpay_secret' => $user_razorpay_secret, 'user_payhere_mode' => $user_payhere_mode, 'user_payhere_merchant_id' => $user_payhere_merchant_id, 'user_payumoney_mode' => $user_payumoney_mode, 'user_payu_merchant_key' => $user_payu_merchant_key, 'user_payu_salt_key' => $user_payu_salt_key, 'user_auth_token' => $user_auth_token, 'user_two_checkout_mode' => $user_two_checkout_mode, 'user_two_checkout_account' => $user_two_checkout_account, 'user_two_checkout_publishable' => $user_two_checkout_publishable, 'user_two_checkout_private' => $user_two_checkout_private, 'user_message_permission' => $user_message_permission, 'user_iyzico_api_key' => $user_iyzico_api_key, 'user_iyzico_secret_key' => $user_iyzico_secret_key, 'user_iyzico_mode' => $user_iyzico_mode, 'user_flutterwave_public_key' => $user_flutterwave_public_key, 'user_flutterwave_secret_key' => $user_flutterwave_secret_key, 'user_coingate_mode' => $user_coingate_mode, 'user_coingate_auth_token' => $user_coingate_auth_token, 'user_ipay_mode' => $user_ipay_mode, 'user_ipay_vendor_id' => $user_ipay_vendor_id, 'user_ipay_hash_key' => $user_ipay_hash_key, 'instagram_url' => $instagram_url, 'linkedin_url' => $linkedin_url, 'pinterest_url' => $pinterest_url);
 
           Members::updateData($token, $data);
           if(!empty($request->input('become-vendor')))
		   {
		   $become_vendor = $request->input('become-vendor');
		      if($become_vendor == 1)
			  {
			     if($additional_settings->subscription_mode == 1)
			     {
				 $free_subscr_type = $additional_settings->free_subscr_type;
				 $free_subscr_price = $additional_settings->free_subscr_price;
				 $free_subscr_duration = $additional_settings->free_subscr_duration;
				 $free_subscr_item = $additional_settings->free_subscr_item;
				 $free_subscr_space = $additional_settings->free_subscr_space;
				 $subscr_value = "+".$free_subscr_duration;
				 $user_subscr_item_level = 'limited';
				 $user_subscr_space_level = 'limited';
				 $user_subscr_space_type = 'MB';
				 $subscr_date = date('Y-m-d', strtotime($subscr_value));
				 $days_ago = date('Y-m-d', strtotime('-3 days'));
					 if($additional_settings->free_subscription == 1)
					 {
					 $data_value = array('user_type' => 'vendor', 'user_subscr_type' => $free_subscr_type, 'user_subscr_price' => $free_subscr_price, 'user_subscr_date' => $subscr_date, 'user_subscr_item_level' => $user_subscr_item_level, 'user_subscr_item' => $free_subscr_item, 'user_subscr_space_level' => $user_subscr_space_level, 'user_subscr_space' => $free_subscr_space, 'user_subscr_space_type' => $user_subscr_space_type);
					 }
					 else
					 {
					  $data_value = array('user_type' => 'vendor', 'user_subscr_type' => $free_subscr_type, 'user_subscr_price' => $free_subscr_price, 'user_subscr_date' => $days_ago, 'user_subscr_item_level' => $user_subscr_item_level, 'user_subscr_item' => 0, 'user_subscr_space_level' => $user_subscr_space_level, 'user_subscr_space' => 0, 'user_subscr_space_type' => $user_subscr_space_type);
					 }
				 }
				 else
				 {
				 $data_value = array('user_type' => 'vendor');
				 }
				 Members::updateData($token, $data_value);
			  }  
		   }
		   else
		   {
			   $become_vendor = 0;
		   } 
		   return redirect()->back()->with('success', 'Update successfully.');
            
 
       } 
     
       
	
	
	}
	
	
	
	
}
