<?php

namespace Fickrr\Providers;

use Illuminate\Support\ServiceProvider;

use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;
use Fickrr\Models\Members;
use Fickrr\Models\Settings;
use Fickrr\Models\Category;
use Fickrr\Models\Pages;
use Fickrr\Models\Comment;
use Fickrr\Models\Items; 
use Fickrr\Models\SubCategory;
use Fickrr\Models\Languages;
use Fickrr\Models\Chat;
use Illuminate\Support\Facades\View;
use Auth;
use URL;
use Illuminate\Support\Facades\Config;
use Cookie;
use Illuminate\Support\Facades\Crypt;



class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
	 
	
    public function boot()
    {
	
        Schema::defaultStringLength(191);
		$admin = Members::adminData();
		View::share('admin', $admin);
		
		
		
		$member_count = Members::footermemberData();
		View::share('member_count', $member_count);
		
		$total_sale = Items::totalsaleitemCount();
		View::share('total_sale', $total_sale);
		
		$total_files = Items::totalfileItems();
		View::share('total_files', $total_files);

        $total_services = 10;
        View::share('total_services', $total_services);

        $service_orders = 10;
        View::share('service_orders', $service_orders);
		
		$getWell['type'] = Items::gettypeStatus();
		View::share('getWell', $getWell);
		
		
		$allsettings = Settings::allSettings();
		View::share('allsettings', $allsettings);
		
		$additional = Settings::editAdditional();
		View::share('additional', $additional);
		
		$addition_settings = Settings::editAdditional();
		View::share('addition_settings', $addition_settings);
		
		
		$allattributes = Settings::allAttributes();
		View::share('allattributes', $allattributes);
		
		$attr_field_type = array('multi-select' => 'Multi Select', 'single-select' => 'Single Select');
	    View::share('attr_field_type', $attr_field_type);
		
		$demo_mode = 'off'; // on
		View::share('demo_mode', $demo_mode);
		
		$help_id = 13;
		$count_help = Pages::helppageCount($help_id);
		if($count_help != 0)
		{
		  $help['page'] = Pages::editpageData($help_id);
		  View::share('help', $help);
		}
		View::share('count_help', $count_help);
		
		if($allsettings->stripe_mode == 0) 
		{ 
		$stripe_publish_key = $allsettings->test_publish_key; 
		$stripe_secret_key = $allsettings->test_secret_key;
		
		}
		else
		{ 
		$stripe_publish_key = $allsettings->live_publish_key;
		$stripe_secret_key = $allsettings->live_secret_key;
		}
		View::share('stripe_publish_key', $stripe_publish_key);
		View::share('stripe_secret_key', $stripe_secret_key);
		
		
		$country['country'] = Settings::allCountry();
		View::share('country', $country);
				
		$allpages['pages'] = Pages::menupageData();
		View::share('allpages', $allpages);
		
		$encrypter = app('Illuminate\Contracts\Encryption\Encrypter');
		View::share('encrypter', $encrypter);
		
		$footerpages['pages'] = Pages::footermenuData();
		View::share('footerpages', $footerpages);
		if($addition_settings->subscription_mode == 1)
		{
		$permission = array('dashboard' => 'Dashboard', 'settings' => 'Settings', 'items' => 'Items', 'subscription' => 'Subscription', 'refund' => 'Refund Request', 'rating' => 'Rating & Reviews', 'withdrawal' => 'Withdrawal Request', 'blog' => 'Blog', 'pages' => 'Pages', 'features' => 'Features', 'selling' => 'Start Selling', 'contact' => 'Contact', 'newsletter' => 'Newsletter', 'languages' => 'Languages');
		}
		else
		{
		$permission = array('dashboard' => 'Dashboard', 'settings' => 'Settings', 'items' => 'Items', 'refund' => 'Refund Request', 'rating' => 'Rating & Reviews', 'withdrawal' => 'Withdrawal Request', 'blog' => 'Blog', 'pages' => 'Pages', 'features' => 'Features', 'selling' => 'Start Selling', 'contact' => 'Contact', 'newsletter' => 'Newsletter', 'languages' => 'Languages');
		}
		View::share('permission', $permission);
		
		$durations = array('1 Month','2 Month','3 Month','4 Month','5 Month','6 Month','1 Year','2 Year','3 Year','4 Year','5 Year');
		View::share('durations', $durations);
		
		$item_sale_type = array('limited' => 'Limited Items','unlimited' => 'Unlimited Items');
		View::share('item_sale_type', $item_sale_type);
		
		$storage_space = array('limited' => 'Limited Space','unlimited' => 'Unlimited Space');
		View::share('storage_space', $storage_space);
		
		$storage_space_type = array('MB','GB','TB');
		View::share('storage_space_type', $storage_space_type);
		
		$languages['view'] = Languages::allLanguage();
		View::share('languages', $languages);
		
		$alllang['data'] = Languages::allLanguage();
		View::share('alllang', $alllang);
		
		if(!empty(Cookie::get('translate')))
		{
		$translate = Cookie::get('translate');
		   $lang_title['view'] = Languages::getLanguage($translate);
		   $language_title = $lang_title['view']->language_name;
		}
		else
		{
		  $default_count = Languages::defaultLanguageCount();
		  if($default_count == 0)
		  { 
		  $translate = "en";
		  $lang_title['view'] = Languages::getLanguage($translate);
		   $language_title = $lang_title['view']->language_name;
		  }
		  else
		  {
		  $default['lang'] = Languages::defaultLanguage();
		  $translate =  $default['lang']->language_code;
		  $lang_title['view'] = Languages::getLanguage($translate);
		   $language_title = $lang_title['view']->language_name;
		  }
		 
		}
		View::share('translate', $translate);
		View::share('language_title', $language_title);
		
		
		$minprice['price'] = Items::minpriceData();
		View::share('minprice', $minprice);
		
		$maxprice['price'] = Items::maxpriceData();
		View::share('maxprice', $maxprice);
		
		
		$minprice_count = Items::minpriceCount();
		View::share('minprice_count', $minprice_count);
		
		$maxprice_count = Items::maxpriceCount();
		View::share('maxprice_count', $maxprice_count);
		
		
		$maincategory['view'] = Category::footercategoryData();
		View::share('maincategory', $maincategory);
		
		$maincategory_two['view'] = Category::footercategoryData();
		View::share('maincategory_two', $maincategory_two);
		//$cartitem['item'] = Items::getcartData();
//		View::share('cartitem', $cartitem);
		
	    //$cartcount = Items::getcartCount();
//		View::share('cartcount', $cartcount);
		
		
		
			
		$categories['menu'] = Category::with('SubCategory')->where('category_status','=','1')->where('drop_status','=','no')->take($allsettings->site_menu_category)->orderBy('menu_order',$allsettings->menu_categories_order)->get();
		View::share('categories', $categories);
		
		$re_categories['menu'] = Category::with('SubCategory')->where('category_status','=','1')->where('drop_status','=','no')->orderBy('menu_order',$allsettings->menu_categories_order)->get();
		View::share('re_categories', $re_categories);
		
		$item_type_text = array('scripts' => 'Scripts', 'themes' => 'Themes', 'plugins' => 'Plugins', 'print' => 'Print', 'graphics' => 'Graphics', 'mobile-apps' => 'Mobile Apps');
		View::share('item_type_text', $item_type_text);
		
		view()->composer('*', function($view){
            $view_name = str_replace('.', '-', $view->getName());
            view()->share('view_name', $view_name);
        });
		
		view()->composer('*', function($view)
		{
			if (Auth::check()) {
			    $user['avilable'] = Members::logindataUser(Auth::user()->id);
			   $avilable = explode(',',$user['avilable']->user_permission);
			    $cartcount = Items::getcartCount();
				
				$msgcount = Chat::miniChat(Auth::user()->id);
				$view->with('cartcount', $cartcount);
				$view->with('msgcount', $msgcount);
				$today_date = date('Y-m-d');
				if(Auth::user()->user_today_download_date != $today_date)
				  {
				     
					 $download_limiter = 0;
					 $up_user_download = array('user_today_download_date' => $today_date, 'user_today_download_limit' => $download_limiter);
					 Members::updateReferral(Auth::user()->id,$up_user_download);
					
				  }
				
			}else {
			    $avilable = "";
				$view->with('cartcount', 0);
				$view->with('msgcount', 0);
				
			}
			view()->share('avilable', $avilable);
		});
		view()->composer('*', function($viewcart)
		{
			if (Auth::check()) {
			    $cartitem['item'] = Items::getcartData();
				$smsdata['display'] = Chat::miniData(Auth::user()->id);
				$viewcart->with('smsdata', $smsdata);
				$viewcart->with('cartitem', $cartitem);
				
			}else {
				$viewcart->with('smsdata', 0);
				$viewcart->with('cartitem', 0);
			}
			
			$item_count_limit = Items::emptycheck();
			if($item_count_limit != 0)
			{
			   $item['records'] = Items::matchRecord();
			   
			   foreach($item['records'] as $full)
			   {
			   $item_type_id = $full->item_type_id;
			   $item_id = $full->item_id;
			   $data = array('item_type_id' => $item_type_id);
			   Items::upModify($item_id,$data);
			   }
			}
		});
		
		
		/*view()->composer('*', function($view) {
             $view->with('item_comments', Comment::with('children')->whereNull('comm_parent_id')->orderBy('comm_id', 'asc')->get());
        });*/
		
		
		Config::set('filesystems.disks.s3.key', $allsettings->aws_access_key_id);
		Config::set('filesystems.disks.s3.secret', $allsettings->aws_secret_access_key);
		Config::set('filesystems.disks.s3.region', $allsettings->aws_default_region);
		Config::set('filesystems.disks.s3.bucket', $allsettings->aws_bucket);
		
		Config::set('filesystems.disks.wasabi.key', $allsettings->wasabi_access_key_id);
		Config::set('filesystems.disks.wasabi.secret', $allsettings->wasabi_secret_access_key);
		Config::set('filesystems.disks.wasabi.region', $allsettings->wasabi_default_region);
		Config::set('filesystems.disks.wasabi.bucket', $allsettings->wasabi_bucket);
		
		
		Config::set('paystack.publicKey', $allsettings->paystack_public_key);
		Config::set('paystack.secretKey', $allsettings->paystack_secret_key);
		Config::set('paystack.merchantEmail', $allsettings->paystack_merchant_email);
		Config::set('paystack.paymentUrl', 'https://api.paystack.co');
		
		
		Config::set('mail.driver', $allsettings->mail_driver);
		Config::set('mail.host', $allsettings->mail_host);
		Config::set('mail.port', $allsettings->mail_port);
		Config::set('mail.username', $allsettings->mail_username);
		Config::set('mail.password', $allsettings->mail_password);
		Config::set('mail.encryption', $allsettings->mail_encryption);
		
		Config::set('services.facebook.client_id', $allsettings->facebook_client_id);
		Config::set('services.facebook.client_secret', $allsettings->facebook_client_secret);
		Config::set('services.facebook.redirect', $allsettings->facebook_callback_url);
		Config::set('services.google.client_id', $allsettings->google_client_id);
		Config::set('services.google.client_secret', $allsettings->google_client_secret);
		Config::set('services.google.redirect', $allsettings->google_callback_url);
		
		
		
		
		Schema::table('additional_settings', function($table) {
		
			if (!Schema::hasColumn('additional_settings', 'refund_mode')) 
			{
			$table->integer("refund_mode");
			}
			if (!Schema::hasColumn('additional_settings', 'image_quality')) 
			{
			$table->integer("image_quality");
			}
			if (!Schema::hasColumn('additional_settings', 'subscr_download_items')) 
			{
			$table->mediumInteger("subscr_download_items");
			}
			if (!Schema::hasColumn('additional_settings', 'upgrade_files')) 
			{
			$table->string('upgrade_files')->nullable();
			}
			
			/* ipay */
			
			if (!Schema::hasColumn('additional_settings', 'ipay_mode')) 
			{
			$table->integer('ipay_mode');
			}
			
			if (!Schema::hasColumn('additional_settings', 'ipay_vendor_id')) 
			{
			$table->string('ipay_vendor_id')->nullable();
			}
			
			if (!Schema::hasColumn('additional_settings', 'ipay_hash_key')) 
			{
			$table->string('ipay_hash_key')->nullable();
			}
			/* ipay */
			
		});
		
		Schema::table('subscription', function($table) {
		
			if (!Schema::hasColumn('subscription', 'subscr_download_item')) 
			{
			$table->mediumInteger("subscr_download_item")->after('subscr_item');
			}
			
			
		});
		
		Schema::table('keywords', function($table) {
		
			if (Schema::hasColumn('keywords', 'keyword_id')) 
			{
			$table->string("keyword_id")->unsigned()->change();
			
			}
			
			
		});
		
		Schema::table('items', function($table) {
		
		    $table->string('compatible_browsers', 10)->change();
			$table->string('package_includes', 10)->change();
			$table->string('package_includes_two', 10)->change();
			$table->string('columns', 10)->change();
			$table->string('layout', 10)->change();
			$table->string('package_includes_three', 10)->change();
			$table->string('layered', 10)->change();
			$table->string('cs_version', 10)->change();
			$table->string('print_dimensions', 10)->change();
			$table->string('pixel_dimensions', 10)->change();
			$table->string('package_includes_four', 10)->change();
			
			$table->string('item_token', 100)->change();
		    $table->string('item_name', 500)->change();
			$table->string('item_category', 100)->change();
			$table->string('video_url', 200)->change();
			$table->text('seller_refund_term')->change();
			if (!Schema::hasColumn('items', 'audio_file')) 
			{
			
			$table->text("audio_file")->nullable()->after('item_seo_desc');
			
			}
			
			if (!Schema::hasColumn('items', 'item_type_id')) 
			{
			
			$table->string("item_type_id")->nullable()->after('item_type');
			
			}
			
		});
		
		Schema::table('settings', function($table) {
		
		   if (!Schema::hasColumn('settings', 'dropbox_api')) 
			{
			
			$table->string("dropbox_api")->nullable()->after('wasabi_bucket');
			
			}
			if (!Schema::hasColumn('settings', 'dropbox_token')) 
			{
			
			$table->string("dropbox_token")->nullable()->after('dropbox_api');
			
			}
			if (!Schema::hasColumn('settings', 'google_drive_client_id')) 
			{
			
			$table->string("google_drive_client_id")->nullable()->after('dropbox_token');
			
			}
			if (!Schema::hasColumn('settings', 'google_drive_client_secret')) 
			{
			
			$table->string("google_drive_client_secret")->nullable()->after('google_drive_client_id');
			
			}
			if (!Schema::hasColumn('settings', 'google_drive_refresh_token')) 
			{
			
			$table->string("google_drive_refresh_token")->nullable()->after('google_drive_client_secret');
			
			}
			if (!Schema::hasColumn('settings', 'google_drive_folder_id')) 
			{
			
			$table->string("google_drive_folder_id")->nullable()->after('google_drive_refresh_token');
			
			}
			
			
		
		});
		
		
		Schema::table('users', function($table) {
		
			if (!Schema::hasColumn('users', 'user_subscr_download_item')) 
			{
			$table->mediumInteger("user_subscr_download_item")->after('user_subscr_item');
			
			}
			if (!Schema::hasColumn('users', 'user_today_download_limit')) 
			{
			$table->mediumInteger("user_today_download_limit")->after('user_subscr_download_item');
			
			}
			if (!Schema::hasColumn('users', 'user_today_download_date')) 
			{
			$table->date("user_today_download_date")->after('user_today_download_limit');
			
			}
			
			/* ipay */
			
			if (!Schema::hasColumn('users', 'user_ipay_mode')) 
			{
			$table->integer('user_ipay_mode');
			}
			
			if (!Schema::hasColumn('users', 'user_ipay_vendor_id')) 
			{
			$table->string('user_ipay_vendor_id')->nullable();
			}
			
			if (!Schema::hasColumn('users', 'user_ipay_hash_key')) 
			{
			$table->string('user_ipay_hash_key')->nullable();
			}
			/* ipay */
			
		});
		
		if (!Schema::hasTable('email_template')) 
		{
		   
		   
		   $destinationPath = app_path('/Seeds/email_template.sql');
           DB::unprepared(file_get_contents($destinationPath));
		   
		}
		
		Schema::table('users', function($table) {
		
			if (!Schema::hasColumn('users', 'register_url')) 
			{
			$table->text("register_url")->nullable();
			}
			if (!Schema::hasColumn('users', 'referral_payout')) 
			{
			$table->string("referral_payout")->nullable()->after('referral_by');
			}
			
			if (!Schema::hasColumn('users', 'instagram_url')) 
			{
			$table->string("instagram_url")->nullable()->after('gplus_url');
			}
			
			if (!Schema::hasColumn('users', 'linkedin_url')) 
			{
			$table->string("linkedin_url")->nullable()->after('instagram_url');
			}
			
			if (!Schema::hasColumn('users', 'pinterest_url')) 
			{
			$table->string("pinterest_url")->nullable()->after('linkedin_url');
			}
			
		});
		
		Config::set('filesystems.disks.dropbox.token', $allsettings->dropbox_token);
		
		Config::set('filesystems.disks.google.clientId', $allsettings->google_drive_client_id);
		Config::set('filesystems.disks.google.clientSecret', $allsettings->google_drive_client_secret);
		Config::set('filesystems.disks.google.refreshToken', $allsettings->google_drive_refresh_token);
		Config::set('filesystems.disks.google.folderId', $allsettings->google_drive_folder_id);
		
		if (!Schema::hasTable('deposit')) 
		{
		   
		   $destinationPath = app_path('/Seeds/deposit.sql');
           DB::unprepared(file_get_contents($destinationPath));
		   
		}
		
		Schema::table('additional_settings', function($table) {
		
			
			if (!Schema::hasColumn('additional_settings', 'deposit_amount')) 
			{
			$table->string("deposit_amount")->nullable();
			}
			
			if (!Schema::hasColumn('additional_settings', 'deposit_type')) 
			{
			$table->string("deposit_type")->nullable();
			}
			
			if (!Schema::hasColumn('additional_settings', 'verify_mode')) 
			{
			$table->string("verify_mode")->nullable();
			}
			
			if (!Schema::hasColumn('additional_settings', 'site_email_display')) 
			{
			$table->integer("site_email_display");
			}
			if (!Schema::hasColumn('additional_settings', 'site_phone_display')) 
			{
			$table->integer("site_phone_display");
			}
			if (!Schema::hasColumn('additional_settings', 'site_address_display')) 
			{
			$table->integer("site_address_display");
			}
			
			if (!Schema::hasColumn('additional_settings', 'site_url_rewrite')) 
			{
			$table->integer("site_url_rewrite");
			}
			
			if (!Schema::hasColumn('additional_settings', 'post_short_desc_limit')) 
			{
			$table->integer("post_short_desc_limit");
			}
			
			if (!Schema::hasColumn('additional_settings', 'author_name_limit')) 
			{
			$table->integer("author_name_limit");
			}
			
			if (!Schema::hasColumn('additional_settings', 'item_name_limit')) 
			{
			$table->integer("item_name_limit");
			}
			
		});
		
		/*if (!Schema::hasTable('email_template')) 
		{
				Schema::create('email_template', function ($table) 
				{
				  
				    if (!Schema::hasColumn('email_template', 'et_id')) 
					{
					$table->increments("et_id");
					
					}
				    if (!Schema::hasColumn('email_template', 'et_content')) 
					{
					$table->longText("et_content")->nullable();
					
					}
				    if (!Schema::hasColumn('email_template', 'et_status')) 
					{
					$table->integer("et_status")->length(11);
					
					} 
				  
				});
	    }
		Schema::table('email_template', function($table) {
		
			if (!Schema::hasColumn('email_template', 'et_heading')) 
			{
			$table->text("et_heading")->after('et_id')->nullable();
			}
			if (!Schema::hasColumn('email_template', 'et_subject')) 
			{
			$table->text("et_subject")->after('et_heading')->nullable();
			}
			
		});*/
		
		
		
		
		/*Schema::create('additional_settings', function($table) 
		{
			$table->integer("testwork")->length(11);
			$table->string("title");
			$table->text("description");
			$table->string('first_name')->nullable();
			$table->timestamps();
			
			$table->bigInteger()
			$table->mediumInteger()
			$table->integer()
			$table->smallInteger()
			$table->tinyInteger()
		});*/
		/*$table->string('phone_nr')->after('id');*/
		
    }
}
