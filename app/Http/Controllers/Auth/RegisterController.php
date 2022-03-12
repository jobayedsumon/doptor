<?php

namespace Fickrr\Http\Controllers\Auth;

use Fickrr\User;
use Fickrr\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use Illuminate\Auth\Events\Registered;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Input;
use Fickrr\Models\Members;
use Fickrr\Models\EmailTemplate;
use Fickrr\Models\Settings;
use Mail;
use Illuminate\Support\Facades\Cookie;
use URL;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }
    
	public function register(Request $request)
    {
         $encrypter = app('Illuminate\Contracts\Encryption\Encrypter');
		 $allsettings = Settings::allSettings();
		 $user_type = $encrypter->decrypt($request->input('user_type'));
		 $additional_settings = Settings::editAdditional();
		 $free_subscr_type = $additional_settings->free_subscr_type;
		 $free_subscr_price = $additional_settings->free_subscr_price;
		 $free_subscr_duration = $additional_settings->free_subscr_duration;
		 $free_subscr_item = $additional_settings->free_subscr_item;
		 $free_subscr_download_item = $additional_settings->subscr_download_items;
		 $free_subscr_space = $additional_settings->free_subscr_space;
		 $subscr_value = "+".$free_subscr_duration;
		 $user_subscr_item_level = 'limited';
		 $user_subscr_space_level = 'limited';
		 $user_subscr_space_type = 'MB';
		 $subscr_date = date('Y-m-d', strtotime($subscr_value));
		 $name = $request->input('name');
		 $username = $request->input('username');
         $email = $request->input('email');
		 
		 $password = bcrypt($request->input('password'));
		 $user_auth_token = base64_encode($request->input('password'));
		 if(!empty($request->input('earnings')))
		 {
		 $earnings = $request->input('earnings');
         }
		 else
		 {
		   $earnings = 0;
		 }
		 if(!empty(Cookie::get('referral')))
		 {
	      $referral_by = decrypt(Cookie::get('referral'));
		  /*$referral_commission = $allsettings->site_referral_commission;
		  $check_referral = Members::referralCheck($referral_by);
		  if($check_referral != 0)
		  {
			  $referred['display'] = Members::referralUser($referral_by);
			  $wallet_amount = $referred['display']->earnings + $referral_commission;
			  $referral_amount = $referred['display']->referral_amount + $referral_commission;
			  $referral_count = $referred['display']->referral_count + 1;
			  
			  $update_data = array('earnings' => $wallet_amount, 'referral_amount' => $referral_amount, 'referral_count' => $referral_count);
			  Members::updateReferral($referral_by,$update_data);
		   }*/
		   $referral_payout = 'pending'; 
         }
		 else
		 {
		  $referral_by = "";
		  $referral_payout = "";
		 }
		 
		
		if($additional_settings->site_google_recaptcha == 1)
		{
			$request->validate([
								'name' => 'required',
								'username' => 'required',
								'email' => 'required|email',
								'password' => ['required', 'min:6'],
								'g-recaptcha-response' => 'required|captcha',
								
								
			 ]);
		 }
		 else
		 {
		    $request->validate([
								'name' => 'required',
								'username' => 'required',
								'email' => 'required|email',
								'password' => ['required', 'min:6'],
								
								
								
			 ]);
		 }
		 $rules = array(
				'username' => ['required', 'regex:/^[\w-]*$/', 'max:255', Rule::unique('users') -> where(function($sql){ $sql->where('drop_status','=','no');})],
				'email' => ['required', 'email', 'max:255', Rule::unique('users') -> where(function($sql){ $sql->where('drop_status','=','no');})],
				
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
		
		  if($allsettings->email_verification == 1)
		  {
		  $verified = 0;
		  }
		  else
		  {
		  $verified = 1;
		  }
		  $user_token = $this->generateRandomString();
		  $days_ago = date('Y-m-d', strtotime('-1 days'));
		  $register_url = URL::to('/user-verify/').'/'.$user_token;
		if($additional_settings->subscription_mode == 1)
		{  
			if($user_type == 'vendor')
			{ 
			  if($additional_settings->free_subscription == 1)
			  {
			
				$data = array('name' => $name, 'username' => $username, 'email' => $email, 'user_type' => $user_type, 'password' => $password, 'earnings' => $earnings, 'verified' => $verified, 'created_at' => date('Y-m-d H:i:s'), 'updated_at' => date('Y-m-d H:i:s'), 'user_token' => $user_token, 'referral_by' => $referral_by, 'referral_payout' => $referral_payout, 'user_subscr_type' => $free_subscr_type, 'user_subscr_price' => $free_subscr_price, 'user_subscr_date' => $subscr_date, 'user_subscr_item_level' => $user_subscr_item_level, 'user_subscr_item' => $free_subscr_item, 'user_subscr_download_item' => $free_subscr_download_item,  'user_subscr_space_level' => $user_subscr_space_level, 'user_subscr_space' => $free_subscr_space, 'user_subscr_space_type' => $user_subscr_space_type, 'user_auth_token' => $user_auth_token, 'register_url' => $register_url);
			  }
			  else
			  {
			     $data = array('name' => $name, 'username' => $username, 'email' => $email, 'user_type' => $user_type, 'password' => $password, 'earnings' => $earnings, 'verified' => $verified, 'created_at' => date('Y-m-d H:i:s'), 'updated_at' => date('Y-m-d H:i:s'), 'user_token' => $user_token, 'referral_by' => $referral_by, 'referral_payout' => $referral_payout, 'user_subscr_type' => $free_subscr_type, 'user_subscr_price' => $free_subscr_price, 'user_subscr_date' => $days_ago, 'user_subscr_item_level' => $user_subscr_item_level, 'user_subscr_item' => 0, 'user_subscr_download_item' => $free_subscr_download_item, 'user_subscr_space_level' => $user_subscr_space_level, 'user_subscr_space' => 0, 'user_subscr_space_type' => $user_subscr_space_type, 'user_auth_token' => $user_auth_token, 'register_url' => $register_url);
			  }	
				
			}
			else
			{
			   $data = array('name' => $name, 'username' => $username, 'email' => $email, 'user_type' => $user_type, 'password' => $password, 'earnings' => $earnings, 'verified' => $verified, 'created_at' => date('Y-m-d H:i:s'), 'updated_at' => date('Y-m-d H:i:s'), 'user_token' => $user_token, 'referral_by' => $referral_by, 'referral_payout' => $referral_payout, 'user_auth_token' => $user_auth_token, 'user_subscr_download_item' => $free_subscr_download_item, 'register_url' => $register_url);
			}
		}	
		else
		{
			$data = array('name' => $name, 'username' => $username, 'email' => $email, 'user_type' => $user_type, 'password' => $password, 'earnings' => $earnings, 'verified' => $verified, 'created_at' => date('Y-m-d H:i:s'), 'updated_at' => date('Y-m-d H:i:s'), 'user_token' => $user_token, 'referral_by' => $referral_by, 'referral_payout' => $referral_payout, 'user_auth_token' => $user_auth_token, 'register_url' => $register_url, 'user_subscr_download_item' => 1000);
		}
		Members::insertData($data);
		if($allsettings->email_verification == 1)
		{
		$sid = 1;
		$setting['setting'] = Settings::editGeneral($sid);
		$from_name = $setting['setting']->sender_name;
        $from_email = $setting['setting']->sender_email;
		
		/* email template code */
	          $checktemp = EmailTemplate::checkTemplate(9);
			  if($checktemp != 0)
			  {
			  $template_view['mind'] = EmailTemplate::viewTemplate(9);
			  $template_subject = $template_view['mind']->et_subject;
			  }
			  else
			  {
			  $template_subject = "Email Confirmation For Registration";
			  }
			  /* email template code */
		Mail::send('register_mail', $data, function($message) use ($from_name, $from_email, $email, $name, $user_token, $register_url, $template_subject) {
			$message->to($email, $name)
					->subject($template_subject);
			$message->from($from_email,$from_name);
		});
        return redirect('login')->with('success','We sent you an activation code. Check your email and click on the link to verify.');	
        }
		else
		{
		 return redirect('login')->with('success','Your account has been created. You can now login.');
		}
            
       
	   }

        // $this->guard()->login($user);

        
    }
	
    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
			'username' => ['required', 'regex:/^[\w-]*$/', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:6', 'confirmed'],
			'g-recaptcha-response' => 'required|captcha',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \Fickrr\User
     */
	public function generateRandomString($length = 25) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
    } 
	 
    protected function create(array $data)
    {
	    $encrypter = app('Illuminate\Contracts\Encryption\Encrypter');
	    $allsettings = Settings::allSettings();
		$user_type = $encrypter->decrypt($data['user_type']);
		if(!empty(Cookie::get('referral')))
		 {
	      $referral_by = decrypt(Cookie::get('referral'));
		  /*$referral_commission = $allsettings->site_referral_commission;
		  $check_referral = Members::referralCheck($referral_by);
		  if($check_referral != 0)
		  {
			  $referred['display'] = Members::referralUser($referral_by);
			  $wallet_amount = $referred['display']->earnings + $referral_commission;
			  $referral_amount = $referred['display']->referral_amount + $referral_commission;
			  $referral_count = $referred['display']->referral_count + 1;
			  
			  $update_data = array('earnings' => $wallet_amount, 'referral_amount' => $referral_amount, 'referral_count' => $referral_count);
			  Members::updateReferral($referral_by,$update_data);
		   } */
		   $referral_payout = 'pending';
         }
		 else
		 {
		  $referral_by = "";
		  $referral_payout = "";
		 }
		$token = $this->generateRandomString();
		$additional_settings = Settings::editAdditional();
		$free_subscr_type = $additional_settings->free_subscr_type;
		 $free_subscr_price = $additional_settings->free_subscr_price;
		 $free_subscr_duration = $additional_settings->free_subscr_duration;
		 $free_subscr_item = $additional_settings->free_subscr_item;
		 $free_subscr_download_item = $additional_settings->subscr_download_items;
		 $free_subscr_space = $additional_settings->free_subscr_space;
		 $subscr_value = "+".$free_subscr_duration;
		 $user_subscr_item_level = 'limited';
		 $user_subscr_space_level = 'limited';
		 $user_subscr_space_type = 'MB';
		 $subscr_date = date('Y-m-d', strtotime($subscr_value));
		 $days_ago = date('Y-m-d', strtotime('-3 days'));

		if($additional_settings->site_google_recaptcha == 1)
		{
		   if($additional_settings->subscription_mode == 1)
		   {
			   if($user_type == 'vendor')
			   {
			      if($additional_settings->free_subscription == 1)
			      {
					return User::create([
						'name' => $data['name'],
						'email' => $data['email'],
						'username' => $data['username'],
						'password' => Hash::make($data['password']),
						'user_auth_token' => base64_encode($data['password']),
						'user_token' => $token,
						'earnings' => 0,
						'user_type' => $encrypter->decrypt($data['user_type']),
						'referral_by' => $referral_by, 
						'referral_payout' => $referral_payout,
						'g-recaptcha-response' => 'required|captcha',
						'user_subscr_type' => $free_subscr_type, 
						'user_subscr_price' => $free_subscr_price, 
						'user_subscr_date' => $subscr_date, 
						'user_subscr_item_level' => $user_subscr_item_level, 
						'user_subscr_item' => $free_subscr_item,
						'user_subscr_download_item' => $free_subscr_download_item, 
						'user_subscr_space_level' => $user_subscr_space_level, 
						'user_subscr_space' => $free_subscr_space, 
						'user_subscr_space_type' => $user_subscr_space_type,  
					]);
				  }
				  else
				  {
				      return User::create([
						'name' => $data['name'],
						'email' => $data['email'],
						'username' => $data['username'],
						'password' => Hash::make($data['password']),
						'user_auth_token' => base64_encode($data['password']),
						'user_token' => $token,
						'earnings' => 0,
						'user_type' => $encrypter->decrypt($data['user_type']),
						'referral_by' => $referral_by, 
						'referral_payout' => $referral_payout,
						'g-recaptcha-response' => 'required|captcha',
						'user_subscr_type' => $free_subscr_type, 
						'user_subscr_price' => $free_subscr_price, 
						'user_subscr_date' => $days_ago, 
						'user_subscr_item_level' => $user_subscr_item_level, 
						'user_subscr_item' => 0, 
						'user_subscr_download_item' => $free_subscr_download_item,
						'user_subscr_space_level' => $user_subscr_space_level, 
						'user_subscr_space' => 0, 
						'user_subscr_space_type' => $user_subscr_space_type,  
					]);
				  }	// free subscription closed
			   } // vendor closed
		   }// subscription closed	   
		   else
		   {
		       return User::create([
				'name' => $data['name'],
				'email' => $data['email'],
				'username' => $data['username'],
				'password' => Hash::make($data['password']),
				'user_auth_token' => base64_encode($data['password']),
				'user_token' => $token,
				'earnings' => 0,
				'user_type' => $encrypter->decrypt($data['user_type']),
				'referral_by' => $referral_by, 
				'referral_payout' => $referral_payout,
				'g-recaptcha-response' => 'required|captcha',
				'user_subscr_download_item' => 1000,
				]);
		   }
		}
		else
		{
		   if($additional_settings->subscription_mode == 1)
		   {
			   if($user_type == 'vendor')
			   {
			      if($additional_settings->free_subscription == 1)
			      {
				   return User::create([
						'name' => $data['name'],
						'email' => $data['email'],
						'username' => $data['username'],
						'password' => Hash::make($data['password']),
						'user_auth_token' => base64_encode($data['password']),
						'user_token' => $token,
						'earnings' => 0,
						'user_type' => $encrypter->decrypt($data['user_type']),
						'referral_by' => $referral_by, 
						'referral_payout' => $referral_payout,
						'user_subscr_type' => $free_subscr_type, 
						'user_subscr_price' => $free_subscr_price, 
						'user_subscr_date' => $subscr_date, 
						'user_subscr_item_level' => $user_subscr_item_level, 
						'user_subscr_item' => $free_subscr_item, 
						'user_subscr_download_item' => $free_subscr_download_item,
						'user_subscr_space_level' => $user_subscr_space_level, 
						'user_subscr_space' => $free_subscr_space, 
						'user_subscr_space_type' => $user_subscr_space_type,
					]);
				  }
				  else
				  {
				     return User::create([
						'name' => $data['name'],
						'email' => $data['email'],
						'username' => $data['username'],
						'password' => Hash::make($data['password']),
						'user_auth_token' => base64_encode($data['password']),
						'user_token' => $token,
						'earnings' => 0,
						'user_type' => $encrypter->decrypt($data['user_type']),
						'referral_by' => $referral_by, 
						'referral_payout' => $referral_payout,
						'user_subscr_type' => $free_subscr_type, 
						'user_subscr_price' => $free_subscr_price, 
						'user_subscr_date' => $days_ago, 
						'user_subscr_item_level' => $user_subscr_item_level, 
						'user_subscr_item' => 0, 
						'user_subscr_download_item' => $free_subscr_download_item,
						'user_subscr_space_level' => $user_subscr_space_level, 
						'user_subscr_space' => 0, 
						'user_subscr_space_type' => $user_subscr_space_type,
					 ]);
				  }	
					
				}
			}	
			else
			{
			   return User::create([
					'name' => $data['name'],
					'email' => $data['email'],
					'username' => $data['username'],
					'password' => Hash::make($data['password']),
					'user_auth_token' => base64_encode($data['password']),
					'user_token' => $token,
					'earnings' => 0,
					'user_type' => $encrypter->decrypt($data['user_type']),
					'referral_by' => $referral_by,
					'referral_payout' => $referral_payout,
					'user_subscr_download_item' => 1000, 
				]);
			}
			
		}	
		
		
    }
}
