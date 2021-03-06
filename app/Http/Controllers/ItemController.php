<?php

namespace Fickrr\Http\Controllers;

use Illuminate\Http\Request;
use Fickrr\Models\Settings;
use Fickrr\Models\Members;
use Fickrr\Models\Items;
use Fickrr\Models\Attribute;
use Fickrr\Models\Category;
use Fickrr\Models\Chat;
use Fickrr\Models\Subscription;
use Fickrr\Models\EmailTemplate;
use Fickrr\Models\Deposit;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;
/*use Intervention\Image\Image;*/
use Illuminate\Support\Facades\File;
use Auth;
use Mail;
use URL;
use Image;
use Storage;
use Twocheckout;
use Twocheckout_Charge;
use Twocheckout_Error;
use Paystack;
use PDF;
use Illuminate\Support\Str;
use Razorpay\Api\Api;
use AmrShawky\LaravelCurrency\Facade\Currency;
use IyzipayBootstrap;
use GuzzleHttp\Client;
use CoinGate\CoinGate;
use Cache;
use Session;
use Carbon\Carbon;
use shurjopayv2\ShurjopayLaravelPackage8\Http\Controllers\ShurjopayController;

class ItemController extends Controller
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
	
	public function seo_slug($string)
	{
	    
		$string=preg_replace('/[^A-Za-z0-9-]+/', '-', $string);
		$string=strtolower($string);
		return $string;	
    
	}
	
	public function img_slug($string)
	{
	    
		$string=preg_replace('/[^A-Za-z0-9-]+/', '-', $string);
		$string=strtolower($string);
		return $string;	
    
	}
	
	
	public function non_seo_slug($string)
	{
	    $string=str_replace(" ","-",$string);
		$string=strtolower($string);
		return $string;	
    
	}
	
	
	public function fileupload(Request $request)
	{
	 $logged_id = Auth::user()->id;
	 $additional = Settings::editAdditional();
	 $item_token = $request->input('item_token');
	 if(!empty($item_token))
	 {
	 $edit['item'] = Items::edititemData($item_token);
	 $item_image['item'] = Items::getimagesData($item_token);
	 }
     $session_id = Session::getId();
	 $allsettings = Settings::allSettings();
     $watermark = $allsettings->site_watermark;
     $url = URL::to("/");
     if($request->hasFile('file')) 
	 {

       
       $destinationPath = public_path('/storage/items');

       // Create directory if not exists
       if (!file_exists($destinationPath)) {
          mkdir($destinationPath, 0755, true);
       }

       // Get file extension
       $extension = $request->file('file')->getClientOriginalExtension();

       // Valid extensions
       $validextensions = array("jpeg","jpg","png","zip","mp4","mp3");

       // Check extension
       if(in_array(strtolower($extension), $validextensions))
	   {

         // Rename file 
         $original = $request->file('file')->getClientOriginalName();
		 // Uploading file to given path
         //$request->file('file')->move($destinationPath, $fileName);
		 
		       $image = $request->file('file');
		       $img_name = $this->img_slug(Carbon::now()->toDayDateTimeString()).rand(11111, 99999) .'.' . $extension;
		       if($allsettings->watermark_option == 1)
		       {
		            
					
					if($extension == "jpeg" or $extension == "jpg" or $extension == "png")
					{
					$imagePath = $destinationPath. "/".  $img_name;
					$image->move($destinationPath, $img_name);
					$watermarkImg=Image::make(public_path('/storage/settings/'.$watermark));
					$img=Image::make(public_path('/storage/items/'.$img_name));
					$wmarkWidth=$watermarkImg->width();
					$wmarkHeight=$watermarkImg->height();
		
					$imgWidth=$img->width();
					$imgHeight=$img->height();
		
					$x=0;
					$y=0;
					while($y<=$imgHeight){
						$img->insert(public_path('/storage/settings/'.$watermark),'top-left',$x,$y);
						$x+=$wmarkWidth;
						if($x>=$imgWidth){
							$x=0;
							$y+=$wmarkHeight;
						}
					}
					$img->save(base_path('public/storage/items/'.$img_name),$additional->image_quality);
					$fileName = $img_name;
					}
					else
					{
					   
					   if($allsettings->site_s3_storage == 1)
				  		{
					 	Storage::disk('s3')->put($img_name, file_get_contents($image), 'public');
					 	$fileName = $img_name;
				  		}
				  		else if($allsettings->site_s3_storage == 2)
			  	  		{
			            Storage::disk('wasabi')->put($img_name, file_get_contents($image));
				 	    $fileName = $img_name;
			  	        }
						else if($allsettings->site_s3_storage == 3)
			  	  		{
						Storage::disk('dropbox')->put($img_name, file_get_contents($image), '');
				        $fileName = $img_name;
				        }
						else if($allsettings->site_s3_storage == 4)
			  	  		{
						Storage::disk('google')->put($img_name, file_get_contents($image), '');
				        $fileName = $img_name;
				        }
						else
						{
						   $imagePath = $destinationPath. "/".  $img_name;
						   $image->move($destinationPath, $img_name);
					       $fileName = $img_name;
						}
					
					}
					
			}
			else
			{
			   
			     if($extension == "jpeg" or $extension == "jpg" or $extension == "png")
				 {
				    $imagePath = $destinationPath. "/".  $img_name;
					$image->move($destinationPath, $img_name);
					$img=Image::make(public_path('/storage/items/'.$img_name));
					$img->save(base_path('public/storage/items/'.$img_name),$additional->image_quality);
					$fileName = $img_name;
			     }
				 else
				 {
					  if($allsettings->site_s3_storage == 1)
					  {
						 Storage::disk('s3')->put($img_name, file_get_contents($image), 'public');
						 $fileName = $img_name;
					  }
					  else if($allsettings->site_s3_storage == 2)
					  {
					 
						Storage::disk('wasabi')->put($img_name, file_get_contents($image));
						$fileName = $img_name;
					  }
					  else if($allsettings->site_s3_storage == 3)
			  	  	  {
						Storage::disk('dropbox')->put($img_name, file_get_contents($image), '');
				        $fileName = $img_name;
				      }
					  else if($allsettings->site_s3_storage == 4)
			  	  	  {
						Storage::disk('google')->put($img_name, file_get_contents($image), '');
				        $fileName = $img_name;
				      }
					  else
					  {
					
						$imagePath = $destinationPath. "/".  $img_name;
						$image->move($destinationPath, $img_name);
						$fileName = $img_name;
					  }	
				}	  
			
			        
			}		
		  
		 
		 $data = array('original_file_name' => $original,'item_file_name' => $fileName, 'user_id' => $logged_id, 'session_id' => $session_id);
         Items::proddataSave($data); 
		 $getdata['first'] = Items::getProdutData($session_id); // item thumbnail
		 $getdata['second'] = Items::getProdutData($session_id);  // item preview
		 $getdata['third'] = Items::getProdutZip($session_id);   // item file
		 $getdata['four'] = Items::getProdutData($session_id);   // screenshot gallery
		 $getdata['five'] = Items::getProdutMP4($session_id);   // video file
		 $getdata['six'] = Items::getProdutMP3($session_id);   // audio file
		 $record = '<div class="row">
		           <div class="col-sm-6"> 
				   <div class="form-group">
                    <label for="site_desc" class="control-label mb-1">Upload Thumbnail (Size : 80x80px) <span class="require">*</span></label><br/>
                    <select name="item_thumbnail2" id="item_thumbnail2" class="form-control">
                    <option value=""></option>';
                    foreach($getdata['first'] as $get)
					{
					   $record .= '<option value="'.$get->item_file_name.'">'.$get->original_file_name.'</option>';
					}
                    $record .= '</select>';
                   if(!empty($item_token))
				   {
						if($edit['item']->item_thumbnail!='')
						{
							$record .='<img src="'.url('/').'/public/storage/items/'.$edit['item']->item_thumbnail.'" alt="'.$edit['item']->item_name.'" width="80">';
						}
						else
						{
							$record .='<img src="'.url('/').'/public/img/no-image.png" alt="'.$edit['item']->item_name.'" width="80">';
						}
                   } 
				   $record .= '</div></div>';
		 $record .= '<div class="col-sm-6">
		            <div class="form-group">
                    <label for="site_desc" class="control-label mb-1">Upload Preview (Size : 361x230px) <span class="require">*</span></label><br/>
                    <select name="item_preview2" id="item_preview2" class="form-control">
                    <option value=""></option>';
                    foreach($getdata['second'] as $get)
					{
					   $record .= '<option value="'.$get->item_file_name.'">'.$get->original_file_name.'</option>';
					}
                    $record .= '</select>';
                   if(!empty($item_token))
				   {
						if($edit['item']->item_preview!='')
						{
							$record .='<img src="'.url('/').'/public/storage/items/'.$edit['item']->item_preview.'" alt="'.$edit['item']->item_name.'" width="80">';
						}
						else
						{
							$record .='<img src="'.url('/').'/public/img/no-image.png" alt="'.$edit['item']->item_name.'" width="80">';
						}
                   } 
				   $record .= '</div></div>';
				   $record .= '<div class="col-sm-6">
				                 <div class="form-group">
                                                <label for="name" class="control-label mb-1">Upload Main File Type <span class="require">*</span></label>
                                               <select name="file_type2" id="file_type2" class="form-control" data-bvalidator="required">
                                                <option value=""></option>';
												if(!empty($item_token))
												{
												   if($edit['item']->file_type == 'file')
												   {
												   $record .= '<option value="file" selected>File</option>
												               <option value="link">Link/URL</option>';
												   }
												   else if($edit['item']->file_type == 'link')
												   {
													 $record .= '<option value="file">File</option>
												                 <option value="link" selected>Link/URL</option>';
												   }
												   else
												   {
												      $record .= '<option value="file">File</option>
												                  <option value="link">Link/URL</option>';
												   }
												}
												else
												{
												    $record .= '<option value="file">File</option>
												            <option value="link">Link/URL</option>';
												}
                                                $record .= '</select></div></div>';
								if(!empty($item_token))
								{
								   if($edit['item']->file_type == 'file')
								   {
								   $record .= '<div class="col-sm-6 display-block" id="main_file"><div class="form-group">';
								   }
								   else if($edit['item']->file_type == 'link')
								   {
								     $record .= '<div class="col-sm-6 display-none" id="main_file"><div class="form-group">';
								   }
								   else
								   {
								      $record .= '<div class="col-sm-6" id="main_file"><div class="form-group">';
								   }
								}
								else
								{			
								$record .= '<div class="col-sm-6" id="main_file"><div class="form-group">';
								}			
				   
                               $record .= '<label for="customer_earnings" class="control-label mb-1">Upload Main File (ZIP - All files) <span class="require">*</span></label>
                                                <select name="item_file2" id="item_file2" class="form-control">
                                                <option value=""></option>';
												foreach($getdata['third'] as $get)
												{
												$record .= '<option value="'.$get->item_file_name.'">'.$get->original_file_name.'</option>';
												}
                                                $record .= '</select>';
											 if(!empty($item_token))
											 {
											     if($edit['item']->item_file!='')
												 {
												    $record .= '<span class="require">'.$edit['item']->item_file.'</span>';
												 }
                                             }
											 $record .= '</div></div>';
											 if(!empty($item_token))
								             {
												   if($edit['item']->file_type == 'file')
												   {
												   $record .= '<div class="col-sm-6 display-none" id="main_link"><div  class="form-group">';
												   }
												   else if($edit['item']->file_type == 'link')
												   {
													 $record .= '<div class="col-sm-6 display-block" id="main_link"><div class="form-group">';
												   }
												   else
												   {
													  $record .= '<div class="col-sm-6" id="main_link"><div class="form-group">';
												   }
												}
												else
												{			
												$record .= '<div class="col-sm-6" id="main_link"><div class="form-group">';
												}
												if(!empty($item_token))
												 {
												   if(!empty($edit['item']->item_file_link))
												   {
												   $item_file_linked = $edit['item']->item_file_link;
												   }
												   else
												   {
													  $item_file_linked = "";
												   }
												 }
												 else
												 {
												  $item_file_linked = "";
												 }
                                                $record .= '<label for="name" class="control-label mb-1">Main File Link/URL <span class="require">*</span></label>
                                                <input type="text" id="item_file_link2" name="item_file_link2" class="form-control" value="'.$item_file_linked.'" data-bvalidator="required,url">
                                              </div>  
                                            </div>';
									 if($additional->show_screenshots == 1)
									 {		
                                     $record .= '<div class="col-sm-6">
									            <div class="form-group">
                                                <label for="customer_earnings" class="control-label mb-1">Upload Screenshots (multiple) (Size : 750x430px)</label>
                                                <select id="item_screenshot2" name="item_screenshot[]" class="form-control" multiple>';
												foreach($getdata['four'] as $get)
												{
												$record .= '<option value="'.$get->item_file_name.'">'.$get->original_file_name.'</option>';
												}
                                                $record .= '</select>';
												if(!empty($item_token))
											   {
											      $alerttext = 'Are you sure you want to delete?';
											      foreach($item_image['item'] as $item)
												  {
												      $record .= '<div class="item-img" style="float:left;margin:10px;"><img src="'.url('/').'/public/storage/items/'.$item->item_image .'" alt="'.$item->item_image.'" width="80">';
													  $record .='<a href="'.url('/edit-item').'/dropimg/'.base64_encode($item->itm_id).'" onClick="return confirm("'.$alerttext.'");" class="drop-icon"><span class="dwg-trash drop-icon"></span></a></div>';
													  
												  }
											   }
                                             $record .= '<div class="clearfix"></div></div></div>';
		                            }
									if($additional->show_video == 1)
									{
									$record .='<div class="col-sm-6">
									            <div class="form-group">
                                                <label for="name" class="control-label mb-1">Preview Type (optional)</label>
                                               <select name="video_preview_type2" id="video_preview_type2" class="form-control">
                                                <option value=""></option>';
												if(!empty($item_token))
												{
												   if($edit['item']->video_preview_type == 'youtube')
												   {
												   $record .= '<option value="youtube" selected>Youtube</option>
                                                               <option value="mp4">MP4</option>
															   <option value="mp3">MP3</option>';
												   }
												   else if($edit['item']->video_preview_type == 'mp4')
												   {
													 $record .= '<option value="youtube">Youtube</option>
                                                                 <option value="mp4" selected>MP4</option>
																 <option value="mp3">MP3</option>';
												   }
												   else if($edit['item']->video_preview_type == 'mp3')
												   {
													 $record .= '<option value="youtube">Youtube</option>
                                                                 <option value="mp4">MP4</option>
																 <option value="mp3" selected>MP3</option>';
												   }
												   else
												   {
												      $record .= '<option value="youtube">Youtube</option>
                                                                 <option value="mp4">MP4</option>
																 <option value="mp3">MP3</option>';
												   }
												}
												else
												{
												    $record .= '<option value="youtube">Youtube</option>
                                                                <option value="mp4">MP4</option>
																<option value="mp3">MP3</option>';
												}
                                                    
                                                $record .= '</select>
                                            </div></div>'; 
											if(!empty($item_token))
								             {
												   if($edit['item']->video_preview_type == 'youtube')
												   {
												   $record .= '<div class="col-sm-6 display-block" id="youtube"><div class="form-group">';
												   }
												   else if($edit['item']->video_preview_type == 'mp4')
												   {
													 $record .= '<div class="col-sm-6 display-none" id="youtube"><div class="form-group">';
												   }
												   else if($edit['item']->video_preview_type == 'mp3')
												   {
													 $record .= '<div class="col-sm-6 display-none" id="youtube"><div class="form-group">';
												   }
												   else
												   {
													  $record .= '<div class="col-sm-6 display-none" id="youtube"><div class="form-group">';
												   }
												}
												else
												{			
												$record .= '<div class="col-sm-6 display-none" id="youtube"><div class="form-group">';
												}		   
									            if(!empty($item_token))
												 {
												   if(!empty($edit['item']->video_url))
												   {
												   $video_linked = $edit['item']->video_url;
												   }
												   else
												   {
													  $video_linked = "";
												   }
												 }
												 else
												 {
												  $video_linked = "";
												 } 
                                                $record .='<label for="name" class="control-label mb-1">Youtube Video URL <span class="require">*</span></label>
                                                
                                                <input type="text" id="video_url2" name="video_url2" class="form-control" value="'.$video_linked.'" data-bvalidator="required">
                                                 <small>(example : https://www.youtube.com/watch?v=C0DPdy98e4c)</small>
                                            </div></div>';
									if(!empty($item_token))
								             {
												   if($edit['item']->video_preview_type == 'youtube')
												   {
												   $record .= '<div class="col-sm-6 display-none" id="mp4"><div  class="form-group">';
												   }
												   else if($edit['item']->video_preview_type == 'mp4')
												   {
													 $record .= '<div class="col-sm-6 display-block" id="mp4"><div class="form-group">';
												   }
												   else if($edit['item']->video_preview_type == 'mp3')
												   {
													 $record .= '<div class="col-sm-6 display-none" id="mp4"><div class="form-group">';
												   }
												   else
												   {
													  $record .= '<div class="col-sm-6 display-none" id="mp4"><div class="form-group">';
												   }
												}
												else
												{			
												$record .= '<div class="col-sm-6 display-none" id="mp4"><div class="form-group">';
												}		
									
                                    $record .='<label for="site_desc" class="control-label mb-1">Upload MP4 Video <span class="require">*</span></label><br/>
                                                <select id="video_file2" name="video_file2" class="form-control">
												<option value=""></option>';
                                                foreach($getdata['five'] as $get)
												{
                                                $record .= '<option value="'.$get->item_file_name.'">'.$get->original_file_name.'</option>';
												}
                                                $record .= '</select>';
												if(!empty($item_token))
											    {
											     if($edit['item']->video_file!='')
												 {
												    $record .= '<span class="require">'.$edit['item']->video_file.'</span>';
												 }
                                               }
									$record .= '</div></div>';		   
									if(!empty($item_token))
								             {
												   if($edit['item']->video_preview_type == 'youtube')
												   {
												   $record .= '<div class="col-sm-6 display-none" id="mp3"><div  class="form-group">';
												   }
												   else if($edit['item']->video_preview_type == 'mp4')
												   {
													 $record .= '<div class="col-sm-6 display-none" id="mp3"><div class="form-group">';
												   }
												   else if($edit['item']->video_preview_type == 'mp3')
												   {
													 $record .= '<div class="col-sm-6 display-block" id="mp3"><div class="form-group">';
												   }
												   else
												   {
													  $record .= '<div class="col-sm-6 display-none" id="mp3"><div class="form-group">';
												   }
												}
												else
												{			
												$record .= '<div class="col-sm-6 display-none" id="mp3"><div class="form-group">';
												}		   
									$record .='<label for="site_desc" class="control-label mb-1">Upload MP3<span class="require">*</span></label><br/>
                                                <select id="audio_file2" name="audio_file2" class="form-control">
												<option value=""></option>';
                                                foreach($getdata['six'] as $get)
												{
                                                $record .= '<option value="'.$get->item_file_name.'">'.$get->original_file_name.'</option>';
												}
                                                $record .= '</select>';
												if(!empty($item_token))
											    {
											     if($edit['item']->audio_file!='')
												 {
												    $record .= '<span class="require">'.$edit['item']->audio_file.'</span>';
												 }
                                               }		   
                                             $record .= '</div></div></div>';				
									}
								    $record .= '<script>
											$("#file_type2").on("change", function() {
												  if ( this.value == "file")
												  {
													$("#main_file").show();
													$("#main_link").hide();
												  }
												  else
												  {
													$("#main_file").hide();
													$("#main_link").show();
												  }
												});	
											$("#video_preview_type2").on("change", function() {
												  if ( this.value == "youtube")
												  
												  {
													 $("#youtube").show();
													 $("#mp4").hide();
													 $("#mp3").hide();
												  }	
												  else if ( this.value == "mp4")
												  {
													 $("#mp4").show();
													 $("#youtube").hide();
													 $("#mp3").hide();
												  }
												  else if ( this.value == "mp3")
												  {
													 $("#mp3").show();
													 $("#youtube").hide();
													 $("#mp4").hide();
												  }
												  else
												  {
													  $("#mp4").hide();
													  $("#youtube").hide();
													  $("#mp3").hide();
												  }
												  
												 });
											
											</script>';
		 return response()->json(['success' => true, 'record' => $record]);

        }

      }
    }
	
	
	
	public function favourites_item()
	{
	   $fav['item'] = Items::getfavitemData();
	   $data = array('fav' => $fav);
	   
	   return view('favourites')->with($data);
	}
	
	
	
	
	
	public function view_coupon(Request $request)
	{
	   $allsettings = Settings::allSettings();
	   $coupon = $request->input('coupon');
	   $user_id = Auth::user()->id;
	   $coupon_key = uniqid();
	   $check_coupon = Items::checkCoupon($coupon);
	   if($check_coupon == 1)
	   {
	      $single = Items::singleCoupon($coupon);
	      $coupondata['get'] = Items::getCoupon($coupon,$user_id);
		  foreach($coupondata['get'] as $couponview)
		  {
		     $order_id = $couponview->ord_id;
			 $coupon_id = $single->coupon_id;
			 $coupon_code = $single->coupon_code;
			 $coupon_type = $single->discount_type;
			 $coupon_value = $single->coupon_value;
			 $price = $couponview->item_price;
			 if($coupon_type == 'percentage')
			 {
			 $discount = ($coupon_value * $price) / 100;
			 $discount_price = $price - $discount;
			 $data = array('coupon_key' => $coupon_key, 'coupon_id' => $coupon_id, 'coupon_code' => $coupon_code, 'coupon_type' => $coupon_type, 'coupon_value' => $coupon_value, 'discount_price' => $discount_price);
			 Items::updateCoupon($order_id,$data);
			 }
			 else
			 {
			    if($coupon_value < $price)
				{
			     $discount = $coupon_value;
				 $discount_price = $price - $discount;
				 $data = array('coupon_key' => $coupon_key, 'coupon_id' => $coupon_id, 'coupon_code' => $coupon_code, 'coupon_type' => $coupon_type, 'coupon_value' => $coupon_value, 'discount_price' => $discount_price);
			 Items::updateCoupon($order_id,$data);
				}
				else
				{
				 $discount = 0; 
				 return redirect()->back()->with('error', 'Invalid Coupon Code or Expired');
				}
			 }
			
		  }
		  return redirect()->back()->with('success', 'Coupon Added Successfully.');
	   }
	   else
	   {
	      return redirect()->back()->with('error', 'Invalid Coupon Code or Expired');
	   }
	
	}
	
	
	public function invoice_download($product_token,$order_id)
	{
	    $logged = Auth::user()->id;
		$check_purchased = Items::checkPurchased($logged,$product_token);
		if($check_purchased != 0)
		{
		  $item['data'] = Items::solditemData($product_token);
		  $order_details = Items::singleorderData($order_id);
		  $pdf_filename = $order_details->ord_id.'-'.$order_details->purchase_token.'-'.$item['data']->item_slug.'.pdf';
		  $product_slug = $item['data']->item_slug;
		  $product_id = $item['data']->item_id;
		  $user_id = $order_details->user_id;
		  $user_details = Members::singlebuyerData($user_id);
		  $data = ['order_id' => $order_details->purchase_token, 'purchase_id' => $order_details->purchase_code, 'purchase_date' => $order_details->start_date, 'expiry_date' => $order_details->end_date, 'license' => $order_details->license, 'product_name' => $order_details->item_name, 'product_slug' => $product_slug, 'payment_token' => $order_details->payment_token, 'payment_type' => $order_details->payment_type, 'product_price' => $order_details->item_price, 'username' => $user_details->username, 'product_id' => $product_id ];
        
        $pdf = PDF::loadView('pdf_view', $data);  
        return $pdf->download($pdf_filename);
	    
		}
		else
		{
		  return redirect('404');
		}
	}
	
	public function remove_coupon($remove,$coupon)
	{  
	   $user_id = Auth::user()->id;
	   $data = array('coupon_id' => '', 'coupon_code' => '', 'coupon_type' => '', 'coupon_value' => '', 'discount_price' => 0);
	   Items::removeCoupon($coupon,$user_id,$data);
	   return redirect()->back()->with('success', 'Coupon Removed Successfully.');
	}	
	
	
	public function remove_favourites_item($favid,$itemid)
	{
	    $fav_id = base64_decode($favid);
		$item_id = base64_decode($itemid);
		Items::dropFavitem($fav_id);
		$get['item'] = Items::selecteditemData($item_id);
		$liked = $get['item']->item_liked - 1;
		$record = array('item_liked' => $liked);
		Items::updatefavouriteData($item_id,$record);
	    return redirect()->back()->with('success', 'Item removed to favorite');
	}
	
	
	public function view_favorite_item($itemid,$favorite,$liked)
	{  
	   $item_id = base64_decode($itemid);
	   $like = base64_decode($liked) + 1;
	   $log_user = Auth::user()->id;
	   $getcount  = Items::getfavouriteCount($item_id,$log_user);
	   if($getcount == 0)
	   {
	      $data = array ('item_id' => $item_id, 'user_id' => $log_user);
		  Items::savefavouriteData($data);
		  $record = array('item_liked' => $like);
		  Items::updatefavouriteData($item_id,$record);
		  return redirect()->back()->with('success', 'Item added to favorite');
		  
	   }
	   else
	   {
	     return redirect()->back()->with('error', 'Sorry Item already added to favorite');
	   }
	  
	
	}
	
	
	public function view_withdrawal()
	{
	  $allsettings = Settings::allSettings();
	  $withdraw_option = explode(',', $allsettings->withdraw_option);
	  $itemData['item'] = Items::getdrawalData();
	  $data = array('withdraw_option' => $withdraw_option, 'itemData' => $itemData);
	  
	  return view('withdrawal')->with($data);
	}
	
	
	
	public function add_post_comment(Request $request)
	{
	    $comm_text = $request->input('comm_text');
		$comm_user_id = $request->input('comm_user_id');
		$comm_item_user_id = $request->input('comm_item_user_id');
		$comm_item_id = $request->input('comm_item_id');
		$item_url = $request->input('comm_item_url');
		
		$comm_date = date('Y-m-d H:i:s');
		$comment_data = array('comm_user_id' => $comm_user_id, 'comm_item_user_id' => $comm_item_user_id, 'comm_item_id' => $comm_item_id, 'comm_text' => $comm_text, 'comm_date' => $comm_date);
		Items::savecommentData($comment_data);
		$item_user_id = $comm_item_user_id;
		$user_id = $comm_user_id;
		$getvendor['user'] = Members::singlevendorData($item_user_id);
		$getbuyer['user'] = Members::singlebuyerData($user_id);
		$check_email_support = Members::getuserSubscription($item_user_id);
		if($getvendor['user']->item_comment_email == 1)
		{
		   if($check_email_support == 1)
		   {
				$from_name = $getbuyer['user']->name;
				$from_email = $getbuyer['user']->email;
				
				$to_name = $getvendor['user']->name;
				$to_email = $getvendor['user']->email;
				
				$record = array('item_url' => $item_url, 'from_name' => $from_name, 'from_email' => $from_email, 'comm_text' => $comm_text);
				/* email template code */
	          	$checktemp = EmailTemplate::checkTemplate(2);
			  	if($checktemp != 0)
			  	{
			  	$template_view['mind'] = EmailTemplate::viewTemplate(2);
			  	$template_subject = $template_view['mind']->et_subject;
			  	}
			  	else
			  	{
			  	$template_subject = "New Comment Received";
			  	}
			  	/* email template code */
				Mail::send('comment_mail', $record, function($message) use ($from_email, $from_name, $to_name, $to_email, $template_subject) {
						$message->to($to_email, $to_name)
								->subject($template_subject);
						$message->from($from_email,$from_name);
					});
			 }		
		}	
		
		return redirect()->back();
		
	}
	
	
	
	public function reply_post_comment(Request $request)
	{
	    $comm_text = $request->input('comm_text');
		$comm_user_id = $request->input('comm_user_id');
		$comm_item_user_id = $request->input('comm_item_user_id');
		$comm_item_id = $request->input('comm_item_id');
		$comm_id = $request->input('comm_id');
		$item_url = $request->input('comm_item_url');
		$comm_date = date('Y-m-d H:i:s');
		$comment_data = array('comm_user_id' => $comm_user_id, 'comm_item_user_id' => $comm_item_user_id, 'comm_item_id' => $comm_item_id, 'comm_id' => $comm_id, 'comm_text' => $comm_text, 'comm_date' => $comm_date);
		Items::replycommentData($comment_data);
		
		$item_user_id = $comm_item_user_id;
		$user_id = $comm_user_id;
		$getvendor['user'] = Members::singlevendorData($item_user_id);
		$getbuyer['user'] = Members::singlebuyerData($user_id);
		$check_email_support = Members::getuserSubscription($item_user_id);
		if($getvendor['user']->item_comment_email == 1)
		{
		    if($check_email_support == 1)
		    {
				$from_name = $getbuyer['user']->name;
				$from_email = $getbuyer['user']->email;
				
				$to_name = $getvendor['user']->name;
				$to_email = $getvendor['user']->email;
				
				$record = array('item_url' => $item_url, 'from_name' => $from_name, 'from_email' => $from_email, 'comm_text' => $comm_text);
				/* email template code */
	          	$checktemp = EmailTemplate::checkTemplate(2);
			  	if($checktemp != 0)
			  	{
			  	$template_view['mind'] = EmailTemplate::viewTemplate(2);
			  	$template_subject = $template_view['mind']->et_subject;
			  	}
			  	else
			  	{
			  	$template_subject = "New Comment Received";
			  	}
			  	/* email template code */
				Mail::send('comment_mail', $record, function($message) use ($from_email, $from_name, $to_name, $to_email, $template_subject) {
						$message->to($to_email, $to_name)
								->subject($template_subject);
						$message->from($from_email,$from_name);
					});
			}		
		}
		
		
		
		return redirect()->back()->with('success', 'Your comment has been sent');
		
	}
	
	
	public function withdrawal_request(Request $request)
	{
	   $withdrawal = $request->input('withdrawal');
	   $paypal_email = $request->input('paypal_email');
	   $stripe_email = $request->input('stripe_email');
	   $available_balance = base64_decode($request->input('available_balance'));
	   $get_amount = $request->input('get_amount');
	   $user_id = $request->input('user_id');
	   $token = $request->input('user_token');
	   $wd_data = date('Y-m-d');
	   $wd_status = "pending";
	   $paystack_email = $request->input('paystack_email');
	   $bank_details = $request->input('bank_details');
	   
	   $drawal_data = array('wd_user_id' => $user_id, 'withdraw_type' => $withdrawal, 'paypal_email' => $paypal_email, 'stripe_email' => $stripe_email, 'wd_amount' => $get_amount, 'wd_status' => $wd_status, 'wd_date' => $wd_data, 'bank_details' => $bank_details, 'paystack_email' => $paystack_email);
	   if($available_balance >= $get_amount)
	   {
	     Items::savedrawalData($drawal_data);
		 $less_amount = $available_balance - $get_amount;
		 $data = array('earnings' => $less_amount);
		 Members::updateData($token,$data);
		 return redirect()->back()->with('success', 'Your withdrawal request has been sent');
	   }
	   else
	   {
	     return redirect()->back()->with('error', 'Sorry Please check your available balance');
	   }
	   
	   
	   
	}
	
	
	public function edit_item($token)
	{
	 
		
		
		
		$edit['item'] = Items::edititemData($token);
		$type_id = $edit['item']->item_type_id;
		$getcount  = Items::getimagesCount($token);
		$item_image['item'] = Items::getimagesData($token);
		$cat_name = $edit['item']->item_category_type; 
        $cat_id = $edit['item']->item_category;
		
		$type_name = Items::slugItemtype($type_id);
		$typer_id = $type_name->item_type_id;
		$attribute['fields'] = Attribute::againAttribute($typer_id,$token);
		if(count($attribute['fields']) != 0)
		{
		 $attri_field['display'] = Attribute::againAttribute($typer_id,$token);
		}
		else
		{
		  $attri_field['display'] = Attribute::selectedAttribute($typer_id);
		}
		/* get user storge size */
		$occupy_size = $this->changeType($this->available_space(Auth::user()->id), 'B' ,'KB');
		$additional_settings = Settings::editAdditional();
		if($additional_settings->subscription_mode == 1)
		{
		   if(Auth::user()->user_subscr_space_level == 'limited')
		   {
				
				if(Auth::user()->user_subscr_space_type == 'MB')
				{ 
				$maxsize = $this->changeType(Auth::user()->user_subscr_space, 'MB', 'KB'); 
				} 
				elseif(Auth::user()->user_subscr_space_type == 'GB')
				{
				$maxsize = $this->changeType(Auth::user()->user_subscr_space, 'GB', 'KB');
				}
				else
				{
				$maxsize = $this->changeType(Auth::user()->user_subscr_space, 'TB', 'KB');
				}
				if($occupy_size < $maxsize)
				{
				  $overall_size = $maxsize - $occupy_size;
				  $round_size = round($overall_size);
				  $balance_storage = $this->changeType($round_size, 'KB', 'MB');
				  $available_storage = round($balance_storage); // mb
				}
				else
				{
				   $overall_size = $maxsize;
				   $round_size = round($overall_size);
				   $balance_storage = $this->changeType($round_size, 'KB', 'MB');
				   $available_storage = round($balance_storage); // mb
				}
			}
			else
			{
			   $available_storage = 100000; // mb
			}
		}
		else
		{
		   $available_storage = 100000; // mb
		}		
				
		/* get user storge size */
		$session_id = Session::getId();
		$getdata1['first'] = Items::getProdutData($session_id);
	    $getdata2['second'] = Items::getProdutData($session_id);
	    $getdata3['third'] = Items::getProdutZip($session_id);
		$getdata4['four'] = Items::getProdutData($session_id);
		$getdata5['five'] = Items::getProdutMP4($session_id);
		$getdata6['six'] = Items::getProdutMP3($session_id);
		$item_token = $token;
		$data = array(    'edit' => $edit, 'token' => $token, 'item_image' => $item_image, 'getcount' => $getcount, 'cat_id' => $cat_id, 'cat_name' => $cat_name, 'type_name' => $type_name, 'attri_field' => $attri_field, 'attribute' => $attribute, 'typer_id' => $typer_id, 'available_storage' => $available_storage, 'getdata1' => $getdata1, 'getdata2' => $getdata2, 'getdata3' => $getdata3, 'getdata4' => $getdata4, 'getdata5' => $getdata5, 'item_token' => $item_token, 'getdata6' => $getdata6);
	  
	   if($edit['item']->user_id == Auth::user()->id)
	   { 
	   return view('edit-item')->with($data);
	   }
	   else
	   {
	    return view('404');
	   }
	    
	}
	
	
	public function drop_image_item($dropimg,$token)
	{
	   
	   $token = base64_decode($token); 
	   Items::deleteimgdata($token);
	  
	  return redirect()->back()->with('success', 'Delete successfully.');
	
	}
	
	
	
	
	public function manage_item()
	{
	 
	  
	  $itemData['item'] = Items::getmanageitemData();
	  $encrypter = app('Illuminate\Contracts\Encryption\Encrypter');
	  $viewitem['type'] = Items::gettypeItem();
	  return view('manage-item',[ 'itemData' => $itemData, 'encrypter' => $encrypter, 'viewitem' => $viewitem]);
	}

    public function manage_services()
    {


        $itemData['item'] = Items::getmanageitemData();
        $encrypter = app('Illuminate\Contracts\Encryption\Encrypter');
        $viewitem['type'] = Items::gettypeItem();
        return view('service.manage-services',[ 'itemData' => $itemData, 'encrypter' => $encrypter, 'viewitem' => $viewitem]);
    }
	
	
	public function delete_item_request($token)
	{
	   $encrypter = app('Illuminate\Contracts\Encryption\Encrypter');
	   $token_key   = $encrypter->decrypt($token);
	   
	  $check_data = Items::checkDels($token_key);
	  if($check_data == 1)
	  {
	  $data = array('drop_status'=>'yes', 'item_status' => 0);
	  
      /*Items::deleteData($token_key,$data);*/
	  Items::admindeleteData($token_key,$data);
	  
	  return redirect()->back()->with('success', 'Your Item Deleted Successfully.');
	  }
	  else
	  {
	    return redirect('404');
	  }
	  
	  
	
	}
	

    
    public function upload_item($itemtype)
    {
	    
		$encrypter = app('Illuminate\Contracts\Encryption\Encrypter');
	    $type_id   = $encrypter->decrypt($itemtype);
		$itemWell['type'] = Items::gettypeItem();       
		$attribute['fields'] = Attribute::selectedAttribute($type_id);
		$type_name = Items::viewItemtype($type_id);
		/* get user storge size */
		$occupy_size = $this->changeType($this->available_space(Auth::user()->id), 'B' ,'KB');
		$additional_settings = Settings::editAdditional();
		if($additional_settings->subscription_mode == 1)
		{
		   if(Auth::user()->user_subscr_space_level == 'limited')
		   {
				
				if(Auth::user()->user_subscr_space_type == 'MB')
				{ 
				$maxsize = $this->changeType(Auth::user()->user_subscr_space, 'MB', 'KB'); 
				} 
				elseif(Auth::user()->user_subscr_space_type == 'GB')
				{
				$maxsize = $this->changeType(Auth::user()->user_subscr_space, 'GB', 'KB');
				}
				else
				{
				$maxsize = $this->changeType(Auth::user()->user_subscr_space, 'TB', 'KB');
				}
				if($occupy_size < $maxsize)
				{
				  $overall_size = $maxsize - $occupy_size;
				  $round_size = round($overall_size);
				  $balance_storage = $this->changeType($round_size, 'KB', 'MB');
				  $available_storage = round($balance_storage); // mb
				}
				else
				{
				   $overall_size = $maxsize;
				   $round_size = round($overall_size);
				   $balance_storage = $this->changeType($round_size, 'KB', 'MB');
				   $available_storage = round($balance_storage); // mb
				}
			}
			else
			{
			   $available_storage = 100000; // mb
			}
		}
		else
		{
		   $available_storage = 100000; // mb
		}		
				
		/* get user storge size */
		$session_id = Session::getId();
		$getdata1['first'] = Items::getProdutData($session_id);
	    $getdata2['second'] = Items::getProdutData($session_id);
	    $getdata3['third'] = Items::getProdutZip($session_id);
		$getdata4['four'] = Items::getProdutData($session_id);
		$getdata5['five'] = Items::getProdutMP4($session_id);
		$getdata6['six'] = Items::getProdutMP3($session_id);
		$item_token = "";
		$data = array('itemWell' => $itemWell, 'attribute' => $attribute, 'type_id' => $type_id, 'type_name' => $type_name, 'available_storage' => $available_storage, 'getdata1' => $getdata1, 'getdata2' => $getdata2, 'getdata3' => $getdata3, 'getdata4' => $getdata4, 'getdata5' => $getdata5, 'getdata6' => $getdata6, 'item_token' => $item_token);
        return view('upload-item')->with($data);
    }
	
	
	
	public function generateRandomString($length = 25) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
    }
	
	
	
	public function update_items(Request $request)
	{
	   $session_id = Session::getId();
	   $item_name = $request->input('item_name');
	   $additional['settings'] = Settings::editAdditional();
	   if($additional['settings']->site_url_rewrite == 1)
	   {
	   $item_slug = $this->seo_slug($item_name);
	   }
	   else
	   {
	   $item_slug = $this->non_seo_slug($item_name);
	   }
	   $item_token = $request->input('item_token');
	   $item_desc = htmlentities($request->input('item_desc'));
	   $seller_refund_term = $request->input('seller_refund_term');
	   $item_category = $request->input('item_category');
	   $split = explode("_", $item_category);
         
       $cat_id = $split[1];
	   $cat_name = $split[0];
	   if($cat_name == 'subcategory')
	   {
	      $fet = Category::editsubcategoryData($cat_id);
		  $parent_category_id = $fet->cat_id;
	   }
	   else
	   {
	      $parent_category_id = $cat_id;
	   }
	   
	   $item_type = $request->input('item_type');
	   $type_id = $request->input('type_id');
	   $demo_url = $request->input('demo_url');
	   $item_tags = $request->input('item_tags');
	   $item_shortdesc = $request->input('item_shortdesc');
	   $free_download = $request->input('free_download');
	   
	   if(!empty($request->input('regular_price')))
	   {
	   $regular_price = $request->input('regular_price');
	   }
	   else
	   {
	   $regular_price = 0;
	   }
	   if(!empty($request->input('extended_price')))
	   {
	   $extended_price = $request->input('extended_price');
	   }
	   else
	   {
	    $extended_price = 0;
	   }
	   
	   if(!empty($request->input('future_update')))
	   {
	   $future_update = $request->input('future_update');
	   }
	   else
	   {
	   $future_update = 0;
	   }
	   
	   if(!empty($request->input('item_support')))
	   {
	   $item_support = $request->input('item_support');
	   }
	   else
	   {
	   $item_support = 0;
	   }
	   
	   
	   $user_id = $request->input('user_id');
	   $item_flash_request = $request->input('item_flash_request');
	   $allsettings = Settings::allSettings();
	   $item_approval = $allsettings->item_approval;
	   $additional_settings = Settings::editAdditional();
	   
	   $seller_money_back = $request->input('seller_money_back');
	   if(!empty($request->input('seller_money_back_days')))
	   {
	   $seller_money_back_days = $request->input('seller_money_back_days');
	   }
	   else
	   {
	   $seller_money_back_days = 0;
	   }
	   
	   $item_allow_seo = $request->input('item_allow_seo');
	   if($request->input('item_seo_keyword') != "")
		 {
		 $item_seo_keyword = $request->input('item_seo_keyword');
		 }
		 else
		 {
		 $item_seo_keyword = "";
		 }
		 if($request->input('item_seo_desc') != "")
		 {
		 $item_seo_desc = $request->input('item_seo_desc');
		 }
		 else
		 {
		 $item_seo_desc = "";
		 }
	   
	   if($item_approval == 1)
	   {
	      $item_status = 1;
		  $item_approve_status = "Your item updated successfully.";
	   }
	   else
	   {
	      $item_status = 0;
		  $item_approve_status = "Thanks for your submission. Once admin will approved your item. will publish on our marketplace.";
	   }
	   
	   $watermark = $allsettings->site_watermark;
	   $image_size = $allsettings->site_max_image_size;
	   $file_size = $allsettings->site_max_file_size;
	   $url = URL::to("/");
	   
	   
	   
	   
	   if(!empty($request->input('item_thumbnail1')))
	   {
		 $item_thumbnail = $request->input('item_thumbnail1');
	   }
	   else if(!empty($request->input('item_thumbnail2')))
	   {
		 $item_thumbnail = $request->input('item_thumbnail2');
	   }
	   else
	   {
	     $item_thumbnail = $request->input('save_thumbnail');
	   }
	   if(!empty($request->input('item_preview1')))
	   {
		 $item_preview = $request->input('item_preview1');
	   }
	   else if(!empty($request->input('item_preview2')))
	   {
		 $item_preview = $request->input('item_preview2');
	   }
	   else
	   {
	     $item_preview = $request->input('save_preview');
	   }
	   if(!empty($request->input('item_file1')))
	   {
		 $item_file = $request->input('item_file1');
	   }
	   else if(!empty($request->input('item_file2')))
	   {
		 $item_file = $request->input('item_file2');
	   }
	   else
	   {
	     $item_file = $request->input('save_file');
	   }
	   if(!empty($request->input('file_type1')))
	   {
	   $file_type = $request->input('file_type1');
	   }
	   else if(!empty($request->input('file_type2')))
	   {
	   $file_type = $request->input('file_type2');
	   }
	   else
	   {
	   $file_type = $request->input('save_file_type');
	   }
	   
	   
	   if(!empty($request->input('item_file_link1')))
	   {
	   $item_file_link = $request->input('item_file_link1');
	   }
	   else
	   {
	   $item_file_link = $request->input('item_file_link2');;  
	   }
	   if(!empty($request->input('item_screenshot')))
	   {
	      
		  $gallery1 = "";
		  foreach($request->input('item_screenshot') as $gallery)
		  {
		     $gallery1 .= $gallery.',';
		  }
		  $item_screenshot = rtrim($gallery1,",");
		  
	   }
	   else
	   {
	     $item_screenshot = "";
	   }
	   if(!empty($request->input('video_preview_type1')))
	   {
	   $video_preview_type = $request->input('video_preview_type1');
	   }
	   else if(!empty($request->input('video_preview_type2')))
	   {
	   $video_preview_type = $request->input('video_preview_type2');
	   }
	   else
	   {
	   $video_preview_type = "";
	   }
	   if(!empty($request->input('video_url1')))
	   {
	   $video_url = $request->input('video_url1');
	   }
	   else if(!empty($request->input('video_url2')))
	   {
	   $video_url = $request->input('video_url2');
	   }
	   else
	   {
	     $video_url = $request->input('save_video_url');
	   } 
	   if(!empty($request->input('video_file1')))
	   {
	   $video_file = $request->input('video_file1');
	   }
	   else if(!empty($request->input('video_file2')))
	   {
	   $video_file = $request->input('video_file2');
	   }
	   else
	   {
	   $video_file = $request->input('save_video_file');  
	   }
	   
	   if(!empty($request->input('audio_file1')))
	   {
	   $audio_file = $request->input('audio_file1');
	   }
	   else if(!empty($request->input('audio_file2')))
	   {
	   $audio_file = $request->input('audio_file2');
	   }
	   else
	   {
	   $audio_file = $request->input('save_audio_file');  
	   }
	   
	   /*if(!empty($save_file))
	   {
	   
	       $occupy_size = $this->changeType($this->available_space(Auth::user()->id), 'B' ,'KB');
		   if($additional_settings->subscription_mode == 1)
		   {
			   if(Auth::user()->user_subscr_space_level == 'limited')
			   {
					
					if(Auth::user()->user_subscr_space_type == 'MB')
					{ 
					$maxsize = $this->changeType(Auth::user()->user_subscr_space, 'MB', 'KB'); 
					} 
					elseif(Auth::user()->user_subscr_space_type == 'GB')
					{
					$maxsize = $this->changeType(Auth::user()->user_subscr_space, 'GB', 'KB');
					}
					else
					{
					$maxsize = $this->changeType(Auth::user()->user_subscr_space, 'TB', 'KB');
					}
					if($occupy_size < $maxsize)
					{
					  $overall_size = $maxsize - $occupy_size;
					  $round_size = round($overall_size);
					}
					else
					{
					   $overall_size = $maxsize;
					   $round_size = round($overall_size);
					}  
		   
					  $request->validate([
										'item_name' => 'required',
										'item_desc' => 'required',
										'item_thumbnail' => 'mimes:jpeg,jpg,png|max:'.$image_size,
										'item_preview' => 'mimes:jpeg,jpg,png|max:'.$image_size,
										'item_file' => 'mimes:zip|max:'.$round_size,
										'video_file' => 'mimes:mp4|max:'.$round_size,
										'item_screenshot.*' => 'image|mimes:jpeg,jpg,png|max:'.$image_size,
										
					 ]);
				}
			}	
			else
			{
			    $request->validate([
									'item_name' => 'required',
									'item_desc' => 'required',
									'item_thumbnail' => 'mimes:jpeg,jpg,png',
									'item_preview' => 'mimes:jpeg,jpg,png',
									'item_file' => 'mimes:zip',
									'video_file' => 'mimes:mp4',
									'item_screenshot.*' => 'image|mimes:jpeg,jpg,png',
									
				 ]);
			}	 
		 
	  }
	  else
	  {
	    
		   $occupy_size = $this->changeType($this->available_space(Auth::user()->id), 'B' ,'KB');
		   if($additional_settings->subscription_mode == 1)
		   {
			   if(Auth::user()->user_subscr_space_level == 'limited')
			   {
					
					if(Auth::user()->user_subscr_space_type == 'MB')
					{ 
					$maxsize = $this->changeType(Auth::user()->user_subscr_space, 'MB', 'KB'); 
					} 
					elseif(Auth::user()->user_subscr_space_type == 'GB')
					{
					$maxsize = $this->changeType(Auth::user()->user_subscr_space, 'GB', 'KB');
					}
					else
					{
					$maxsize = $this->changeType(Auth::user()->user_subscr_space, 'TB', 'KB');
					}
					if($occupy_size < $maxsize)
					{
					  $overall_size = $maxsize - $occupy_size;
					  $round_size = round($overall_size);
					}
					else
					{
					   $overall_size = $maxsize;
					   $round_size = round($overall_size);
					}  
					if($file_type == 'file')
					{
						 $request->validate([
											'item_name' => 'required',
											'item_desc' => 'required',
											'item_thumbnail' => 'mimes:jpeg,jpg,png|max:'.$image_size.'|dimensions:width=80,height=80',
											'item_preview' => 'mimes:jpeg,jpg,png|max:'.$image_size,
											'item_file' => 'required|mimes:zip|max:'.$round_size,
											'video_file' => 'mimes:mp4|max:'.$round_size,
											'item_screenshot.*' => 'image|mimes:jpeg,jpg,png|max:'.$image_size,
											
						 ]);
					 }
					 else
					 {
					    $request->validate([
											'item_name' => 'required',
											'item_desc' => 'required',
											'item_thumbnail' => 'mimes:jpeg,jpg,png|max:'.$image_size.'|dimensions:width=80,height=80',
											'item_preview' => 'mimes:jpeg,jpg,png|max:'.$image_size,
											'video_file' => 'mimes:mp4|max:'.$round_size,
											'item_screenshot.*' => 'image|mimes:jpeg,jpg,png|max:'.$image_size,
											
						 ]);
					 }
				}
				else
				{
				   
				      if($file_type == 'file')
					  {
						$request->validate([
											'item_name' => 'required',
											'item_desc' => 'required',
											'item_thumbnail' => 'mimes:jpeg,jpg,png|max:'.$image_size,
											'item_preview' => 'mimes:jpeg,jpg,png|max:'.$image_size,
											'item_file' => 'mimes:zip|required',
											'video_file' => 'mimes:mp4',
											'item_screenshot.*' => 'image|mimes:jpeg,jpg,png|max:'.$image_size,
											
						 ]);
					  }
					  else
					  {
						 $request->validate([
											'item_name' => 'required',
											'item_desc' => 'required',
											'item_thumbnail' => 'mimes:jpeg,jpg,png|max:'.$image_size,
											'item_preview' => 'mimes:jpeg,jpg,png|max:'.$image_size,
											'video_file' => 'mimes:mp4',
											'item_screenshot.*' => 'image|mimes:jpeg,jpg,png|max:'.$image_size,
											
						 ]);
					  
					  }	
				   
				   
				}
			}	
			else
			{
			   $request->validate([
									'item_name' => 'required',
									'item_desc' => 'required',
									'item_thumbnail' => 'mimes:jpeg,jpg,png|max:'.$image_size,
									'item_preview' => 'mimes:jpeg,jpg,png|max:'.$image_size,
									'item_file' => 'required|mimes:zip',
									'video_file' => 'mimes:mp4',
									'item_screenshot.*' => 'image|mimes:jpeg,jpg,png|max:'.$image_size,
									
				 ]);
			}	 
	  }	*/ 
	  
	  $request->validate([
									'item_name' => 'required',
									'item_desc' => 'required',
									
									
				 ]);
	  $rules = array(
				
				'item_name' => ['required', 'max:100', Rule::unique('items') ->ignore($item_token, 'item_token') -> where(function($sql){ $sql->where('drop_status','=','no');})],
				
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
		    
		  /*if ($request->hasFile('item_thumbnail')) 
		  {
		    Items::droThumb($item_token);
			if($allsettings->watermark_option == 1)
			{
				$image = $request->file('item_thumbnail');
				$img_name = time() . '.'.$image->getClientOriginalExtension();
				$destinationPath = public_path('/storage/items');
				$imagePath = $destinationPath. "/".  $img_name;
				$image->move($destinationPath, $img_name);
				$watermarkImg=Image::make(public_path('storage/settings/'.$watermark));
				$img=Image::make(public_path('storage/items/'.$img_name));
				$wmarkWidth=$watermarkImg->width();
				$wmarkHeight=$watermarkImg->height();
	
				$imgWidth=$img->width();
				$imgHeight=$img->height();
	
				$x=0;
				$y=0;
				while($y<=$imgHeight){
					$img->insert(public_path('storage/settings/'.$watermark),'top-left',$x,$y);
					$x+=$wmarkWidth;
					if($x>=$imgWidth){
						$x=0;
						$y+=$wmarkHeight;
					}
				}
				$img->save(base_path('public/storage/items/'.$img_name));
				$item_thumbnail = $img_name;
				
			 }
			 else
			 {
			    $image = $request->file('item_thumbnail');
				$img_name = time() . '.'.$image->getClientOriginalExtension();
				$destinationPath = public_path('/storage/items');
				$imagePath = $destinationPath. "/".  $img_name;
				$image->move($destinationPath, $img_name);
				$item_thumbnail = $img_name;
			 }	
				
			
		  }
		  else
		  {
		     $item_thumbnail = $request->input('save_thumbnail');
		  }
		  
		  
		  if ($request->hasFile('item_preview')) 
		  {
		    Items::droPreview($item_token);
			if($allsettings->watermark_option == 1)
			{
				$image = $request->file('item_preview');
				$img_name = time() . '252.'.$image->getClientOriginalExtension();
				$destinationPath = public_path('/storage/items');
				$imagePath = $destinationPath. "/".  $img_name;
				$image->move($destinationPath, $img_name);
				$watermarkImg=Image::make(public_path('storage/settings/'.$watermark));
				$img=Image::make(public_path('storage/items/'.$img_name));
				$wmarkWidth=$watermarkImg->width();
				$wmarkHeight=$watermarkImg->height();
	
				$imgWidth=$img->width();
				$imgHeight=$img->height();
	
				$x=0;
				$y=0;
				while($y<=$imgHeight){
					$img->insert(public_path('storage/settings/'.$watermark),'top-left',$x,$y);
					$x+=$wmarkWidth;
					if($x>=$imgWidth){
						$x=0;
						$y+=$wmarkHeight;
					}
				}
				$img->save(base_path('public/storage/items/'.$img_name));
				$item_preview = $img_name;
				
			}
			else
			{
			    $image = $request->file('item_preview');
				$img_name = time() . '252.'.$image->getClientOriginalExtension();
				$destinationPath = public_path('/storage/items');
				$imagePath = $destinationPath. "/".  $img_name;
				$image->move($destinationPath, $img_name);
				$item_preview = $img_name;
			}	
			
			
		  }
		  else
		  {
		     $item_preview = $request->input('save_preview');
		  }
		  
		  
		  if ($request->hasFile('item_file')) 
		  {
			  $image = $request->file('item_file');
			  $img_name = time() . '147.'.$image->getClientOriginalExtension();
			  if($allsettings->site_s3_storage == 1)
			  {
			     Storage::disk('s3')->delete($request->input('save_file'));
				 Storage::disk('s3')->put($img_name, file_get_contents($image), 'public');
				 $item_file = $img_name;
			  }
			  else if($allsettings->site_s3_storage == 2)
			  {
			     Storage::disk('wasabi')->delete($request->input('save_file'));
			     Storage::disk('wasabi')->put($img_name, file_get_contents($image));
				 $item_file = $img_name;
			  }
			  else
			  {
			    Items::droFile($item_token);
				$destinationPath = public_path('/storage/items');
				$imagePath = $destinationPath. "/".  $img_name;
				$image->move($destinationPath, $img_name);
				$item_file = $img_name;
			  }	
			
		  }
		  else
		  {
		     $item_file = $request->input('save_file');
		  }
		  
		  
		  if ($request->hasFile('video_file')) 
		  {
			  $image = $request->file('video_file');
			  $img_name = time() . '128.'.$image->getClientOriginalExtension();
			  if($allsettings->site_s3_storage == 1)
			  {
			     Storage::disk('s3')->delete($request->input('save_video_file'));
				 Storage::disk('s3')->put($img_name, file_get_contents($image), 'public');
				 $video_file = $img_name;
			  }
			  else if($allsettings->site_s3_storage == 2)
			  {
			     Storage::disk('wasabi')->delete($request->input('save_video_file'));
				 Storage::disk('wasabi')->put($img_name, file_get_contents($image));
				 $video_file = $img_name;
			  }
			  else
			  {
			    Items::drovideoFile($item_token);
				$destinationPath = public_path('/storage/items');
				$imagePath = $destinationPath. "/".  $img_name;
				$image->move($destinationPath, $img_name);
				$video_file = $img_name;
			  }	
			
		  }
		  else
		  {
		     $video_file = $request->input('save_video_file');
		  }
		  */
		  
		   
		 $updated_item = date('Y-m-d H:i:s'); 
		
		
		    $data = array('item_name' => $item_name, 'item_desc' => $item_desc, 'item_thumbnail' => $item_thumbnail, 'item_preview' => $item_preview, 'item_file' => $item_file, 'file_type' => $file_type, 'item_file_link' => $item_file_link, 'item_category' =>$cat_id, 'item_category_parent' => $parent_category_id, 'item_category_type' => $cat_name, 'item_type' => $item_type, 'regular_price' => $regular_price, 'extended_price' => $extended_price, 'demo_url' => $demo_url, 'item_tags' => $item_tags, 'item_status' => $item_status, 'item_shortdesc' => $item_shortdesc, 'free_download' => $free_download, 'item_slug' => $item_slug, 'video_url' => $video_url, 'future_update' => $future_update, 'item_support' => $item_support, 'updated_item' => $updated_item, 'item_flash_request' => $item_flash_request, 'video_preview_type' => $video_preview_type, 'video_file' => $video_file, 'item_type_cat_id' => $item_category, 'seller_refund_term' => $seller_refund_term, 'seller_money_back' => $seller_money_back, 'seller_money_back_days' => $seller_money_back_days, 'item_allow_seo' => $item_allow_seo, 'item_seo_keyword' => $item_seo_keyword, 'item_seo_desc' => $item_seo_desc, 'audio_file' => $audio_file, 'item_type_id' => $type_id);
			
		    Items::updateitemData($item_token,$data);
			
			Items::dropAttribute($item_token);
			
			$attribute['fields'] = Attribute::selectedAttribute($type_id);
			   foreach($attribute['fields'] as $attribute_field)
			   {
				   $multiple = $request->input('attributes_'.$attribute_field->attr_id);
				   if(isset($multiple))
				   {
					   if(count($multiple) != 0)
					   {
						   $attributes = "";
						   foreach($multiple as $browser)
						   {
							 $attributes .= $browser.',';
							 
						   }
						   $attributes_values = rtrim($attributes,",");
						   $data = array( 'item_token' => $item_token, 'attribute_id' => $attribute_field->attr_id, 'item_attribute_label' => $attribute_field->attr_label, 'item_attribute_values' => $attributes_values);
						   Items::saveAttribute($data);
					  }	 
				  }  
			   }
			
			
			/*if ($request->hasFile('item_screenshot')) 
			{
			   
			   if($allsettings->watermark_option == 1)
			   {
					$files = $request->file('item_screenshot');
					foreach($files as $file)
					{
						$extension = $file->getClientOriginalExtension();
						$fileName = Str::random(5)."-".date('his')."-".Str::random(3).".".$extension;
						$folderpath  = public_path('/storage/items');
						$file->move($folderpath , $fileName);
						$watermarkImg=Image::make(public_path('storage/settings/'.$watermark));
						$img=Image::make(public_path('storage/items/'.$fileName));
						$wmarkWidth=$watermarkImg->width();
						$wmarkHeight=$watermarkImg->height();
			
						$imgWidth=$img->width();
						$imgHeight=$img->height();
			
						$x=0;
						$y=0;
						while($y<=$imgHeight){
							$img->insert(public_path('storage/settings/'.$watermark),'top-left',$x,$y);
							$x+=$wmarkWidth;
							if($x>=$imgWidth){
								$x=0;
								$y+=$wmarkHeight;
							}
						}
						$img->save(base_path('public/storage/items/'.$fileName));
						$imgdata = array('item_token' => $item_token, 'item_image' => $fileName);
						Items::saveitemImages($imgdata);
					}
				}
				else
				{
				    $files = $request->file('item_screenshot');
					foreach($files as $file)
					{
						$extension = $file->getClientOriginalExtension();
						$fileName = Str::random(5)."-".date('his')."-".Str::random(3).".".$extension;
						$folderpath  = public_path('/storage/items');
						$file->move($folderpath , $fileName);
						$imgdata = array('item_token' => $item_token, 'item_image' => $fileName);
						Items::saveitemImages($imgdata);
					}
				}	
					
					
		   }*/
		   if(!empty($item_screenshot))
			{   
				$var=explode(',',$item_screenshot);
				foreach($var as $row)
				{
					$imgdata = array('item_token' => $item_token, 'item_image' => $row);
					Items::saveitemImages($imgdata);
				}
			}	
			Items::forceDATA($session_id);
       
         $getvendor['user'] = Members::singlebuyerData($user_id);
		 $token = $request->input('item_token');
		 $itemdata['data'] = Items::edititemData($token);
		 $item_id = $itemdata['data']->item_id;
		 $item_slug = $itemdata['data']->item_slug;
		 $item_url = URL::to('/item').'/'.$item_slug;
		 $check_email_support = Members::getuserSubscription($user_id);
		 if($getvendor['user']->item_update_email == 1)
		 {
		    if($check_email_support == 1)
			{
				  $sid = 1;
				  $setting['setting'] = Settings::editGeneral($sid);
				  $admin_name = $setting['setting']->sender_name;
				  $admin_email = $setting['setting']->sender_email;
				  $record = array('item_url' => $item_url);
				  $checkdata['order'] = Items::getorderStatus($item_id,$user_id);
				  foreach($checkdata['order'] as $order)
				  { 
				  $to_name = $order->username;
				  $to_email = $order->email;
				  /* email template code */
	          		$checktemp = EmailTemplate::checkTemplate(5);
			  		if($checktemp != 0)
			  		{
			  		$template_view['mind'] = EmailTemplate::viewTemplate(5);
			  		$template_subject = $template_view['mind']->et_subject;
			  		}
			  		else
			  		{
			  		$template_subject = "Item Update Notifications";
			  		}
			  	/* email template code */
				  Mail::send('item_update_mail', $record, function($message) use ($admin_name, $admin_email, $to_email, $to_name, $template_subject) {
						$message->to($to_email, $to_name)
								->subject($template_subject);
						$message->from($admin_email,$admin_name);
					});
			  }
			  		
		  }	
			
			
			
		 
		 }     
			
			
			return redirect('/manage-item')->with('success', $item_approve_status);
		
		
		}
	   
	   
	   
	   
	   
	   
	   
	
	}
	
	
	
	public function changeType($size, $from, $to){
        $arr = ['B', 'KB', 'MB', 'GB', 'TB'];
        $tSayi = array_search($to, $arr);
        $eSayi = array_search($from, $arr);
        $pow = $eSayi - $tSayi;
        /*return $size * pow(1024, $pow) . ' ' . $to;*/
		return $size * pow(1024, $pow);
    }
	
	
	public static function available_space($user_id)
	{
	    $check_user_count = Items::checkItemUser($user_id);
		if($check_user_count != 0)
		{
			$allsettings = Settings::allSettings();
			$item['display'] = Items::getItemStorage($user_id);
			$occupy_size = 0;
			if($allsettings->site_s3_storage == 1)
			{
			   foreach($item['display'] as $item)
			   {
			       if(!empty($item->item_file))
				   {
					   if (Storage::disk('s3')->exists($item->item_file)) 
					   {
						   $occupy_size += Storage::disk('s3')->size($item->item_file);
						   
					   }
					   else
					   {
						  $occupy_size += 0;
					   }
				   }
				   else
				   {
				      $occupy_size += 0;
				   }
				   if(!empty($item->video_file))
				   {
					   if (Storage::disk('s3')->exists($item->video_file)) 
					   {
						   
						   $occupy_size += Storage::disk('s3')->size($item->video_file);
						   
					   } 
					   else
					   {
						   $occupy_size += 0;
					   } 
				   } 
				   else
				   {
				      $occupy_size += 0;
				   }
				   
			   }
			}
			else if($allsettings->site_s3_storage == 2)
			{
			   foreach($item['display'] as $item)
			   {
			       if(!empty($item->item_file))
				   {
					   if (Storage::disk('wasabi')->exists($item->item_file)) 
					   {
						   $occupy_size += Storage::disk('wasabi')->size($item->item_file);
						   
					   }
					   else
					   {
						  $occupy_size += 0;
					   }
				   }
				   else
				   {
				      $occupy_size += 0;
				   }
				   if(!empty($item->video_file))
				   {
					   if (Storage::disk('wasabi')->exists($item->video_file)) 
					   {
						   
						   $occupy_size += Storage::disk('wasabi')->size($item->video_file);
						   
					   } 
					   else
					   {
						   $occupy_size += 0;
					   } 
				   } 
				   else
				   {
				      $occupy_size += 0;
				   }
				   
			   }
			}
			else
			{
			   
			   foreach($item['display'] as $item)
			   {
			        $filepath = public_path('storage/items/'.$item->item_file);
					$videopath =  public_path('storage/items/'.$item->video_file);
					if(!empty($item->item_file))
				    {
						if (file_exists($filepath)) 
						{
						   $occupy_size += File::size(public_path('storage/items/'.$item->item_file));
						}
						else
						{
						   $occupy_size += 0;
						}
					}
					else
					{
					   $occupy_size += 0;
					}	
					if(!empty($item->video_file))
				    {
					   if (file_exists($videopath)) 
						{
						   $occupy_size += File::size(public_path('storage/items/'.$item->video_file));
						}
						else
						{
						   $occupy_size += 0;
						}
					  
					}
					else
					{
					   $occupy_size += 0;
					}
			   }
			   	
			   		
			}
	    }
		else
		{
		  $occupy_size = 0;  
		} 
		return $occupy_size;
		
	}
	
	public function save_items(Request $request)
	{
	   $session_id = Session::getId();
	   $item_name = $request->input('item_name');
	   $additional['settings'] = Settings::editAdditional();
	   if($additional['settings']->site_url_rewrite == 1)
	   {
	   $item_slug = $this->seo_slug($item_name);
	   }
	   else
	   {
	   $item_slug = $this->non_seo_slug($item_name);
	   }
	   $item_desc = htmlentities($request->input('item_desc'));
	   $seller_refund_term = $request->input('seller_refund_term');
	   $item_category = $request->input('item_category');
	   
       $split = explode("_", $item_category);
         
       $cat_id = $split[1];
	   $cat_name = $split[0];
	   if($cat_name == 'subcategory')
	   {
	      $fet = Category::editsubcategoryData($cat_id);
		  $parent_category_id = $fet->cat_id;
	   }
	   else
	   {
	      $parent_category_id = $cat_id;
	   }
	   
	   
	   $item_type = $request->input('item_type');
	   $type_id = $request->input('type_id');
	   $demo_url = $request->input('demo_url');
	   $item_tags = $request->input('item_tags');
	   
	   $item_shortdesc = $request->input('item_shortdesc');
	   $free_download = $request->input('free_download');
	   $video_url = $request->input('video_url');
	   $created_item = date('Y-m-d H:i:s');
	   $updated_item = date('Y-m-d H:i:s');
	   
	   
	   
	   if(!empty($request->input('regular_price')))
	   {
	   $regular_price = $request->input('regular_price');
	   }
	   else
	   {
	   $regular_price = 0;
	   }
	   if(!empty($request->input('extended_price')))
	   {
	   $extended_price = $request->input('extended_price');
	   }
	   else
	   {
	    $extended_price = 0;
	   }
	   
	   if(!empty($request->input('future_update')))
	   {
	   $future_update = $request->input('future_update');
	   }
	   else
	   {
	   $future_update = 0;
	   }
	   
	   if(!empty($request->input('item_support')))
	   {
	   $item_support = $request->input('item_support');
	   }
	   else
	   {
	   $item_support = 0;
	   }
	   $item_flash_request = $request->input('item_flash_request');
	   
	   $user_id = $request->input('user_id');
	   $item_token = $this->generateRandomString();
	   $allsettings = Settings::allSettings();
	   $item_approval = $allsettings->item_approval;
	   
	   
	   if(!empty($request->input('item_thumbnail1')))
	   {
		 $item_thumbnail = $request->input('item_thumbnail1');
	   }
	   else
	   {
		 $item_thumbnail = $request->input('item_thumbnail2');
	   }
	   if(!empty($request->input('item_preview1')))
	   {
		 $item_preview = $request->input('item_preview1');
	   }
	   else
	   {
		 $item_preview = $request->input('item_preview2');
	   }
	   if(!empty($request->input('item_file1')))
	   {
		 $item_file = $request->input('item_file1');
	   }
	   else
	   {
		 $item_file = $request->input('item_file2');
	   }
	   if(!empty($request->input('file_type1')))
	   {
		 $file_type = $request->input('file_type1');
	   }
	   else
	   {
		 $file_type = $request->input('file_type2');
	   }
	   if(!empty($request->input('item_file_link1')))
	   {
	   $item_file_link = $request->input('item_file_link1');
	   }
	   else
	   {
	   $item_file_link = $request->input('item_file_link2');;  
	   }
	   if(!empty($request->input('item_screenshot')))
	   {
	      
		  $gallery1 = "";
		  foreach($request->input('item_screenshot') as $gallery)
		  {
		     $gallery1 .= $gallery.',';
		  }
		  $item_screenshot = rtrim($gallery1,",");
		  
	   }
	   else
	   {
	     $item_screenshot = "";
	   }
	   if(!empty($request->input('video_preview_type1')))
	   {
	   $video_preview_type = $request->input('video_preview_type1');
	   }
	   else
	   {
	   $video_preview_type = $request->input('video_preview_type2');
	   }
	   
	   if(!empty($request->input('video_url1')))
	   {
	   $video_url = $request->input('video_url1');
	   }
	   else
	   {
	   $video_url = $request->input('video_url2');
	   }
	    
	   if(!empty($request->input('video_file1')))
	   {
	   $video_file = $request->input('video_file1');
	   }
	   else
	   {
	   $video_file = $request->input('video_file2');
	   }
	   
	   if(!empty($request->input('audio_file1')))
	   {
	   $audio_file = $request->input('audio_file1');
	   }
	   else
	   {
	   $audio_file = $request->input('audio_file2');
	   }	
	   
	   $item_allow_seo = $request->input('item_allow_seo');
	   if($request->input('item_seo_keyword') != "")
		 {
		 $item_seo_keyword = $request->input('item_seo_keyword');
		 }
		 else
		 {
		 $item_seo_keyword = "";
		 }
		 if($request->input('item_seo_desc') != "")
		 {
		 $item_seo_desc = $request->input('item_seo_desc');
		 }
		 else
		 {
		 $item_seo_desc = "";
		 }
	   
	   if($item_approval == 1)
	   {
	      $item_status = 1;
		  $item_approve_status = "Your item updated successfully.";
	   }
	   else
	   {
	      $item_status = 0;
		  $item_approve_status = "Thanks for your submission. Once admin will approved your item. will publish on our marketplace.";
	   }
	   
	   $seller_money_back = $request->input('seller_money_back');
	   if(!empty($request->input('seller_money_back_days')))
	   {
	   $seller_money_back_days = $request->input('seller_money_back_days');
	   }
	   else
	   {
	   $seller_money_back_days = 0;
	   }
	   
	   
	   
	   $watermark = $allsettings->site_watermark;
	   $image_size = $allsettings->site_max_image_size;
	   $file_size = $allsettings->site_max_file_size;
	   $url = URL::to("/");
	   $occupy_size = $this->changeType($this->available_space(Auth::user()->id), 'B' ,'KB');
	   $additional_settings = Settings::editAdditional();
	   $request->validate([
									'item_name' => 'required',
									'item_desc' => 'required',
									
									
				 ]);
	   /*if($additional_settings->subscription_mode == 1)
	   {
		   if(Auth::user()->user_subscr_space_level == 'limited')
		   {
				
				if(Auth::user()->user_subscr_space_type == 'MB')
				{ 
				$maxsize = $this->changeType(Auth::user()->user_subscr_space, 'MB', 'KB'); 
				} 
				elseif(Auth::user()->user_subscr_space_type == 'GB')
				{
				$maxsize = $this->changeType(Auth::user()->user_subscr_space, 'GB', 'KB');
				}
				else
				{
				$maxsize = $this->changeType(Auth::user()->user_subscr_space, 'TB', 'KB');
				}
				if($occupy_size < $maxsize)
				{
				  $overall_size = $maxsize - $occupy_size;
				  $round_size = round($overall_size);
				}
				else
				{
				   $overall_size = $maxsize;
				   $round_size = round($overall_size);
				} 
			   if($file_type == 'file')
			   {	 
			   $request->validate([
									'item_name' => 'required',
									'item_desc' => 'required',
									'item_thumbnail' => 'required|mimes:jpeg,jpg,png|max:'.$image_size,
									'item_preview' => 'required|mimes:jpeg,jpg,png|max:'.$image_size,
									'item_file' => 'mimes:zip|required|max:'.$round_size,
									'video_file' => 'mimes:mp4|max:'.$round_size,
									'item_screenshot.*' => 'image|mimes:jpeg,jpg,png|max:'.$image_size,
									
				 ]);
			  }
			  else
			  {
			     $request->validate([
									'item_name' => 'required',
									'item_desc' => 'required',
									'item_thumbnail' => 'required|mimes:jpeg,jpg,png|max:'.$image_size,
									'item_preview' => 'required|mimes:jpeg,jpg,png|max:'.$image_size,
									'video_file' => 'mimes:mp4|max:'.$round_size,
									'item_screenshot.*' => 'image|mimes:jpeg,jpg,png|max:'.$image_size,
									
				 ]);
			  }	 
		  }
		  else
		  {
		  
		      if($file_type == 'file')
			  {
				$request->validate([
									'item_name' => 'required',
									'item_desc' => 'required',
									'item_thumbnail' => 'required|mimes:jpeg,jpg,png|max:'.$image_size,
									'item_preview' => 'required|mimes:jpeg,jpg,png|max:'.$image_size,
									'item_file' => 'mimes:zip|required',
									'video_file' => 'mimes:mp4',
									'item_screenshot.*' => 'image|mimes:jpeg,jpg,png|max:'.$image_size,
									
				 ]);
			  }
			  else
			  {
				 $request->validate([
									'item_name' => 'required',
									'item_desc' => 'required',
									'item_thumbnail' => 'required|mimes:jpeg,jpg,png|max:'.$image_size,
									'item_preview' => 'required|mimes:jpeg,jpg,png|max:'.$image_size,
									'video_file' => 'mimes:mp4',
									'item_screenshot.*' => 'image|mimes:jpeg,jpg,png|max:'.$image_size,
									
				 ]);
			  
			  }	
		      
		  }	
	  }	  
	  else
	  {
	     if($file_type == 'file')
		 {
	        $request->validate([
								'item_name' => 'required',
								'item_desc' => 'required',
								'item_thumbnail' => 'required|mimes:jpeg,jpg,png|max:'.$image_size,
								'item_preview' => 'required|mimes:jpeg,jpg,png|max:'.$image_size,
								'item_file' => 'mimes:zip|required',
								'video_file' => 'mimes:mp4',
								'item_screenshot.*' => 'image|mimes:jpeg,jpg,png|max:'.$image_size,
								
			 ]);
		  }
		  else
		  {
		     $request->validate([
								'item_name' => 'required',
								'item_desc' => 'required',
								'item_thumbnail' => 'required|mimes:jpeg,jpg,png|max:'.$image_size,
								'item_preview' => 'required|mimes:jpeg,jpg,png|max:'.$image_size,
								'video_file' => 'mimes:mp4',
								'item_screenshot.*' => 'image|mimes:jpeg,jpg,png|max:'.$image_size,
								
			 ]);
		  
		  }	 
	  } */
		 $rules = array(
				
				'item_name' => ['required', 'max:100', Rule::unique('items') -> where(function($sql){ $sql->where('drop_status','=','no');})],
				
				
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
		   
		  
		    
			  /* if ($request->hasFile('item_thumbnail')) 
			   {
			  
				if($allsettings->watermark_option == 1)
				{
				$image = $request->file('item_thumbnail');
				$img_name = time() . '.'.$image->getClientOriginalExtension();
				$destinationPath = public_path('/storage/items');
				$imagePath = $destinationPath. "/".  $img_name;
				$image->move($destinationPath, $img_name);
						
				$watermarkImg=Image::make(public_path('storage/settings/'.$watermark));
				$img=Image::make(public_path('storage/items/'.$img_name));
				$wmarkWidth=$watermarkImg->width();
				$wmarkHeight=$watermarkImg->height();
	
				$imgWidth=$img->width();
				$imgHeight=$img->height();
	
				$x=0;
				$y=0;
				while($y<=$imgHeight){
					$img->insert(public_path('storage/settings/'.$watermark),'top-left',$x,$y);
					$x+=$wmarkWidth;
					if($x>=$imgWidth){
						$x=0;
						$y+=$wmarkHeight;
					}
				}
				$img->save(base_path('public/storage/items/'.$img_name));
				$item_thumbnail = $img_name;
				
				}
				else
				{
					$image = $request->file('item_thumbnail');
					$img_name = time() . '.'.$image->getClientOriginalExtension();
					$destinationPath = public_path('/storage/items');
					$imagePath = $destinationPath. "/".  $img_name;
					$image->move($destinationPath, $img_name);
					$item_thumbnail = $img_name;
				}
				
				
			  }
			  else
			  {
				 $item_thumbnail = "";
			  }
			  
			  
			  if ($request->hasFile('item_preview')) 
			  {
				if($allsettings->watermark_option == 1)
				{
				$image = $request->file('item_preview');
				$img_name = time() . '252.'.$image->getClientOriginalExtension();
				$destinationPath = public_path('/storage/items');
				$imagePath = $destinationPath. "/".  $img_name;
				$image->move($destinationPath, $img_name);
						
				$watermarkImg=Image::make(public_path('storage/settings/'.$watermark));
				$img=Image::make(public_path('storage/items/'.$img_name));
				$wmarkWidth=$watermarkImg->width();
				$wmarkHeight=$watermarkImg->height();
	
				$imgWidth=$img->width();
				$imgHeight=$img->height();
	
				$x=0;
				$y=0;
				while($y<=$imgHeight){
					$img->insert(public_path('storage/settings/'.$watermark),'top-left',$x,$y);
					$x+=$wmarkWidth;
					if($x>=$imgWidth){
						$x=0;
						$y+=$wmarkHeight;
					}
				}
				$img->save(base_path('public/storage/items/'.$img_name));
				$item_preview = $img_name;
				
				}
				else
				{
				   $image = $request->file('item_preview');
				   $img_name = time() . '252.'.$image->getClientOriginalExtension();
				   $destinationPath = public_path('/storage/items');
				   $imagePath = $destinationPath. "/".  $img_name;
				   $image->move($destinationPath, $img_name);
				   $item_preview = $img_name;
				}
				
				
			  }
			  else
			  {
				 $item_preview = "";
			  }
			  
			  
				  
			  
			  if ($request->hasFile('item_file')) 
			  {
				  $image = $request->file('item_file');
				  $img_name = time() . '147.'.$image->getClientOriginalExtension();
				  if($allsettings->site_s3_storage == 1)
				  {
					 Storage::disk('s3')->put($img_name, file_get_contents($image), 'public');
					 $item_file = $img_name;
				  }
				  else if($allsettings->site_s3_storage == 2)
			  	  {
			     
			     	Storage::disk('wasabi')->put($img_name, file_get_contents($image));
				 	$item_file = $img_name;
			  	  }
				  else
				  {
				
					$destinationPath = public_path('/storage/items');
					$imagePath = $destinationPath. "/".  $img_name;
					$image->move($destinationPath, $img_name);
					$item_file = $img_name;
				  }	
				
			  }
			  else
			  {
				 $item_file = "";
			  }
			  
			  
			  if ($request->hasFile('video_file')) 
			  {
				  $image = $request->file('video_file');
				  $img_name = time() . '128.'.$image->getClientOriginalExtension();
				  if($allsettings->site_s3_storage == 1)
				  {
					 Storage::disk('s3')->put($img_name, file_get_contents($image), 'public');
					 $video_file = $img_name;
				  }
				  else if($allsettings->site_s3_storage == 2)
			  	  {
				  	Storage::disk('wasabi')->put($img_name, file_get_contents($image));
				    $video_file = $img_name;
			      }
				  else
				  {
				
					$destinationPath = public_path('/storage/items');
					$imagePath = $destinationPath. "/".  $img_name;
					$image->move($destinationPath, $img_name);
					$video_file = $img_name;
				  }	
				
			  }
			  else
			  {
				 $video_file = "";
			  }
			 */ 
			
		  $data = array('user_id' => $user_id, 'item_token' => $item_token, 'item_name' => $item_name, 'item_desc' => $item_desc, 'item_thumbnail' => $item_thumbnail, 'item_preview' => $item_preview, 'item_file' => $item_file, 'file_type' => $file_type, 'item_file_link' => $item_file_link, 'item_category' =>$cat_id, 'item_category_parent' => $parent_category_id,  'item_category_type' => $cat_name, 'item_type' => $item_type, 'regular_price' => $regular_price, 'extended_price' => $extended_price, 'demo_url' => $demo_url, 'item_tags' => $item_tags, 'item_status' => $item_status, 'item_shortdesc' => $item_shortdesc, 'free_download' => $free_download, 'item_slug' => $item_slug, 'video_url' => $video_url, 'future_update' => $future_update, 'item_support' => $item_support, 'created_item' => $created_item, 'updated_item' => $updated_item, 'item_flash_request' => $item_flash_request, 'video_preview_type' => $video_preview_type, 'video_file' => $video_file, 'item_type_cat_id' => $item_category, 'seller_refund_term' => $seller_refund_term, 'seller_money_back' => $seller_money_back, 'seller_money_back_days' => $seller_money_back_days, 'item_allow_seo' => $item_allow_seo, 'item_seo_keyword' => $item_seo_keyword, 'item_seo_desc' => $item_seo_desc, 'audio_file' => $audio_file, 'item_type_id' => $type_id);
			
			
			
			
			
			/*if ($request->hasFile('item_screenshot')) 
			{
			   if($allsettings->watermark_option == 1)
			   {
			   
					$files = $request->file('item_screenshot');
					foreach($files as $file)
					{
						$extension = $file->getClientOriginalExtension();
						$fileName = Str::random(5)."-".date('his')."-".Str::random(3).".".$extension;
						$folderpath  = public_path('/storage/items');
						$file->move($folderpath , $fileName);
						$watermarkImg=Image::make(public_path('storage/settings/'.$watermark));
						$img=Image::make(public_path('storage/items/'.$fileName));
						$wmarkWidth=$watermarkImg->width();
						$wmarkHeight=$watermarkImg->height();
			
						$imgWidth=$img->width();
						$imgHeight=$img->height();
			
						$x=0;
						$y=0;
						while($y<=$imgHeight){
							$img->insert(public_path('storage/settings/'.$watermark),'top-left',$x,$y);
							$x+=$wmarkWidth;
							if($x>=$imgWidth){
								$x=0;
								$y+=$wmarkHeight;
							}
						}
						$img->save(base_path('public/storage/items/'.$fileName));
						$imgdata = array('item_token' => $item_token, 'item_image' => $fileName);
						Items::saveitemImages($imgdata);
					}
				
			   }
				else
				{
				   $files = $request->file('item_screenshot');
					foreach($files as $file)
					{
						$extension = $file->getClientOriginalExtension();
						$fileName = Str::random(5)."-".date('his')."-".Str::random(3).".".$extension;
						$folderpath  = public_path('/storage/items');
						$file->move($folderpath , $fileName);
						$imgdata = array('item_token' => $item_token, 'item_image' => $fileName);
						Items::saveitemImages($imgdata);
					}
				}
					
		 }
        */
       
              
			$user_item_count = Items::checkItemUser(Auth::user()->id); 
		  if(Auth::user()->user_subscr_item_level == 'limited')
		  {
		     if(Auth::user()->user_subscr_item > $user_item_count)
			 {  
			  
		           Items::saveitemData($data);
			       $attribute['fields'] = Attribute::selectedAttribute($type_id);
				   foreach($attribute['fields'] as $attribute_field)
				   {
					   if($request->input('attributes_'.$attribute_field->attr_id))
					   {
						$multiple = $request->input('attributes_'.$attribute_field->attr_id);
						if(count($multiple) != 0)
						{
						   $attributes = "";
						   foreach($multiple as $browser)
						   {
							 $attributes .= $browser.',';
							 
						   }
						   $attributes_values = rtrim($attributes,",");
						   $data = array( 'item_token' => $item_token, 'attribute_id' => $attribute_field->attr_id, 'item_attribute_label' => $attribute_field->attr_label, 'item_attribute_values' => $attributes_values);
						   Items::saveAttribute($data);
						}	
					  }   
				   }
			}
			else
			{
			  return redirect()->back()->with('error', 'Sorry! Your items limit reached.');
			}
		}
		else
		{
		     Items::saveitemData($data);
		     $attribute['fields'] = Attribute::selectedAttribute($type_id);
				   foreach($attribute['fields'] as $attribute_field)
				   {
					   if($request->input('attributes_'.$attribute_field->attr_id))
					   {
						$multiple = $request->input('attributes_'.$attribute_field->attr_id);
						if(count($multiple) != 0)
						{
						   $attributes = "";
						   foreach($multiple as $browser)
						   {
							 $attributes .= $browser.',';
							 
						   }
						   $attributes_values = rtrim($attributes,",");
						   $data = array( 'item_token' => $item_token, 'attribute_id' => $attribute_field->attr_id, 'item_attribute_label' => $attribute_field->attr_label, 'item_attribute_values' => $attributes_values);
						   Items::saveAttribute($data);
						}	
					  }   
				   }
		}	
		if(!empty($item_screenshot))
			{
				$var=explode(',',$item_screenshot);
				foreach($var as $row)
				{
					$imgdata = array('item_token' => $item_token, 'item_image' => $row);
					Items::saveitemImages($imgdata);
				}
		}
		Items::forceDATA($session_id);	
		return redirect('/manage-item')->with('success', $item_approve_status);
		
		
		}
	   
	   
	   
	   
	   
	   
	   
	
	}
	
	
	
	
	
	public function contact_support(Request $request)
	{
	   $support_subject = $request->input('support_subject');
	   $support_msg = $request->input('support_msg');
	   $to_email = $request->input('to_address');
	   $from_email = $request->input('from_address');
	   $to_name = $request->input('to_name');
	   $from_name = $request->input('from_name');
	   $item_url = $request->input('item_url');
	   $user_id = $request->input('to_id');
	   $check_email_support = Members::getuserSubscription($user_id);
	   
	    $sid = 1;
		$setting['setting'] = Settings::editGeneral($sid);
		
		$admin_name = $setting['setting']->sender_name;
        $admin_email = $setting['setting']->sender_email;
		
		$record = array('to_name' => $to_name, 'from_name' => $from_name, 'from_email' => $from_email, 'item_url' => $item_url, 'support_msg' => $support_msg, 'support_subject' => $support_subject);
		/* email template code */
	          	$checktemp = EmailTemplate::checkTemplate(10);
			  	if($checktemp != 0)
			  	{
			  	$template_view['mind'] = EmailTemplate::viewTemplate(10);
			  	$template_subject = $template_view['mind']->et_subject;
			  	}
			  	else
			  	{
			  	$template_subject = "Contact Support";
			  	}
			  	/* email template code */
		Mail::send('support_mail', $record, function($message) use ($admin_name, $admin_email, $to_email, $from_email, $to_name, $from_name, $template_subject) {
			$message->to($admin_email, $admin_name)
					->subject($template_subject);
			$message->from($from_email,$from_name);
		});
		
		if($check_email_support == 1)
	    {
			Mail::send('support_mail', $record, function($message) use ($admin_name, $admin_email, $to_email, $from_email, $to_name, $from_name, $template_subject) {
				$message->to($to_email, $to_name)
						->subject($template_subject);
				$message->from($from_email,$from_name);
			});
		}
	   
	  return redirect()->back()->with('success', 'Thank You! Your message sent successfully'); 
	  
	
	}
	
	
	/* cart */
	
	public function show_cart()
	{
	  $cart['item'] = Items::getcartData();
	  $cart_count = Items::getcartCount();
	   $data = array('cart' => $cart, 'cart_count' => $cart_count);
	   
	   return view('cart')->with($data);
	}
	
	
	public function remove_cart_item($ordid)
	{
	  
	   $ord_id = base64_decode($ordid); 
	   Items::deletecartdata($ord_id);
	  
	  return redirect()->back()->with('success', 'Cart item removed');
	  
	}
	
	public function remove_clear_item()
	{
	  
	   $user_id = Auth::user()->id; 
	   Items::deletecartempty($user_id);
	  
	  return redirect()->back()->with('success', 'Cart items removed');
	  
	}
	
	public function view_cart(Request $request)
	{
	  $item_price = $request->input('item_price');
	  $user_id = $request->input('user_id');
	  $item_id = $request->input('item_id');
	  $item_name = $request->input('item_name');
	  $item_user_id = $request->input('item_user_id');
	  $item_token = $request->input('item_token');
	  $additional['setting'] = Settings::editAdditional();
	  $getmember['views'] = Members::singlevendorData($item_user_id);
	  $user_exclusive_type = $getmember['views']->exclusive_author;
	  
	  $regular_license = $additional['setting']->regular_license;
	  $extended_license = $additional['setting']->extended_license;
	  
	  $split = explode("_", $item_price);
         
       $price = base64_decode($split[0]);
	   $license = $split[1];
	   if($license == 'regular')
	   {
	     $start_date = date('Y-m-d');
		 $end_date = date('Y-m-d', strtotime($regular_license));
	   }
	   else if($license == 'extended')
	   {
	     $start_date = date('Y-m-d');
		 $end_date = date('Y-m-d', strtotime($extended_license));
	   }
	   
	   $order_status = 'pending';
	   
	   $sid = 1;
	   $setting['setting'] = Settings::editGeneral($sid);
	   
	   if($additional['setting']->subscription_mode == 0)
	   {
		   if($user_exclusive_type == 1)
		   {
		   $commission = ($setting['setting']->site_exclusive_commission * $price) / 100;
		   }
		   else
		   {
		   $commission = ($setting['setting']->site_non_exclusive_commission * $price) / 100;
		   }
		   $vendor_amount = $price - $commission;
		   $admin_amount = $commission;
		}
		else
		{
		   
		   $count_mode = Settings::checkuserSubscription($item_user_id);
		   if($count_mode == 1)
		   {
		     $vendor_amount = $price;
			 $admin_amount = 0;
		   }
		   else
		   {
		       if($user_exclusive_type == 1)
			   {
			   $commission = ($setting['setting']->site_exclusive_commission * $price) / 100;
			   }
			   else
			   {
			   $commission = ($setting['setting']->site_non_exclusive_commission * $price) / 100;
			   }
			   $vendor_amount = $price - $commission;
			   $admin_amount = $commission;
		   }
		}   
	   
	   
	   $getcount  = Items::getorderCount($item_id,$user_id,$order_status);
	   
	   $savedata = array('user_id' => $user_id, 'item_id' => $item_id, 'item_name' => $item_name, 'item_user_id' => $item_user_id, 'item_token' => $item_token, 'license' => $license, 'start_date' => $start_date, 'end_date' => $end_date, 'item_price' => $price, 'vendor_amount' => $vendor_amount, 'admin_amount' => $admin_amount, 'total_price' => $price, 'order_status' => $order_status);
	   
	   
	   $updatedata = array('license' => $license, 'start_date' => $start_date, 'end_date' => $end_date, 'item_price' => $price, 'total_price' => $price);
	   
	   
	   if($additional['setting']->subscription_mode == 0)
	   {
		   if($getcount == 0)
		   {
			  Items::savecartData($savedata);
			 
			  return redirect('cart')->with('success','Item has been added to cart'); 
		   }
		   else
		   {
			  Items::updatecartData($item_id,$user_id,$order_status,$updatedata);
			  
			  return redirect('cart')->with('success','Item has been updated to cart'); 
		   }
	   }
	   else
	   {
	      Items::deletecartremove($user_id);
		  Items::savecartData($savedata);
	      return redirect('cart')->with('success','Item has been updated to cart'); 
	   } 
	   
	  
	
	}
	
	
	/* cart */
	
	
	/* checkout */
	
	public function show_checkout()
	{
	 
	 $cart['item'] = Items::getcartData();
	  $cart_count = Items::getcartCount();
	  $mobile['item'] = Items::getcartData();
	  $sid = 1;
	  $setting['setting'] = Settings::editGeneral($sid);
	  $additional['setting'] = Settings::editAdditional();
	  if($cart_count != 0)
	  {
		  $last_order = Items::lastorderData();
		  $item_user_id = $last_order->item_user_id;
		  $count_mode = Settings::checkuserSubscription($item_user_id);
		  $vendor_details = Members::singlevendorData($item_user_id);
		  if($additional['setting']->subscription_mode == 0)
		  {
			$get_payment = explode(',', $setting['setting']->payment_option);
			 $stripe_mode = $setting['setting']->stripe_mode;
			   if($stripe_mode == 0)
			   {
				 $stripe_publish = $setting['setting']->test_publish_key;
				 $stripe_secret = $setting['setting']->test_secret_key;
			   }
			   else
			   {
				 $stripe_publish = $setting['setting']->live_publish_key;
				 $stripe_secret = $setting['setting']->live_secret_key;
			   }
		  }
		  else
		  {
			 if($count_mode == 1)
			 {
				$get_payment = explode(',', $vendor_details->user_payment_option);
				   $stripe_mode = $vendor_details->user_stripe_mode;
				   if($stripe_mode == 0)
				   {
					 $stripe_publish = $vendor_details->user_test_publish_key;
					 $stripe_secret = $vendor_details->user_test_secret_key;
				   }
				   else
				   {
					 $stripe_publish = $vendor_details->user_live_publish_key;
					 $stripe_secret = $vendor_details->user_live_secret_key;
				   }
			 }
			 else
			 {
				$get_payment = explode(',', $setting['setting']->payment_option);
				   $stripe_mode = $setting['setting']->stripe_mode;
				   if($stripe_mode == 0)
				   {
					 $stripe_publish = $setting['setting']->test_publish_key;
					 $stripe_secret = $setting['setting']->test_secret_key;
				   }
				   else
				   {
					 $stripe_publish = $setting['setting']->live_publish_key;
					 $stripe_secret = $setting['setting']->live_secret_key;
				   }
			 }
		  }
	  }
	  else
	  {
	     $get_payment = explode(',', $setting['setting']->payment_option);
		 $stripe_mode = $setting['setting']->stripe_mode;
			   if($stripe_mode == 0)
			   {
				 $stripe_publish = $setting['setting']->test_publish_key;
				 $stripe_secret = $setting['setting']->test_secret_key;
			   }
			   else
			   {
				 $stripe_publish = $setting['setting']->live_publish_key;
				 $stripe_secret = $setting['setting']->live_secret_key;
			   }
	  }
	  /* VAT */
	  $country_id = Auth::user()->country;
	  $country_details = Members::countryCheck($country_id);
	  if($country_details != 0)
	  {
	      $data_views = Members::countryDATA($country_id);
		  $country_percent = $data_views->vat_price;
	  }
	  else
	  {
	    $country_percent = $additional['setting']->default_vat_price;
	  } 
	   /* VAT */
	  $data = array('cart' => $cart, 'cart_count' => $cart_count, 'get_payment' => $get_payment, 'mobile' => $mobile, 'stripe_publish' => $stripe_publish, 'stripe_secret' => $stripe_secret, 'country_percent' => $country_percent);
	   
	   
	   return view('checkout')->with($data);
	 
	
	}
	
	public function confirm_2checkout(Request $request)
	{
	
	   $token = $request->input('token');
	   $user_id = $request->input('user_id');
	   $user_name = $request->input('user_name');
	   $user_email = $request->input('user_email');
	   $product_names = $request->input('product_names');
	   $amount = base64_decode($request->input('amount'));
	   $site_currency = $request->input('site_currency');
	   $two_checkout_private = $request->input('two_checkout_private');
	   $two_checkout_account = $request->input('two_checkout_account');
	   $two_checkout_mode = $request->input('two_checkout_mode');
	   $purchase_token = $request->input('purchase_token');
	   $user_phone = rand(444444,999999);
	   $sid = 1;
	   $setting['setting'] = Settings::editGeneral($sid);
	   
	   include(app_path() . '\2Checkout\Twocheckout.php'); 
	        Twocheckout::sellerId('fdsafdsafd'); 
						Twocheckout::privateKey('fdsafdafdsa'); 
		                
						try { 
		$merchantOrderID 	= 1;
            $charge = Twocheckout_Charge::auth(array(
                "merchantOrderId" => $merchantOrderID,
                "token"      	  => $token,
                "currency"   	  => $site_currency,
                "total"      	  => $amount,
                "billingAddr" 	  => array(
                    "name" 		  => "Jenny Doe",
                    "addrLine1"   => "house no 245 street no 8 Lahore",
                    "city" 		  => "Pakistan",
                    "state" 	  => "punjab",
                    "zipCode" 	  => "54000",
                    "country" 	  => "Pakistan",
                    "email" 	  => "abc@gmail.com",
                    //"phoneNumber" => $post_data['phoneNumber']
                ),
				"demo"=> true,
            ));
			
			if ($charge['response']['responseCode'] == 'APPROVED') 
			{
				$statusMsg = "";
				$statusMsg = '<h2>Thanks for your Order!</h2>';
				$statusMsg .= '<h4>The transaction was successful. Order details are given below:</h4>';
				$statusMsg .= "<p>Response Code: ".$charge['response']['responseCode']."</p>";
				$statusMsg .= "<p>Order ID: ".$charge['response']['orderNumber']."</p>";
				$statusMsg .= "<p>Transaction ID: ".$charge['response']['transactionId']."</p>";
				$statusMsg .= "<p>Order Total: ".$charge['response']['total']." ".CURRENCY_CODE."</p>";
			}
			else
			{
				$statusMsg = "";
				$statusMsg = '<h2>OOPS! Transaction Faild</h2>';
				$statusMsg .= '<h4>The transaction was not successful. Response code is given below:</h4>';
				$statusMsg .= "<p>Response Code: ".$charge['response']['responseCode']."</p>";
			}
			
			return $statusMsg; 
			
        }catch(Exception $e) { 
            return "<p>API Errors: {$e->getMessage()}</p>";
        }
		                //Twocheckout::sandbox($two_checkout_mode);
						//Twocheckout::verifySSL(false); 
						/*try {
							$charge = Twocheckout_Charge::auth(array(
								"merchantOrderId" => $purchase_token,
								"token"      => $token,
								"currency"   => $site_currency,
								"total"      => $amount,
								"billingAddr" => array(
									"name" => $user_name,
									"addrLine1" => $user_name,
									"city" => $user_name,
									"state" => "US",
									"zipCode" => $user_phone,
									"country" => "US",
									"email" => $user_email
									//"phoneNumber" => $user_phone
								),
								"demo"=> true,
							));
							
						if ($charge['response']['responseCode'] == 'APPROVED')
			            {
						
							$payment_token = $charge['response']['transactionId'];
							 $payment_status = 'completed';
							$purchased_token = $purchase_token;
							$orderdata = array('payment_token' => $payment_token, 'order_status' => $payment_status);
							$checkoutdata = array('payment_token' => $payment_token, 'payment_status' => $payment_status);
							Items::singleordupdateData($purchased_token,$orderdata);
							Items::singlecheckoutData($purchased_token,$checkoutdata);
							
							$token = $purchased_token;
							$check['display'] = Items::getcheckoutData($token);
							$order_id = $check['display']->order_ids;
							$order_loop = explode(',',$order_id);
						  
						  foreach($order_loop as $order)
						  {
							
							$getitem['item'] = Items::getorderData($order);
							$token = $getitem['item']->item_token;
							$item['display'] = Items::solditemData($token);
							$item_sold = $item['display']->item_sold + 1;
							$item_token = $token; 
							$data = array('item_sold' => $item_sold);
							Items::updateitemData($item_token,$data);
							/* manual payment verification : OFF */
							/*if($setting['setting']->payment_verification == 0)
							{
							   
								  $ordered['data'] = Items::singleorderData($order);
								  $user_id = $ordered['data']->user_id;
								  $item_user_id = $ordered['data']->item_user_id;
								  $vendor_amount = $ordered['data']->vendor_amount;
								  $total_price = $ordered['data']->total_price;
								  $admin_amount = $ordered['data']->admin_amount;
								  
								  $vendor['info'] = Members::singlevendorData($item_user_id);
								  $user_token = $vendor['info']->user_token;
								  $to_name = $vendor['info']->name;
								  $to_email = $vendor['info']->email;
								  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
								  $record = array('earnings' => $vendor_earning);
								  Members::updatepasswordData($user_token, $record);
								  
								  $admin['info'] = Members::adminData();
								  $admin_token = $admin['info']->user_token;
								  $admin_earning = $admin['info']->earnings + $admin_amount;
								  $admin_record = array('earnings' => $admin_earning);
								  Members::updateadminData($admin_token, $admin_record);
								  
								  $orderdata = array('approval_status' => 'payment released to vendor');
								  Items::singleorderupData($order,$orderdata);
								  $admin_name = $setting['setting']->sender_name;
								  $admin_email = $setting['setting']->sender_email;
								  $currency = $setting['setting']->site_currency;
								  $check_email_support = Members::getuserSubscription($vendor['info']->id);
								  if($check_email_support == 1)
	                              {
									  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
									  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email) {
												$message->to($to_email, $to_name)
														->subject('New Payment Approved');
												$message->from($admin_email,$admin_name);
											});
							      }
							   
							}
							/* manual payment verification : OFF */
							
							
						 /* }
						
						
						$data_record = array('payment_token' => $payment_token);
						return view('success')->with($data_record);
					
					
				   }
				   else
				   {
						   return redirect('/cancel');
				   }
			} 
			catch (Twocheckout_Error $e)
			{
						
				print $e->getMessage();
				
			}*/
	
	
	}
	
	public function generateKey($length = 35) 
	{
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
    }	
	
	public function view_checkout(Request $request)
	{
	 
	   
	   $sid = 1;
	   $setting['setting'] = Settings::editGeneral($sid);
	   $cart_count = Items::getcartCount();
	   $additional['setting'] = Settings::editAdditional();
	   $additional_view = Settings::editAdditional();
	   $cart['item'] = Items::getcartData();
	   $mobile['item'] = Items::getcartData();
	   $purchase_code = $this->generateKey();
	   
	   
	   $order_firstname = $request->input('order_firstname');
	   $order_lastname = $request->input('order_lastname');
	   $order_company = $request->input('order_company');
	   $order_email = $request->input('order_email');
	   $order_country = $request->input('order_country');
	   $order_address = $request->input('order_address');
	   $order_city = $request->input('order_city');
	   $token = $request->input('token');
	   $order_zipcode = $request->input('order_zipcode');
	   $order_notes = $request->input('order_notes');
	   $purchase_token = rand(111111,999999);
	   $order_id = $request->input('order_id');
	   $item_prices = base64_decode($request->input('item_prices'));
	   $item_user_id = $request->input('item_user_id');
	   $user_id = Auth::user()->id;
	   $amount = base64_decode($request->input('amount'));
	   $vat_price = base64_decode($request->input('vat_price'));
	   $processing_fee = base64_decode($request->input('processing_fee'));
	   $user_email = Auth::user()->email;
	   $user_token = Auth::user()->user_token;
	   $buyer_wallet_amount = Auth::user()->earnings;
	   $final_amount = $amount + $processing_fee + $vat_price;
	   $payment_method = $request->input('payment_method');
	   $website_url = $request->input('website_url');
	   $payment_date = date('Y-m-d');
	   $payment_status = 'pending';
	   $reference = $request->input('reference');
	   
	   /* subscription code */
	   
	   if($cart_count != 0)
	   {
		  $last_order = Items::lastorderData();
		  $item_user_id = $last_order->item_user_id;
		  $count_mode = Settings::checkuserSubscription($item_user_id);
		  $vendor_details = Members::singlevendorData($item_user_id);
		  if($additional['setting']->subscription_mode == 0)
		  {
			  $paypal_email = $setting['setting']->paypal_email;
	          $paypal_mode = $setting['setting']->paypal_mode;
			  if($paypal_mode == 1)
			   {
				 $paypal_url = "https://www.paypal.com/cgi-bin/webscr";
			   }
			   else
			   {
				 $paypal_url = "https://www.sandbox.paypal.com/cgi-bin/webscr";
			   }
			   $vendor_amount = base64_decode($request->input('vendor_amount'));
	           $admin_amount = base64_decode($request->input('admin_amount'));
			   
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
			   $razorpay_key = $additional_view->razorpay_key;
			   
			   $payhere_mode = $additional_view->payhere_mode;
			   if($payhere_mode == 1)
			   {
			     $payhere_url = 'https://www.payhere.lk/pay/checkout';
			   }
			   else
			   {
			   $payhere_url = 'https://sandbox.payhere.lk/pay/checkout';
			   }
			   $payhere_merchant_id = $additional['setting']->payhere_merchant_id;
			   
			    $MERCHANT_KEY = $additional_view->payu_merchant_key; // add your id
				$SALT = $additional_view->payu_salt_key; // add your id
				if($additional_view->payumoney_mode == 1)
				{
				$PAYU_BASE_URL = "https://secure.payu.in";
				}
				else
				{
				$PAYU_BASE_URL = "https://test.payu.in";
				}
				
				$two_checkout_mode = $setting['setting']->two_checkout_mode;
	   			$two_checkout_account = $setting['setting']->two_checkout_account;
	   			$two_checkout_publishable = $setting['setting']->two_checkout_publishable;
	   			$two_checkout_private = $setting['setting']->two_checkout_private;
				
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
				$iyzico_success_url = $website_url.'/iyzico-success/admin-'.$purchase_token;
				/* iyzico */
				
				/* flutterwave */
				$flutterwave_public_key = $additional['setting']->flutterwave_public_key;
				$flutterwave_secret_key = $additional['setting']->flutterwave_secret_key;
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
	  			$coingate_callback = $website_url.'/coingate';
				/* coingate */
				
				/* ipay */
				$ipay_mode = $additional['setting']->ipay_mode;
	   			$ipay_vendor_id = $additional['setting']->ipay_vendor_id;
				$ipay_hash_key = $additional['setting']->ipay_hash_key;
	  			$ipay_callback = $website_url.'/ipay';
				$ipay_url = 'https://payments.ipayafrica.com/v3/ke';
				/* ipay */
				
			   $get_payment = explode(',', $setting['setting']->payment_option);
	           
		  }
		  else
		  {
			 if($count_mode == 1)
			 {
				$paypal_email = $vendor_details->user_paypal_email;
	            $paypal_mode = $vendor_details->user_paypal_mode;
				  if($paypal_mode == 1)
				   {
					 $paypal_url = "https://www.paypal.com/cgi-bin/webscr";
				   }
				   else
				   {
					 $paypal_url = "https://www.sandbox.paypal.com/cgi-bin/webscr";
				   }
				   $vendor_amount = base64_decode($request->input('vendor_amount')) + base64_decode($request->input('admin_amount'));
	               $admin_amount = 0;
				   
				   $stripe_mode = $vendor_details->user_stripe_mode;
				   if($stripe_mode == 0)
				   {
					 $stripe_publish_key = $vendor_details->user_test_publish_key;
					 $stripe_secret_key = $vendor_details->user_test_secret_key;
				   }
				   else
				   {
					 $stripe_publish_key = $vendor_details->user_live_publish_key;
					 $stripe_secret_key = $vendor_details->user_live_secret_key;
				   }
				   $razorpay_key = $vendor_details->user_razorpay_key;
				   
				   $payhere_mode = $vendor_details->user_payhere_mode;
				   if($payhere_mode == 1)
				   {
					 $payhere_url = 'https://www.payhere.lk/pay/checkout';
				   }
				   else
				   {
				   $payhere_url = 'https://sandbox.payhere.lk/pay/checkout';
				   }
				   $payhere_merchant_id = $vendor_details->user_payhere_merchant_id;
				   
				   $MERCHANT_KEY = $vendor_details->user_payu_merchant_key; // add your id
					$SALT = $vendor_details->user_payu_salt_key; // add your id
					if($vendor_details->user_payumoney_mode == 1)
					{
					$PAYU_BASE_URL = "https://secure.payu.in";
					}
					else
					{
					$PAYU_BASE_URL = "https://test.payu.in";
					}
					
					$two_checkout_mode = $vendor_details->user_two_checkout_mode;
	   				$two_checkout_account = $vendor_details->user_two_checkout_account;
	   				$two_checkout_publishable = $vendor_details->user_two_checkout_publishable;
	   				$two_checkout_private = $vendor_details->user_two_checkout_private;
					
					/* iyzico */
					$iyzico_api_key = $vendor_details->user_iyzico_api_key;
					$iyzico_secret_key = $vendor_details->user_iyzico_secret_key;
					$iyzico_mode = $vendor_details->user_iyzico_mode;
					if($iyzico_mode == 0)
					{
					   $iyzico_url = 'https://sandbox-api.iyzipay.com';
					}
					else
					{
					   $iyzico_url = 'https://api.iyzipay.com';
					}
					$iyzico_success_url = $website_url.'/iyzico-success/vendor-'.$purchase_token;
					/* iyzico */
					
					/* flutterwave */
					$flutterwave_public_key = $vendor_details->user_flutterwave_public_key;
					$flutterwave_secret_key = $vendor_details->user_flutterwave_secret_key;
					/* flutterwave */
					
					/* coingate */
					$coingate_mode = $vendor_details->user_coingate_mode;
					if($coingate_mode == 0)
					{
						$coingate_mode_status = "sandbox";
					}
					else
					{
						$coingate_mode_status = "live";
					}
					$coingate_auth_token = $vendor_details->user_coingate_auth_token;
					$coingate_callback = $website_url.'/coingate-success';
					/* coingate */
					
					/* ipay */
					$ipay_mode = $vendor_details->user_ipay_mode;
	   				$ipay_vendor_id = $vendor_details->user_ipay_vendor_id;
					$ipay_hash_key = $vendor_details->user_ipay_hash_key;
	  				$ipay_callback = $website_url.'/ipay';
					$ipay_url = 'https://payments.ipayafrica.com/v3/ke';
					/* ipay */
					
					
				   $get_payment = explode(',', $vendor_details->user_payment_option);
			 }
			 else
			 {
				  $paypal_email = $setting['setting']->paypal_email;
				  $paypal_mode = $setting['setting']->paypal_mode;
				  if($paypal_mode == 1)
				   {
					 $paypal_url = "https://www.paypal.com/cgi-bin/webscr";
				   }
				   else
				   {
					 $paypal_url = "https://www.sandbox.paypal.com/cgi-bin/webscr";
				   }
				   $vendor_amount = base64_decode($request->input('vendor_amount'));
	               $admin_amount = base64_decode($request->input('admin_amount'));
				   
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
				   $razorpay_key = $additional_view->razorpay_key;
				   
				   $payhere_mode = $additional_view->payhere_mode;
				   if($payhere_mode == 1)
				   {
					 $payhere_url = 'https://www.payhere.lk/pay/checkout';
				   }
				   else
				   {
				   $payhere_url = 'https://sandbox.payhere.lk/pay/checkout';
				   }
				   $payhere_merchant_id = $additional_view->payhere_merchant_id;
				   
				   $MERCHANT_KEY = $additional_view->payu_merchant_key; // add your id
					$SALT = $additional_view->payu_salt_key; // add your id
					if($additional_view->payumoney_mode == 1)
					{
					$PAYU_BASE_URL = "https://secure.payu.in";
					}
					else
					{
					$PAYU_BASE_URL = "https://test.payu.in";
					}
					
					$two_checkout_mode = $setting['setting']->two_checkout_mode;
	   			    $two_checkout_account = $setting['setting']->two_checkout_account;
	   			    $two_checkout_publishable = $setting['setting']->two_checkout_publishable;
	   			    $two_checkout_private = $setting['setting']->two_checkout_private;
				
					
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
					$iyzico_success_url = $website_url.'/iyzico-success/admin-'.$purchase_token;
					/* iyzico */
					
					/* flutterwave */
					$flutterwave_public_key = $additional['setting']->flutterwave_public_key;
					$flutterwave_secret_key = $additional['setting']->flutterwave_secret_key;
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
					$coingate_callback = $website_url.'/coingate';
					/* coingate */
					
					/* ipay */
					$ipay_mode = $additional['setting']->ipay_mode;
	   				$ipay_vendor_id = $additional['setting']->ipay_vendor_id;
					$ipay_hash_key = $additional['setting']->ipay_hash_key;
	  				$ipay_callback = $website_url.'/ipay';
					$ipay_url = 'https://payments.ipayafrica.com/v3/ke';
					/* ipay */
					
				   $get_payment = explode(',', $setting['setting']->payment_option);
			 }
		  }
	  }
	  /* VAT */
	  $country_id = Auth::user()->country;
	  $country_details = Members::countryCheck($country_id);
	  if($country_details != 0)
	  {
	      $data_views = Members::countryDATA($country_id);
		  $country_percent = $data_views->vat_price;
	  }
	  else
	  {
	    $country_percent = $additional['setting']->default_vat_price;
	  } 
	   /* VAT */
	  $totaldata = array('cart' => $cart, 'cart_count' => $cart_count, 'get_payment' => $get_payment, 'mobile' => $mobile, 'country_percent' => $country_percent);
	  /* subscription code */ 
	   
	   
	   
	   $getcount  = Items::getcheckoutCount($purchase_token,$user_id,$payment_status);
	   
	   $savedata = array('purchase_token' => $purchase_token, 'order_ids' => $order_id, 'item_prices' => $item_prices, 'item_user_id' => $item_user_id, 'user_id' => $user_id, 'total' => $amount, 'vendor_amount' => $vendor_amount, 'admin_amount' => $admin_amount, 'processing_fee' => $processing_fee, 'payment_type' => $payment_method, 'payment_date' => $payment_date, 'order_firstname' => $order_firstname, 'order_lastname' => $order_lastname, 'order_company' => $order_company, 'order_email' => $order_email, 'order_country' => $order_country, 'order_address' => $order_address, 'order_city' => $order_city, 'order_zipcode' => $order_zipcode, 'order_notes' => $order_notes, 'payment_status' => $payment_status, 'vat_price' => $vat_price);
	   
	   $updatedata = array('order_ids' => $order_id, 'item_prices' => $item_prices, 'item_user_id' => $item_user_id, 'total' => $amount, 'vendor_amount' => $vendor_amount, 'admin_amount' => $admin_amount, 'processing_fee' => $processing_fee, 'payment_type' => $payment_method, 'payment_date' => $payment_date, 'order_firstname' => $order_firstname, 'order_lastname' => $order_lastname, 'order_company' => $order_company, 'order_email' => $order_email, 'order_country' => $order_country, 'order_address' => $order_address, 'order_city' => $order_city, 'order_zipcode' => $order_zipcode, 'order_notes' => $order_notes, 'vat_price' => $vat_price);
	   
	   
	   /* settings */
	   
	   
	   $site_currency = $setting['setting']->site_currency;
	   
	   $success_url = $website_url.'/success/'.$purchase_token;
	   $cancel_url = $website_url.'/cancel';
	   $payhere_success_url = $website_url.'/payhere-success/'.$purchase_token;
	   
	   
	   
	   
	   /* settings */
	   
	   
	   if($getcount == 0)
	   {
	      Items::savecheckoutData($savedata);
		  
		  
		  $order_loop = explode(',',$order_id);
		  $item_names = "";
		  foreach($order_loop as $order)
		  {
		    $single_order = Items::getorderData($order);
			$buyer_id = $single_order->item_user_id;
			$buyer_info['view'] = Members::singlebuyerData($buyer_id);
			$buyer_type = $buyer_info['view']->exclusive_author;
			$count_mode = Settings::checkuserSubscription($buyer_id);
			if($single_order->coupon_type == 'fixed')
			{
			    $price_item = $single_order->item_price - $single_order->coupon_value;
			}
			else if($single_order->coupon_type == 'percentage')
			{
				$price_item = $single_order->discount_price;
			}
			else
			{
			   $price_item = $single_order->item_price;
			}
			if($additional['setting']->subscription_mode == 0)
		    {
				if($buyer_type == 1)
				{
				$commission =($price_item * $setting['setting']->site_exclusive_commission) / 100;
				}
				else
				{
				$commission =($price_item * $setting['setting']->site_non_exclusive_commission) / 100;
				}
				$amount_price = $commission;
				$vendor_price = $price_item - $commission;
			}
			else
			{
			    if($count_mode == 1)
				{
				    
				  	$vendor_price = $price_item;
				  	$amount_price = 0;
				  
				}
				else
				{
				    
					if($buyer_type == 1)
					{
					$commission =($price_item * $setting['setting']->site_exclusive_commission) / 100;
					}
					else
					{
					$commission =($price_item * $setting['setting']->site_non_exclusive_commission) / 100;
					}
					$amount_price = $commission;
					$vendor_price = $price_item - $commission;
				}
			}	
		    $orderdata = array('purchase_code' => $purchase_code, 'purchase_token' => $purchase_token, 'payment_type' => $payment_method, 'vendor_amount' => $vendor_price, 'admin_amount' => $amount_price, 'total_price' => $price_item);
			Items::singleorderupData($order,$orderdata);
			$item['name'] = Items::singleorderData($order);
			$item_names .= $item['name']->item_name;
					   
		  }
		  $item_names_data = rtrim($item_names,',');
		  
		  
		  if($payment_method == 'paypal')
		  {
		     
			 $paypal = '<form method="post" id="paypal_form" action="'.$paypal_url.'">
			  <input type="hidden" value="_xclick" name="cmd">
			  <input type="hidden" value="'.$paypal_email.'" name="business">
			  <input type="hidden" value="'.$item_names_data.'" name="item_name">
			  <input type="hidden" value="'.$purchase_token.'" name="item_number">
			  <input type="hidden" value="'.$final_amount.'" name="amount">
			  <input type="hidden" value="'.$site_currency.'" name="currency_code">
			  <input type="hidden" value="'.$success_url.'" name="return">
			  <input type="hidden" value="'.$cancel_url.'" name="cancel_return">
			  		  
			</form>';
			$paypal .= '<script>window.paypal_form.submit();</script>';
			echo $paypal;
					 
			 
		  }
		  elseif($payment_method == 'shurjopay')
		  {

			 	$info = array( 'currency' => $site_currency, 'amount' => $final_amount, 'order_id' => (string)$purchase_token, 'client_ip' => "", 'customer_name' =>  $order_firstname.' '. $order_lastname, 'customer_phone' => "+121246456553", 'email' => $order_email, 'customer_address' => $order_address ?? "New York", 'customer_city' => $order_city ?? "New York", 'customer_state' => "", 'customer_postcode' => $order_zipcode, 'customer_country' => $order_country ?? "USA" );
		      
		      $shurjopay_service = new ShurjopayController();
		      return $shurjopay_service->checkout($info);


		  }
		  else if($payment_method == 'ipay')
		  {
		  
		  	 if($site_currency != 'KES')
			   {
		       
			   $convert = Currency::convert()->from($site_currency)->to('KES')->amount($final_amount)->round(2)->get();
			   $price_amount = $convert;
			   }
			   else
			   {
			   $price_amount = $final_amount;
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
                   'price_amount'      => $final_amount,
                   'price_currency'    => $site_currency,
                   'receive_currency'  => $site_currency,
                   'callback_url'      => $coingate_callback,
                   'cancel_url'        => $cancel_url,
                   'success_url'       => $coingate_callback,
                   'title'             => $item_names_data,
                   'description'       => $item_names_data
				   
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
		  else if($payment_method == 'twocheckout')
		  {
		    
			$two_checkout = '<form method="post" id="two_checkout_form" action="https://www.2checkout.com/checkout/purchase">
			  <input type="hidden" name="sid" value="'.$two_checkout_account.'" />
			  <input type="hidden" name="mode" value="2CO" />
			  <input type="hidden" name="li_0_type" value="product" />
			  <input type="hidden" name="li_0_name" value="'.$item_names_data.'" />
			  <input type="hidden" name="li_0_price" value="'.$final_amount.'" />
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
			  <input type="hidden" name="x_receipt_link_url" value="product_item" />
			  <input type="hidden" name="email" value="'.Auth::user()->email.'" />
			  </form>';
			$two_checkout .= '<script>window.two_checkout_form.submit();</script>';
			echo $two_checkout;
			
			/*$record = array('final_amount' => $final_amount, 'purchase_token' => $purchase_token, 'payment_method' => $payment_method, 'item_names_data' => $item_names_data, 'site_currency' => $site_currency, 'website_url' => $website_url, 'two_checkout_private' => $two_checkout_private, 'two_checkout_account' => $two_checkout_account, 'two_checkout_mode' => $two_checkout_mode, 'token' => $token, 'two_checkout_publishable' => $two_checkout_publishable);
       return view('order-confirm')->with($record);*/
			
		  }
		  else if($payment_method == 'payumoney')
		  {
		        if($site_currency != 'INR')
			   {
		       
			   $convert = Currency::convert()->from($site_currency)->to('INR')->amount($final_amount)->round(2)->get();
			   $price_amount = $convert;
			   }
			   else
			   {
			   $price_amount = $final_amount;
			   }
		        $action = '';
				$txnid = substr(hash('sha256', mt_rand() . microtime()), 0, 20);
				$posted = array();
				$posted = array(
					'key' => $MERCHANT_KEY,
					'txnid' => $txnid,
					'amount' => $price_amount,
					'udf1' => $purchase_token,
					'firstname' => $order_firstname,
					'email' => $order_email,
					'productinfo' => $item_names_data,
					'surl' => $website_url.'/payu_success',
					'furl' => $website_url.'/cancel',
					'service_provider' => 'payu_paisa',
				);
				$payu_success = $website_url.'/payu_success';
				
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
            <input type="hidden" name="firstname" id="firstname" value="'.$order_firstname.'" />
            <input type="hidden" name="email" id="email" value="'.$order_email.'" />
            <input type="hidden" name="productinfo" value="'.$item_names_data.'">
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
		      if($site_currency != 'LKR')
			   {
		       
			   $convert = Currency::convert()->from($site_currency)->to('LKR')->amount($final_amount)->round(2)->get();
			   $price_amount = $convert;
			   }
			   else
			   {
			   $price_amount = $final_amount;
			   }
		      $payhere = '<form method="post" action="'.$payhere_url.'" id="payhere_form">   
							<input type="hidden" name="merchant_id" value="'.$payhere_merchant_id.'">
							<input type="hidden" name="return_url" value="'.$payhere_success_url.'">
							<input type="hidden" name="cancel_url" value="'.$cancel_url.'">
							<input type="hidden" name="notify_url" value="'.$cancel_url.'">  
							<input type="hidden" name="order_id" value="'.$purchase_token.'">
							<input type="hidden" name="items" value="'.$item_names_data.'"><br>
							<input type="hidden" name="currency" value="LKR">
							<input type="hidden" name="amount" value="'.$price_amount.'">  
							
							<input type="hidden" name="first_name" value="'.$order_firstname.'">
							<input type="hidden" name="last_name" value="'.$order_lastname.'"><br>
							<input type="hidden" name="email" value="'.$order_email.'">
							<input type="hidden" name="phone" value="'.$order_zipcode.'"><br>
							<input type="hidden" name="address" value="'.$order_address.'">
							<input type="hidden" name="city" value="'.$order_city.'">
							<input type="hidden" name="country" value="'.$order_country.'">
							  
						</form>'; 
						$payhere .= '<script>window.payhere_form.submit();</script>';
			            echo $payhere;
		  }
		  
		  else if($payment_method == 'paystack')
		  {
		       if($site_currency != 'NGN')
			   {
		       $convert = Currency::convert()->from($site_currency)->to('NGN')->amount($final_amount)->round(2)->get();
			   $price_amount = $convert * 100;
			   }
			   else
			   {
			   $price_amount = $final_amount * 100;
			   }
		       $callback = $website_url.'/paystack';
			   $csf_token = csrf_token();
			   
			   $paystack = '<form method="post" id="stack_form" action="'.route('paystack').'">
					  <input type="hidden" name="_token" value="'.$csf_token.'">
					  <input type="hidden" name="email" value="'.$user_email.'" >
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
		  else if($payment_method == 'flutterwave')
		  {
		      if($site_currency != 'NGN')
			   {
		       
			   $convert = Currency::convert()->from($site_currency)->to('NGN')->amount($final_amount)->round(2)->get();
			   $price_amount = $convert;
			   }
			   else
			   {
			   $price_amount = $final_amount;
			   }
		       $flutterwave_callback = $website_url.'/flutterwave';
			   $phone_number = "";
			   $csf_token = csrf_token();
			   $flutterwave = '<form method="post" id="flutterwave_form" action="https://checkout.flutterwave.com/v3/hosted/pay">
	          <input type="hidden" name="public_key" value="'.$flutterwave_public_key.'" />
	          <input type="hidden" name="customer[email]" value="'.$user_email.'" >
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
		       $convert = Currency::convert()->from($site_currency)->to('TRY')->amount($final_amount)->round(2)->get();
			   $price_amount = $convert;
			   }
			   else
			   {
			   $price_amount = number_format((float)$final_amount, 2, '.', '');
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
				'email' => $user_email,
				'user_token' => Auth::user()->user_token,
				'item_name' => $item_names_data,
				'iyzico_success_url' => $iyzico_success_url,
				
			]]);
        
            echo $response->getBody();
            //$iyzico_api_key $iyzico_secret_key $iyzico_url
			 
			 
			/*$client = new \GuzzleHttp\Client();
		    $endpoint = $website_url."/iyzico.php";
			$txnid = 1234;
			$amount = 112;
			$email = 2212;
			$phone = "0000000000";
			$response = $client->request('GET', $endpoint, ['query' => [
				'txnid' => $txnid, 
				'amount' => $amount,
				'email' => $email,
				'phone' => $phone,
			]]);
			$contents = json_decode($response->getBody()->getContents(),true);
		    $view_data = json_encode($contents);
			dd($response->getBody());*/
			
		  
		  }
		  
		  else if($payment_method == 'razorpay')
		  {
		       $additional['settings'] = Settings::editAdditional();
			   if($site_currency != 'INR')
			   {
		       
			   $convert = Currency::convert()->from($site_currency)->to('INR')->amount($final_amount)->round(2)->get();
			   $price_amount = $convert * 100;
			   }
			   else
			   {
			   $price_amount = $final_amount * 100;
			   }
			   $csf_token = csrf_token();
			   $logo_url = $website_url.'/public/storage/settings/'.$setting['setting']->site_logo;
			   $script_url = $website_url.'/resources/views/theme/js/vendor.min.js';
			   $callback = $website_url.'/razorpay';
			   $razorpay = '
			   <script type="text/javascript" src="'.$script_url.'"></script>
			   <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
			   <script>
				var options = {
					"key": "'.$razorpay_key.'",
					"amount": "'.$price_amount.'", 
					"currency": "INR",
					"name": "'.$item_names_data.'",
					"description": "'.$purchase_token.'",
					"image": "'.$logo_url.'",
					"callback_url": "'.$callback.'",
					"prefill": {
						"name": "'.$order_firstname.'",
						"email": "'.$order_email.'"
						
					},
					"notes": {
						"address": "'.$order_address.'"
						
						
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
		  else if($payment_method == 'localbank')
		  {
		    $bank_details = $setting['setting']->local_bank_details;
		    $bank_data = array('purchase_token' => $purchase_token, 'bank_details' => $bank_details);
	        return view('bank-details')->with($bank_data);
		  }
		  else if($payment_method == 'wallet')
		  {
		      if($buyer_wallet_amount >= $final_amount)
			   {    
			         $purchased_token = $purchase_token;
		    		$payment_status = 'completed';
					$orderdata = array('order_status' => $payment_status);
					$checkoutdata = array('payment_status' => $payment_status);
					Items::singleordupdateData($purchased_token,$orderdata);
					Items::singlecheckoutData($purchased_token,$checkoutdata);
					$token = $purchased_token;
					$checking = Items::getcheckoutData($token);
					$order_id = $checking->order_ids;
					$order_loop = explode(',',$order_id);
					 
					 $earn_wallet = $buyer_wallet_amount - $final_amount;
					$walet_data = array('earnings' => $earn_wallet); 
					Members::updateData($user_token,$walet_data); 
					  foreach($order_loop as $order)
					  {
						
						$getitem['item'] = Items::getorderData($order);
						$token = $getitem['item']->item_token;
						$item['display'] = Items::solditemData($token);
						$item_sold = $item['display']->item_sold + 1;
						$item_token = $token; 
						$data = array('item_sold' => $item_sold);
					    Items::updateitemData($item_token,$data);
						/* manual payment verification : OFF */
						if($setting['setting']->payment_verification == 0)
						{
						   
							  $ordered['data'] = Items::singleorderData($order);
							  $user_id = $ordered['data']->user_id;
							  $item_user_id = $ordered['data']->item_user_id;
							  $vendor_amount = $ordered['data']->vendor_amount;
							  $total_price = $ordered['data']->total_price;
							  $admin_amount = $ordered['data']->admin_amount;
							  
							  $vendor['info'] = Members::singlevendorData($item_user_id);
							  $user_token = $vendor['info']->user_token;
							  $to_name = $vendor['info']->name;
							  $to_email = $vendor['info']->email;
							  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
							  $record = array('earnings' => $vendor_earning);
							  Members::updatepasswordData($user_token, $record);
							  
							  $admin['info'] = Members::adminData();
							  $admin_token = $admin['info']->user_token;
							  $admin_earning = $admin['info']->earnings + $admin_amount;
							  $admin_record = array('earnings' => $admin_earning);
							  Members::updateadminData($admin_token, $admin_record);
							  
							  $orderdata = array('approval_status' => 'payment released to vendor');
							  Items::singleorderupData($order,$orderdata);
							  $admin_name = $setting['setting']->sender_name;
							  $admin_email = $setting['setting']->sender_email;
							  $currency = $setting['setting']->site_currency;
							  $check_email_support = Members::getuserSubscription($vendor['info']->id);
							  if($check_email_support == 1)
							  {
								  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
								  /* email template code */
								  $checktemp = EmailTemplate::checkTemplate(18);
								  if($checktemp != 0)
								  {
								  $template_view['mind'] = EmailTemplate::viewTemplate(18);
								  $template_subject = $template_view['mind']->et_subject;
								  }
								  else
								  {
								  $template_subject = "New Payment Approved";
								  }
								  /* email template code */
								  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
											$message->to($to_email, $to_name)
													->subject($template_subject);
											$message->from($admin_email,$admin_name);
										});
							  }			
						 
						   
						}
						/* manual payment verification : OFF */
						
						
					  }
					  /* referral per sale earning */
						$logged_id = Auth::user()->id;
						$buyer_details = Members::singlebuyerData($logged_id);
						$referral_by = $buyer_details->referral_by;
						$additional_setting = Settings::editAdditional();
						$referral_commission = $additional_setting->per_sale_referral_commission;
						$check_referral = Members::referralCheck($referral_by);
						  if($check_referral != 0)
						  {
							  $referred['display'] = Members::referralUser($referral_by);
							  $wallet_amount = $referred['display']->earnings + $referral_commission;
							  $referral_amount = $referred['display']->referral_amount + $referral_commission;
							  $update_data = array('earnings' => $wallet_amount, 'referral_amount' => $referral_amount);
							  Members::updateReferral($referral_by,$update_data);
						   } 
					/* referral per sale earning */	
					return redirect('success');
			   }
			   else
			   {
			      return redirect()->back()->with('error', 'Please check your wallet balance amount');
			   }
		  }
		  /* stripe code */
		  else if($payment_method == 'stripe')
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
			 
				
				$item_name = $item_names_data;
				$item_price = $amount * 100;
				$currency = $site_currency;
				$order_id = $purchase_token;
			 
				
				$charge = \Stripe\Charge::create(array(
					'customer' => $customer->id,
					'amount'   => $item_price,
					'currency' => $currency,
					'description' => $item_name,
					'metadata' => array(
						'order_id' => $order_id
					)
				));
			 
				
				$chargeResponse = $charge->jsonSerialize();
			 
				
				if($chargeResponse['paid'] == 1 && $chargeResponse['captured'] == 1) 
				{
			 
					
										
					$payment_token = $chargeResponse['balance_transaction'];
					$payment_status = 'completed';
					$purchased_token = $order_id;
					$orderdata = array('payment_token' => $payment_token, 'order_status' => $payment_status);
					$checkoutdata = array('payment_token' => $payment_token, 'payment_status' => $payment_status);
					Items::singleordupdateData($purchased_token,$orderdata);
					Items::singlecheckoutData($purchased_token,$checkoutdata);
					
					$token = $purchased_token;
					$check['display'] = Items::getcheckoutData($token);
					$order_id = $check['display']->order_ids;
					$order_loop = explode(',',$order_id);
					  
					  foreach($order_loop as $order)
					  {
						
						$getitem['item'] = Items::getorderData($order);
						$token = $getitem['item']->item_token;
						$item['display'] = Items::solditemData($token);
						$item_sold = $item['display']->item_sold + 1;
						$item_token = $token; 
						$data = array('item_sold' => $item_sold);
					    Items::updateitemData($item_token,$data);
						/* subscription code */
						$additional['setting'] = Settings::editAdditional();
						$ordered['data'] = Items::singleorderData($order);
						$item_user_id = $ordered['data']->item_user_id;
						$vendor['info'] = Members::singlevendorData($item_user_id);
						$to_name = $vendor['info']->name;
						$to_email = $vendor['info']->email;
						$vendor_amount = $ordered['data']->vendor_amount;
						$admin_name = $setting['setting']->sender_name;
						$admin_email = $setting['setting']->sender_email;
						$currency = $setting['setting']->site_currency;
						$count_mode = Settings::checkuserSubscription($item_user_id);
						/* manual payment verification : OFF */
						if($additional['setting']->subscription_mode == 0)
						{
							if($setting['setting']->payment_verification == 0)
							{
							   
								  
								  $user_id = $ordered['data']->user_id;
								  
								  $total_price = $ordered['data']->total_price;
								  $admin_amount = $ordered['data']->admin_amount;
								  
								  
								  $user_token = $vendor['info']->user_token;
								  
								  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
								  $record = array('earnings' => $vendor_earning);
								  Members::updatepasswordData($user_token, $record);
								  
								  $admin['info'] = Members::adminData();
								  $admin_token = $admin['info']->user_token;
								  $admin_earning = $admin['info']->earnings + $admin_amount;
								  $admin_record = array('earnings' => $admin_earning);
								  Members::updateadminData($admin_token, $admin_record);
								  
								  $orderdata = array('approval_status' => 'payment released to vendor');
								  Items::singleorderupData($order,$orderdata);
							 
							}
							
							$record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
							/* email template code */
								  $checktemp = EmailTemplate::checkTemplate(18);
								  if($checktemp != 0)
								  {
								  $template_view['mind'] = EmailTemplate::viewTemplate(18);
								  $template_subject = $template_view['mind']->et_subject;
								  }
								  else
								  {
								  $template_subject = "New Payment Approved";
								  }
								  /* email template code */
							Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
												$message->to($to_email, $to_name)
														->subject($template_subject);
												$message->from($admin_email,$admin_name);
											});
						}	
						else
						{
						   if($count_mode == 1)
						   {
							   
								  $orderdata = array('approval_status' => 'payment released to vendor');
								  Items::singleorderupData($order,$orderdata);
								  $check_email_support = Members::getuserSubscription($vendor['info']->id);
								  if($check_email_support == 1)
								  {
									  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
									  /* email template code */
								  $checktemp = EmailTemplate::checkTemplate(18);
								  if($checktemp != 0)
								  {
								  $template_view['mind'] = EmailTemplate::viewTemplate(18);
								  $template_subject = $template_view['mind']->et_subject;
								  }
								  else
								  {
								  $template_subject = "New Payment Approved";
								  }
								  /* email template code */
									  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
												$message->to($to_email, $to_name)
														->subject($template_subject);
												$message->from($admin_email,$admin_name);
											});
								  }
						   }
						   else
						   {
							  
							  if($setting['setting']->payment_verification == 0)
							 {
								  $user_id = $ordered['data']->user_id;
								  
								  $total_price = $ordered['data']->total_price;
								  $admin_amount = $ordered['data']->admin_amount;
								  
								  
								  $user_token = $vendor['info']->user_token;
								  
								  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
								  $record = array('earnings' => $vendor_earning);
								  Members::updatepasswordData($user_token, $record);
								  
								  $admin['info'] = Members::adminData();
								  $admin_token = $admin['info']->user_token;
								  $admin_earning = $admin['info']->earnings + $admin_amount;
								  $admin_record = array('earnings' => $admin_earning);
								  Members::updateadminData($admin_token, $admin_record);
								  
								  $orderdata = array('approval_status' => 'payment released to vendor');
								  Items::singleorderupData($order,$orderdata);
								  
								  
								  $check_email_support = Members::getuserSubscription($vendor['info']->id);
								  if($check_email_support == 1)
								  {
									  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
									  /* email template code */
									  $checktemp = EmailTemplate::checkTemplate(18);
									  if($checktemp != 0)
									  {
									  $template_view['mind'] = EmailTemplate::viewTemplate(18);
									  $template_subject = $template_view['mind']->et_subject;
									  }
									  else
									  {
									  $template_subject = "New Payment Approved";
									  }
									  /* email template code */
									  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
												$message->to($to_email, $to_name)
														->subject($template_subject);
												$message->from($admin_email,$admin_name);
											});
								  }
							 
							  }
							  
							  
						   }
						   
						   
						}	
						/* manual payment verification : OFF */
						/* subscription code */
												
						
					  }
					
					/* referral per sale earning */
						$logged_id = Auth::user()->id;
						$buyer_details = Members::singlebuyerData($logged_id);
						$referral_by = $buyer_details->referral_by;
						$additional_setting = Settings::editAdditional();
						$referral_commission = $additional_setting->per_sale_referral_commission;
						$check_referral = Members::referralCheck($referral_by);
						  if($check_referral != 0)
						  {
							  $referred['display'] = Members::referralUser($referral_by);
							  $wallet_amount = $referred['display']->earnings + $referral_commission;
							  $referral_amount = $referred['display']->referral_amount + $referral_commission;
							  $update_data = array('earnings' => $wallet_amount, 'referral_amount' => $referral_amount);
							  Members::updateReferral($referral_by,$update_data);
						   } 
					/* referral per sale earning */	
					$data_record = array('payment_token' => $payment_token);
					return view('success')->with($data_record);
					
					
				}
		     
		  
		  }
		  /* stripe code */
		  
		 
		  
	   }
	   else
	   {
	   
	      Items::updatecheckoutData($purchase_token,$user_id,$payment_status,$updatedata);
		  $order_loop = explode(',',$order_id);
		  foreach($order_loop as $order)
		  {
		    $single_order = Items::getorderData($order);
			$buyer_id = $single_order->item_user_id;
			$buyer_info['view'] = Members::singlebuyerData($buyer_id);
			$buyer_type = $buyer_info['view']->exclusive_author;
			if($single_order->coupon_type == 'fixed')
			{
			$price_item = $single_order->item_price - $single_order->coupon_value;
			}
			else if($single_order->coupon_type == 'percentage')
			{
			$price_item = $single_order->discount_price;
			}
			else
			{
			$price_item = $single_order->item_price;
			}
			if($buyer_type == 1)
			{
			$commission =($price_item * $setting['setting']->site_exclusive_commission) / 100;
			}
			else
			{
			$commission =($price_item * $setting['setting']->site_non_exclusive_commission) / 100;
			}
			$amount_price = $commission;
			$vendor_price = $price_item - $commission;
		    $orderdata = array('purchase_token' => $purchase_token, 'payment_type' => $payment_method, 'vendor_amount' => $vendor_price, 'admin_amount' => $amount_price, 'total_price' => $price_item);
			Items::singleorderupData($order,$orderdata);
			$item['name'] = Items::singleorderData($order);
			$item_names .= $item['name']->item_name;

		   
		  }
		  $item_names_data = rtrim($item_names,',');
		  
		  
		  if($payment_method == 'paypal')
		  {
		     
			 $paypal = '<form method="post" id="paypal_form" action="'.$paypal_url.'">
			  <input type="hidden" value="_xclick" name="cmd">
			  <input type="hidden" value="'.$paypal_email.'" name="business">
			  <input type="hidden" value="'.$item_names_data.'" name="item_name">
			  <input type="hidden" value="'.$purchase_token.'" name="item_number">
			  <input type="hidden" value="'.$final_amount.'" name="amount">
			  <input type="hidden" value="'.$site_currency.'" name="currency_code">
			  <input type="hidden" value="'.$success_url.'" name="return">
			  <input type="hidden" value="'.$cancel_url.'" name="cancel_return">
			  		  
			</form>';
			$paypal .= '<script>window.paypal_form.submit();</script>';
			echo $paypal;
		 
		  }
		  else if($payment_method == 'payhere')
		  {
		      if($site_currency != 'LKR')
			   {
		       
			   $convert = Currency::convert()->from($site_currency)->to('LKR')->amount($final_amount)->round(2)->get();
			   $price_amount = $convert * 100;
			   }
			   else
			   {
			   $price_amount = $final_amount * 100;
			   }
		      $payhere = '<form method="post" action="'.$payhere_url.'" id="payhere_form">   
							<input type="hidden" name="merchant_id" value="'.$payhere_merchant_id.'">
							<input type="hidden" name="return_url" value="'.$payhere_success_url.'">
							<input type="hidden" name="cancel_url" value="'.$cancel_url.'">
							<input type="hidden" name="notify_url" value="'.$cancel_url.'"> 
							<input type="hidden" name="order_id" value="'.$purchase_token.'">
							<input type="hidden" name="items" value="'.$item_names_data.'"><br>
							<input type="hidden" name="currency" value="LKR">
							<input type="hidden" name="amount" value="'.$price_amount.'">  
							
							<input type="hidden" name="first_name" value="'.$order_firstname.'">
							<input type="hidden" name="last_name" value="'.$order_lastname.'"><br>
							<input type="hidden" name="email" value="'.$order_email.'">
							<input type="hidden" name="phone" value="'.$order_zipcode.'"><br>
							<input type="hidden" name="address" value="'.$order_address.'">
							<input type="hidden" name="city" value="'.$order_city.'">
							<input type="hidden" name="country" value="'.$order_country.'">
							  
						</form>'; 
						$payhere .= '<script>window.payhere_form.submit();</script>';
			            echo $payhere;
		  }
		  else if($payment_method == 'twocheckout')
		  {
		    
			$record = array('final_amount' => $final_amount, 'purchase_token' => $purchase_token, 'payment_method' => $payment_method, 'item_names_data' => $item_names_data, 'site_currency' => $site_currency, 'website_url' => $website_url, 'two_checkout_private' => $two_checkout_private, 'two_checkout_account' => $two_checkout_account, 'two_checkout_mode' => $two_checkout_mode, 'token' => $token, 'two_checkout_publishable' => $two_checkout_publishable);
       return view('order-confirm')->with($record);
			
		  }
		  else if($payment_method == 'paystack')
		  {
		       if($site_currency != 'NGN')
			   {
		       
			   $convert = Currency::convert()->from($site_currency)->to('NGN')->amount($final_amount)->round(2)->get();
			   $price_amount = $convert * 100;
			   }
			   else
			   {
			    $price_amount = $final_amount * 100; 
			   }
		       $callback = $website_url.'/paystack';
			   $csf_token = csrf_token();
			   $paystack = '<form method="post" id="stack_form" action="'.route('paystack').'">
					  <input type="hidden" name="_token" value="'.$csf_token.'">
					  <input type="hidden" name="email" value="'.$user_email.'" >
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
		  else if($payment_method == 'razorpay')
		  {
		       $additional['settings'] = Settings::editAdditional();
			   if($site_currency != 'INR')
			   {
		       
			   $convert = Currency::convert()->from($site_currency)->to('INR')->amount($final_amount)->round(2)->get();
			   $price_amount = $convert * 100;
			   }
			   else
			   {
			   $price_amount = $final_amount * 100;
			   }
			   $csf_token = csrf_token();
			   $logo_url = $website_url.'/public/storage/settings/'.$setting['setting']->site_logo;
			   $script_url = $website_url.'/resources/views/theme/js/vendor.min.js';
			   $callback = $website_url.'/razorpay';
			   $razorpay = '
			   <script type="text/javascript" src="'.$script_url.'"></script>
			   <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
			   <script>
				var options = {
					"key": "'.$razorpay_key.'",
					"amount": "'.$price_amount.'", 
					"currency": "INR",
					"name": "'.$item_names_data.'",
					"description": "'.$purchase_token.'",
					"image": "'.$logo_url.'",
					"callback_url": "'.$callback.'",
					"prefill": {
						"name": "'.$order_firstname.'",
						"email": "'.$order_email.'"
						
					},
					"notes": {
						"address": "'.$order_address.'"
						
						
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
		  else if($payment_method == 'localbank')
		  {
		    $bank_details = $setting['setting']->local_bank_details;
		    $bank_data = array('purchase_token' => $purchase_token, 'bank_details' => $bank_details);
	        return view('bank-details')->with($bank_data);
		  }
          /* stripe code */
		  else if($payment_method == 'stripe')
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
			 
				
				$item_name = $item_names_data;
				$item_price = $amount * 100;
				$currency = $site_currency;
				$order_id = $purchase_token;
			 
				
				$charge = \Stripe\Charge::create(array(
					'customer' => $customer->id,
					'amount'   => $item_price,
					'currency' => $currency,
					'description' => $item_name,
					'metadata' => array(
						'order_id' => $order_id
					)
				));
			 
				
				$chargeResponse = $charge->jsonSerialize();
			 
				
				if($chargeResponse['paid'] == 1 && $chargeResponse['captured'] == 1) 
				{
			 
					
										
					$payment_token = $chargeResponse['balance_transaction'];
					$payment_status = 'completed';
					$purchased_token = $order_id;
					$orderdata = array('payment_token' => $payment_token, 'order_status' => $payment_status);
					$checkoutdata = array('payment_token' => $payment_token, 'payment_status' => $payment_status);
					Items::singleordupdateData($purchased_token,$orderdata);
					Items::singlecheckoutData($purchased_token,$checkoutdata);
					
					$token = $purchased_token;
					$check['display'] = Items::getcheckoutData($token);
					$order_id = $check['display']->order_ids;
					$order_loop = explode(',',$order_id);
					  
					  foreach($order_loop as $order)
					  {
						
						$getitem['item'] = Items::getorderData($order);
						$token = $getitem['item']->item_token;
						$item['display'] = Items::solditemData($token);
						$item_sold = $item['display']->item_sold + 1;
						$item_token = $token; 
						$data = array('item_sold' => $item_sold);
					    Items::updateitemData($item_token,$data);
						/* manual payment verification : OFF */
						if($setting['setting']->payment_verification == 0)
						{
						   
							  $ordered['data'] = Items::singleorderData($order);
							  $user_id = $ordered['data']->user_id;
							  $item_user_id = $ordered['data']->item_user_id;
							  $vendor_amount = $ordered['data']->vendor_amount;
							  $total_price = $ordered['data']->total_price;
							  $admin_amount = $ordered['data']->admin_amount;
							  
							  $vendor['info'] = Members::singlevendorData($item_user_id);
							  $user_token = $vendor['info']->user_token;
							  $to_name = $vendor['info']->name;
							  $to_email = $vendor['info']->email;
							  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
							  $record = array('earnings' => $vendor_earning);
							  Members::updatepasswordData($user_token, $record);
							  
							  $admin['info'] = Members::adminData();
							  $admin_token = $admin['info']->user_token;
							  $admin_earning = $admin['info']->earnings + $admin_amount;
							  $admin_record = array('earnings' => $admin_earning);
							  Members::updateadminData($admin_token, $admin_record);
							  
							  $orderdata = array('approval_status' => 'payment released to vendor');
							  Items::singleorderupData($order,$orderdata);
							  $admin_name = $setting['setting']->sender_name;
							  $admin_email = $setting['setting']->sender_email;
							  $currency = $setting['setting']->site_currency;
							  $check_email_support = Members::getuserSubscription($vendor['info']->id);
							  if($check_email_support == 1)
							  {
								  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
								  /* email template code */
									  $checktemp = EmailTemplate::checkTemplate(18);
									  if($checktemp != 0)
									  {
									  $template_view['mind'] = EmailTemplate::viewTemplate(18);
									  $template_subject = $template_view['mind']->et_subject;
									  }
									  else
									  {
									  $template_subject = "New Payment Approved";
									  }
									  /* email template code */
								  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
											$message->to($to_email, $to_name)
													->subject($template_subject);
											$message->from($admin_email,$admin_name);
										});
							  }			
						 
						   
						}
						/* manual payment verification : OFF */
						
						
					  }
					/* referral per sale earning */
						$logged_id = Auth::user()->id;
						$buyer_details = Members::singlebuyerData($logged_id);
						$referral_by = $buyer_details->referral_by;
						$additional_setting = Settings::editAdditional();
						$referral_commission = $additional_setting->per_sale_referral_commission;
						$check_referral = Members::referralCheck($referral_by);
						  if($check_referral != 0)
						  {
							  $referred['display'] = Members::referralUser($referral_by);
							  $wallet_amount = $referred['display']->earnings + $referral_commission;
							  $referral_amount = $referred['display']->referral_amount + $referral_commission;
							  $update_data = array('earnings' => $wallet_amount, 'referral_amount' => $referral_amount);
							  Members::updateReferral($referral_by,$update_data);
						   } 
					/* referral per sale earning */	
					$data_record = array('payment_token' => $payment_token);
					return view('success')->with($data_record);
					
					
				}
		     
		  
		  }
		  /* stripe code */

		  
		  
	   }
	   return view('checkout')->with($totaldata);
	
	
	}
	
	
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
		 $payment_status = 'completed';
		 $orderdata = array('payment_token' => $payment_token, 'order_status' => $payment_status);
		 $checkoutdata = array('payment_token' => $payment_token, 'payment_status' => $payment_status);
		 Items::singleordupdateData($purchased_token,$orderdata);
		 Items::singlecheckoutData($purchased_token,$checkoutdata);
		 $token = $purchased_token;
		 $check['display'] = Items::getcheckoutData($token);
		 $order_id = $check['display']->order_ids;
		 $order_loop = explode(',',$order_id);
		 foreach($order_loop as $order)
		 {
							
							$getitem['item'] = Items::getorderData($order);
							$token = $getitem['item']->item_token;
							$item['display'] = Items::solditemData($token);
							$item_sold = $item['display']->item_sold + 1;
							$item_token = $token; 
							$data = array('item_sold' => $item_sold);
							Items::updateitemData($item_token,$data);
							/* subscription code */
							$additional['setting'] = Settings::editAdditional();
							$ordered['data'] = Items::singleorderData($order);
							$item_user_id = $ordered['data']->item_user_id;
							$vendor['info'] = Members::singlevendorData($item_user_id);
							$to_name = $vendor['info']->name;
							$to_email = $vendor['info']->email;
							$vendor_amount = $ordered['data']->vendor_amount;
							$admin_name = $setting['setting']->sender_name;
							$admin_email = $setting['setting']->sender_email;
							$currency = $setting['setting']->site_currency;
							$count_mode = Settings::checkuserSubscription($item_user_id);
							/* manual payment verification : OFF */
							if($additional['setting']->subscription_mode == 0)
							{
								if($setting['setting']->payment_verification == 0)
								{
								   
									  
									  $user_id = $ordered['data']->user_id;
									  
									  $total_price = $ordered['data']->total_price;
									  $admin_amount = $ordered['data']->admin_amount;
									  
									  
									  $user_token = $vendor['info']->user_token;
									  
									  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
									  $record = array('earnings' => $vendor_earning);
									  Members::updatepasswordData($user_token, $record);
									  
									  $admin['info'] = Members::adminData();
									  $admin_token = $admin['info']->user_token;
									  $admin_earning = $admin['info']->earnings + $admin_amount;
									  $admin_record = array('earnings' => $admin_earning);
									  Members::updateadminData($admin_token, $admin_record);
									  
									  $orderdata = array('approval_status' => 'payment released to vendor');
									  Items::singleorderupData($order,$orderdata);
								 
								}
								
								$record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
								/* email template code */
									  $checktemp = EmailTemplate::checkTemplate(18);
									  if($checktemp != 0)
									  {
									  $template_view['mind'] = EmailTemplate::viewTemplate(18);
									  $template_subject = $template_view['mind']->et_subject;
									  }
									  else
									  {
									  $template_subject = "New Payment Approved";
									  }
									  /* email template code */
								Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
													$message->to($to_email, $to_name)
															->subject($template_subject);
													$message->from($admin_email,$admin_name);
												});
							}	
							else
							{
							   if($count_mode == 1)
							   {
								   
									  $orderdata = array('approval_status' => 'payment released to vendor');
									  Items::singleorderupData($order,$orderdata);
									  $check_email_support = Members::getuserSubscription($vendor['info']->id);
									  if($check_email_support == 1)
									  {
										  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
										  /* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
										  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
													$message->to($to_email, $to_name)
															->subject($template_subject);
													$message->from($admin_email,$admin_name);
												});
									  }
							   }
							   else
							   {
								  
								  if($setting['setting']->payment_verification == 0)
								 {
									  $user_id = $ordered['data']->user_id;
									  
									  $total_price = $ordered['data']->total_price;
									  $admin_amount = $ordered['data']->admin_amount;
									  
									  
									  $user_token = $vendor['info']->user_token;
									  
									  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
									  $record = array('earnings' => $vendor_earning);
									  Members::updatepasswordData($user_token, $record);
									  
									  $admin['info'] = Members::adminData();
									  $admin_token = $admin['info']->user_token;
									  $admin_earning = $admin['info']->earnings + $admin_amount;
									  $admin_record = array('earnings' => $admin_earning);
									  Members::updateadminData($admin_token, $admin_record);
									  
									  $orderdata = array('approval_status' => 'payment released to vendor');
									  Items::singleorderupData($order,$orderdata);
									  
									  
									  $check_email_support = Members::getuserSubscription($vendor['info']->id);
									  if($check_email_support == 1)
									  {
										  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
										  /* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
										  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
													$message->to($to_email, $to_name)
															->subject($template_subject);
													$message->from($admin_email,$admin_name);
												});
									  }
								 
								  }
								  
								  
							   }
							   
							   
							}	
							/* manual payment verification : OFF */
							/* subscription code */

		                											
		}
		/* referral per sale earning */
		$logged_id = Auth::user()->id;
		$buyer_details = Members::singlebuyerData($logged_id);
		$referral_by = $buyer_details->referral_by;
		$additional_setting = Settings::editAdditional();
		$referral_commission = $additional_setting->per_sale_referral_commission;
		$check_referral = Members::referralCheck($referral_by);
		if($check_referral != 0)
		{
			$referred['display'] = Members::referralUser($referral_by);
			$wallet_amount = $referred['display']->earnings + $referral_commission;
			$referral_amount = $referred['display']->referral_amount + $referral_commission;
			$update_data = array('earnings' => $wallet_amount, 'referral_amount' => $referral_amount);
		Members::updateReferral($referral_by,$update_data);
	    } 
		/* referral per sale earning */
		$data_record = array('payment_token' => $payment_token);
		return view('success')->with($data_record);
		
		
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
	
	public function handleGatewayCallback()
    {
        $paymentDetails = Paystack::getPaymentData();
		$sid = 1;
	    $setting['setting'] = Settings::editGeneral($sid);

        //dd($paymentDetails);
         //print_r($paymentDetails);
		if (array_key_exists('data', $paymentDetails) && array_key_exists('status', $paymentDetails['data']) && ($paymentDetails['data']['status'] === 'success')) 
		{
		 // echo "Transaction was successful - ".$paymentDetails['data']['reference']. ' - '.$paymentDetails['data']['metadata'];
		 
		 $payment_token = $paymentDetails['data']['reference'];
		 $purchase_token = $paymentDetails['data']['metadata'];
		 $payment_status = 'completed';
		 $purchased_token = $purchase_token;
		 $orderdata = array('payment_token' => $payment_token, 'order_status' => $payment_status);
		 $checkoutdata = array('payment_token' => $payment_token, 'payment_status' => $payment_status);
		 Items::singleordupdateData($purchased_token,$orderdata);
		 Items::singlecheckoutData($purchased_token,$checkoutdata);
		 $token = $purchased_token;
		 $check['display'] = Items::getcheckoutData($token);
		 $order_id = $check['display']->order_ids;
		 $order_loop = explode(',',$order_id);
		 foreach($order_loop as $order)
		 {
							
							$getitem['item'] = Items::getorderData($order);
							$token = $getitem['item']->item_token;
							$item['display'] = Items::solditemData($token);
							$item_sold = $item['display']->item_sold + 1;
							$item_token = $token; 
							$data = array('item_sold' => $item_sold);
							Items::updateitemData($item_token,$data);
		                /* manual payment verification : OFF */
						if($setting['setting']->payment_verification == 0)
						{
						   
							  $ordered['data'] = Items::singleorderData($order);
							  $user_id = $ordered['data']->user_id;
							  $item_user_id = $ordered['data']->item_user_id;
							  $vendor_amount = $ordered['data']->vendor_amount;
							  $total_price = $ordered['data']->total_price;
							  $admin_amount = $ordered['data']->admin_amount;
							  
							  $vendor['info'] = Members::singlevendorData($item_user_id);
							  $user_token = $vendor['info']->user_token;
							  $to_name = $vendor['info']->name;
							  $to_email = $vendor['info']->email;
							  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
							  $record = array('earnings' => $vendor_earning);
							  Members::updatepasswordData($user_token, $record);
							  
							  $admin['info'] = Members::adminData();
							  $admin_token = $admin['info']->user_token;
							  $admin_earning = $admin['info']->earnings + $admin_amount;
							  $admin_record = array('earnings' => $admin_earning);
							  Members::updateadminData($admin_token, $admin_record);
							  
							  $orderdata = array('approval_status' => 'payment released to vendor');
							  Items::singleorderupData($order,$orderdata);
							  $admin_name = $setting['setting']->sender_name;
							  $admin_email = $setting['setting']->sender_email;
							  $currency = $setting['setting']->site_currency;
							  $check_email_support = Members::getuserSubscription($vendor['info']->id);
							  if($check_email_support == 1)
							  {
								  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
								  /* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
								  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
											$message->to($to_email, $to_name)
													->subject($template_subject);
											$message->from($admin_email,$admin_name);
										});
							  }			
						 
						   
						}
						/* manual payment verification : OFF */
											
		}
		/* referral per sale earning */
		$logged_id = Auth::user()->id;
		$buyer_details = Members::singlebuyerData($logged_id);
		$referral_by = $buyer_details->referral_by;
		$additional_setting = Settings::editAdditional();
		$referral_commission = $additional_setting->per_sale_referral_commission;
		$check_referral = Members::referralCheck($referral_by);
		if($check_referral != 0)
		{
			$referred['display'] = Members::referralUser($referral_by);
			$wallet_amount = $referred['display']->earnings + $referral_commission;
			$referral_amount = $referred['display']->referral_amount + $referral_commission;
			$update_data = array('earnings' => $wallet_amount, 'referral_amount' => $referral_amount);
			Members::updateReferral($referral_by,$update_data);
		} 
		/* referral per sale earning */
		$data_record = array('payment_token' => $payment_token);
		return view('success')->with($data_record);
						
			
		}
		else
		{
		  return redirect('/cancel');
		}
		
    }
	
	
	public function view_success()
	{
	  return view('success');
	}
	
	public function two_checkout_success(Request $request)
	{
	$payment_token = $request->input('invoice_id');
	$purchased_token = $request->input('merchant_order_id');
	$x_receipt_link_url = $request->input('x_receipt_link_url');
	$done_approval_status = $request->input('credit_card_processed');
	if($x_receipt_link_url == 'subscription')
	{
	   if($done_approval_status == "Y")
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
	else if($x_receipt_link_url == 'product_item')
	{
	
			$sid = 1;
			$setting['setting'] = Settings::editGeneral($sid);
			$payment_status = 'completed';
			$check_purchased_data = Items::checkoutLevel($purchased_token);
			if($check_purchased_data == 0)
			{
				   if($done_approval_status == "Y")
				   { 
					$orderdata = array('payment_token' => $payment_token, 'order_status' => $payment_status);
					$checkoutdata = array('payment_token' => $payment_token, 'payment_status' => $payment_status);
					Items::singleordupdateData($purchased_token,$orderdata);
					Items::singlecheckoutData($purchased_token,$checkoutdata);
					
					$token = $purchased_token;
					$check['display'] = Items::getcheckoutData($token);
					$order_id = $check['display']->order_ids;
					$order_loop = explode(',',$order_id);
					foreach($order_loop as $order)
					{
										
						$getitem['item'] = Items::getorderData($order);
						$token = $getitem['item']->item_token;
						$item['display'] = Items::solditemData($token);
						$item_sold = $item['display']->item_sold + 1;
						$item_token = $token; 
						$data = array('item_sold' => $item_sold);
						Items::updateitemData($item_token,$data);
						/* subscription code */
						$additional['setting'] = Settings::editAdditional();
						$ordered['data'] = Items::singleorderData($order);
						$item_user_id = $ordered['data']->item_user_id;
						$vendor['info'] = Members::singlevendorData($item_user_id);
						$to_name = $vendor['info']->name;
						$to_email = $vendor['info']->email;
						$vendor_amount = $ordered['data']->vendor_amount;
						$admin_name = $setting['setting']->sender_name;
						$admin_email = $setting['setting']->sender_email;
						$currency = $setting['setting']->site_currency;
						$count_mode = Settings::checkuserSubscription($item_user_id);
						/* manual payment verification : OFF */
						if($additional['setting']->subscription_mode == 0)
						{
							if($setting['setting']->payment_verification == 0)
							{
							   
								  
								  $user_id = $ordered['data']->user_id;
								  
								  $total_price = $ordered['data']->total_price;
								  $admin_amount = $ordered['data']->admin_amount;
								  
								  
								  $user_token = $vendor['info']->user_token;
								  
								  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
								  $record = array('earnings' => $vendor_earning);
								  Members::updatepasswordData($user_token, $record);
								  
								  $admin['info'] = Members::adminData();
								  $admin_token = $admin['info']->user_token;
								  $admin_earning = $admin['info']->earnings + $admin_amount;
								  $admin_record = array('earnings' => $admin_earning);
								  Members::updateadminData($admin_token, $admin_record);
								  
								  $orderdata = array('approval_status' => 'payment released to vendor');
								  Items::singleorderupData($order,$orderdata);
							 
							}
							
							$record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
							/* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
							Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
												$message->to($to_email, $to_name)
														->subject($template_subject);
												$message->from($admin_email,$admin_name);
											});
						}	
						else
						{
						   if($count_mode == 1)
						   {
							   
								  $orderdata = array('approval_status' => 'payment released to vendor');
								  Items::singleorderupData($order,$orderdata);
								  $check_email_support = Members::getuserSubscription($vendor['info']->id);
								  if($check_email_support == 1)
								  {
									  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
									  /* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
									  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
												$message->to($to_email, $to_name)
														->subject($template_subject);
												$message->from($admin_email,$admin_name);
											});
								  }
						   }
						   else
						   {
							  
							  if($setting['setting']->payment_verification == 0)
							 {
								  $user_id = $ordered['data']->user_id;
								  
								  $total_price = $ordered['data']->total_price;
								  $admin_amount = $ordered['data']->admin_amount;
								  
								  
								  $user_token = $vendor['info']->user_token;
								  
								  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
								  $record = array('earnings' => $vendor_earning);
								  Members::updatepasswordData($user_token, $record);
								  
								  $admin['info'] = Members::adminData();
								  $admin_token = $admin['info']->user_token;
								  $admin_earning = $admin['info']->earnings + $admin_amount;
								  $admin_record = array('earnings' => $admin_earning);
								  Members::updateadminData($admin_token, $admin_record);
								  
								  $orderdata = array('approval_status' => 'payment released to vendor');
								  Items::singleorderupData($order,$orderdata);
								  
								  
								  $check_email_support = Members::getuserSubscription($vendor['info']->id);
								  if($check_email_support == 1)
								  {
									  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
									  /* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
									  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
												$message->to($to_email, $to_name)
														->subject($template_subject);
												$message->from($admin_email,$admin_name);
											});
								  }
							 
							  }
							  
							  
						   }
						   
						   
						}	
						/* manual payment verification : OFF */
						/* subscription code */
						
						
						
					}
					
						/* referral per sale earning */
						$logged_id = Auth::user()->id;
						$buyer_details = Members::singlebuyerData($logged_id);
						$referral_by = $buyer_details->referral_by;
						$additional_setting = Settings::editAdditional();
						$referral_commission = $additional_setting->per_sale_referral_commission;
						$check_referral = Members::referralCheck($referral_by);
						  if($check_referral != 0)
						  {
							  $referred['display'] = Members::referralUser($referral_by);
							  $wallet_amount = $referred['display']->earnings + $referral_commission;
							  $referral_amount = $referred['display']->referral_amount + $referral_commission;
							  $update_data = array('earnings' => $wallet_amount, 'referral_amount' => $referral_amount);
							  Members::updateReferral($referral_by,$update_data);
						   } 
					   /* referral per sale earning */
					   $result_data = array('payment_token' => $payment_token);
					   return view('success')->with($result_data);
					  }
					  else
					  {
					  return redirect('/cancel');
					  } 
				}
				else
				{
				$result_data = array('payment_token' => $payment_token);
				return view('success')->with($result_data);
				}
				
	     }
		  else
		  {
			 return redirect('/cancel');
		  }
	}
	
	
	/* ipay */
	public function ipay_success(Request $request)
	{
	  
	$sid = 1;
	$setting['setting'] = Settings::editGeneral($sid);
	$payment_token = $request->input('txncd');
	$payment_status = 'completed';
	$purchased_token = $request->input('id');
	$ipay_status = $request->input('status');
	if($ipay_status == 'aei7p7yrx4ae34') // success
	{
		$orderdata = array('payment_token' => $payment_token, 'order_status' => $payment_status);
		$checkoutdata = array('payment_token' => $payment_token, 'payment_status' => $payment_status);
		Items::singleordupdateData($purchased_token,$orderdata);
		Items::singlecheckoutData($purchased_token,$checkoutdata);
		
		$token = $purchased_token;
		$check['display'] = Items::getcheckoutData($token);
		$order_id = $check['display']->order_ids;
		$order_loop = explode(',',$order_id);
		foreach($order_loop as $order)
		{
							
			$getitem['item'] = Items::getorderData($order);
			$token = $getitem['item']->item_token;
			$item['display'] = Items::solditemData($token);
			$item_sold = $item['display']->item_sold + 1;
			$item_token = $token; 
			$data = array('item_sold' => $item_sold);
			Items::updateitemData($item_token,$data);
			/* subscription code */
			$additional['setting'] = Settings::editAdditional();
			$ordered['data'] = Items::singleorderData($order);
			$item_user_id = $ordered['data']->item_user_id;
			$vendor['info'] = Members::singlevendorData($item_user_id);
			$to_name = $vendor['info']->name;
			$to_email = $vendor['info']->email;
			$vendor_amount = $ordered['data']->vendor_amount;
			$admin_name = $setting['setting']->sender_name;
			$admin_email = $setting['setting']->sender_email;
			$currency = $setting['setting']->site_currency;
			$count_mode = Settings::checkuserSubscription($item_user_id);
			/* manual payment verification : OFF */
			if($additional['setting']->subscription_mode == 0)
			{
				if($setting['setting']->payment_verification == 0)
				{
				   
					  
					  $user_id = $ordered['data']->user_id;
					  
					  $total_price = $ordered['data']->total_price;
					  $admin_amount = $ordered['data']->admin_amount;
					  
					  
					  $user_token = $vendor['info']->user_token;
					  
					  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
					  $record = array('earnings' => $vendor_earning);
					  Members::updatepasswordData($user_token, $record);
					  
					  $admin['info'] = Members::adminData();
					  $admin_token = $admin['info']->user_token;
					  $admin_earning = $admin['info']->earnings + $admin_amount;
					  $admin_record = array('earnings' => $admin_earning);
					  Members::updateadminData($admin_token, $admin_record);
					  
					  $orderdata = array('approval_status' => 'payment released to vendor');
					  Items::singleorderupData($order,$orderdata);
				 
				}
				
				$record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
				/* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
				Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
									$message->to($to_email, $to_name)
											->subject($template_subject);
									$message->from($admin_email,$admin_name);
								});
			}	
			else
			{
			   if($count_mode == 1)
			   {
				   
					  $orderdata = array('approval_status' => 'payment released to vendor');
					  Items::singleorderupData($order,$orderdata);
					  $check_email_support = Members::getuserSubscription($vendor['info']->id);
					  if($check_email_support == 1)
					  {
						  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
						  /* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
						  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
									$message->to($to_email, $to_name)
											->subject($template_subject);
									$message->from($admin_email,$admin_name);
								});
					  }
			   }
			   else
			   {
				  
				  if($setting['setting']->payment_verification == 0)
				 {
					  $user_id = $ordered['data']->user_id;
					  
					  $total_price = $ordered['data']->total_price;
					  $admin_amount = $ordered['data']->admin_amount;
					  
					  
					  $user_token = $vendor['info']->user_token;
					  
					  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
					  $record = array('earnings' => $vendor_earning);
					  Members::updatepasswordData($user_token, $record);
					  
					  $admin['info'] = Members::adminData();
					  $admin_token = $admin['info']->user_token;
					  $admin_earning = $admin['info']->earnings + $admin_amount;
					  $admin_record = array('earnings' => $admin_earning);
					  Members::updateadminData($admin_token, $admin_record);
					  
					  $orderdata = array('approval_status' => 'payment released to vendor');
					  Items::singleorderupData($order,$orderdata);
					  
					  
					  $check_email_support = Members::getuserSubscription($vendor['info']->id);
					  if($check_email_support == 1)
					  {
						  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
						  /* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
						  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
									$message->to($to_email, $to_name)
											->subject($template_subject);
									$message->from($admin_email,$admin_name);
								});
					  }
				 
				  }
				  
				  
			   }
			   
			   
			}	
			/* manual payment verification : OFF */
			/* subscription code */
			
			
			
		}
		
		/* referral per sale earning */
			$logged_id = Auth::user()->id;
			$buyer_details = Members::singlebuyerData($logged_id);
			$referral_by = $buyer_details->referral_by;
			$additional_setting = Settings::editAdditional();
			$referral_commission = $additional_setting->per_sale_referral_commission;
			$check_referral = Members::referralCheck($referral_by);
			  if($check_referral != 0)
			  {
				  $referred['display'] = Members::referralUser($referral_by);
				  $wallet_amount = $referred['display']->earnings + $referral_commission;
				  $referral_amount = $referred['display']->referral_amount + $referral_commission;
				  $update_data = array('earnings' => $wallet_amount, 'referral_amount' => $referral_amount);
				  Members::updateReferral($referral_by,$update_data);
			   } 
		/* referral per sale earning */	
		$result_data = array('payment_token' => $payment_token);
		return view('success')->with($result_data);
		
	   }
	   else
	   {
	       return view('cancel');
	   }
	  
	}
	
	/* ipay */
	
		public function shurjopay_return(Request $request)
	{

	    $order_id = $request->order_id;
        $shurjopay_service = new ShurjopayController();
        $response = $shurjopay_service->verify($order_id);
        $result = json_decode($response)[0];

        if($result && $result->sp_code == 1000) {
            $sid = 1;
            $setting['setting'] = Settings::editGeneral($sid);
            $payment_token = $result->order_id;
            $ord_token = $result->customer_order_id;

                $payment_status = 'completed';
                $purchased_token = $ord_token;
                $orderdata = array('payment_token' => $payment_token, 'order_status' => $payment_status);
                $checkoutdata = array('payment_token' => $payment_token, 'payment_status' => $payment_status);
                Items::singleordupdateData($purchased_token,$orderdata);
                Items::singlecheckoutData($purchased_token,$checkoutdata);

                $token = $purchased_token;

                $check['display'] = Items::getcheckoutData($token);
                $order_id = $check['display']->order_ids;
                $order_loop = explode(',',$order_id);
                foreach($order_loop as $order)
                {

                    $getitem['item'] = Items::getorderData($order);
                    $token = $getitem['item']->item_token;
                    $item['display'] = Items::solditemData($token);
                    $item_sold = $item['display']->item_sold + 1;
                    $item_token = $token;
                    $data = array('item_sold' => $item_sold);
                    Items::updateitemData($item_token,$data);
                    /* subscription code */
                    $additional['setting'] = Settings::editAdditional();
                    $ordered['data'] = Items::singleorderData($order);
                    $item_user_id = $ordered['data']->item_user_id;
                    $vendor['info'] = Members::singlevendorData($item_user_id);
                    $to_name = $vendor['info']->name;
                    $to_email = $vendor['info']->email;
                    $vendor_amount = $ordered['data']->vendor_amount;
                    $admin_name = $setting['setting']->sender_name;
                    $admin_email = $setting['setting']->sender_email;
                    $currency = $setting['setting']->site_currency;
                    $count_mode = Settings::checkuserSubscription($item_user_id);
                    /* manual payment verification : OFF */
                    if($additional['setting']->subscription_mode == 0)
                    {
                        if($setting['setting']->payment_verification == 0)
                        {


                            $user_id = $ordered['data']->user_id;

                            $total_price = $ordered['data']->total_price;
                            $admin_amount = $ordered['data']->admin_amount;


                            $user_token = $vendor['info']->user_token;

                            $vendor_earning = $vendor['info']->earnings + $vendor_amount;
                            $record = array('earnings' => $vendor_earning);
                            Members::updatepasswordData($user_token, $record);

                            $admin['info'] = Members::adminData();
                            $admin_token = $admin['info']->user_token;
                            $admin_earning = $admin['info']->earnings + $admin_amount;
                            $admin_record = array('earnings' => $admin_earning);
                            Members::updateadminData($admin_token, $admin_record);

                            $orderdata = array('approval_status' => 'payment released to vendor');
                            Items::singleorderupData($order,$orderdata);

                        }

                        $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
                        /* email template code */
                        $checktemp = EmailTemplate::checkTemplate(18);
                        if($checktemp != 0)
                        {
                            $template_view['mind'] = EmailTemplate::viewTemplate(18);
                            $template_subject = $template_view['mind']->et_subject;
                        }
                        else
                        {
                            $template_subject = "New Payment Approved";
                        }
                        try {
                            /* email template code */
                            Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
                                $message->to($to_email, $to_name)
                                    ->subject($template_subject);
                                $message->from($admin_email,$admin_name);
                            });
                        }   catch(\Exception $exception) {

                        }

                    }
                    else
                    {
                        if($count_mode == 1)
                        {

                            $orderdata = array('approval_status' => 'payment released to vendor');
                            Items::singleorderupData($order,$orderdata);
                            $check_email_support = Members::getuserSubscription($vendor['info']->id);
                            if($check_email_support == 1)
                            {
                                $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
                                /* email template code */
                                $checktemp = EmailTemplate::checkTemplate(18);
                                if($checktemp != 0)
                                {
                                    $template_view['mind'] = EmailTemplate::viewTemplate(18);
                                    $template_subject = $template_view['mind']->et_subject;
                                }
                                else
                                {
                                    $template_subject = "New Payment Approved";
                                }
                                /* email template code */
                                Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
                                    $message->to($to_email, $to_name)
                                        ->subject($template_subject);
                                    $message->from($admin_email,$admin_name);
                                });
                            }
                        }
                        else
                        {

                            if($setting['setting']->payment_verification == 0)
                            {
                                $user_id = $ordered['data']->user_id;

                                $total_price = $ordered['data']->total_price;
                                $admin_amount = $ordered['data']->admin_amount;


                                $user_token = $vendor['info']->user_token;

                                $vendor_earning = $vendor['info']->earnings + $vendor_amount;
                                $record = array('earnings' => $vendor_earning);
                                Members::updatepasswordData($user_token, $record);

                                $admin['info'] = Members::adminData();
                                $admin_token = $admin['info']->user_token;
                                $admin_earning = $admin['info']->earnings + $admin_amount;
                                $admin_record = array('earnings' => $admin_earning);
                                Members::updateadminData($admin_token, $admin_record);

                                $orderdata = array('approval_status' => 'payment released to vendor');
                                Items::singleorderupData($order,$orderdata);


                                $check_email_support = Members::getuserSubscription($vendor['info']->id);
                                if($check_email_support == 1)
                                {
                                    $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
                                    /* email template code */
                                    $checktemp = EmailTemplate::checkTemplate(18);
                                    if($checktemp != 0)
                                    {
                                        $template_view['mind'] = EmailTemplate::viewTemplate(18);
                                        $template_subject = $template_view['mind']->et_subject;
                                    }
                                    else
                                    {
                                        $template_subject = "New Payment Approved";
                                    }

                                    try {
                                        /* email template code */
                                        Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
                                            $message->to($to_email, $to_name)
                                                ->subject($template_subject);
                                            $message->from($admin_email,$admin_name);
                                        });
                                    } catch (\Exception $exception) {

                                    }

                                }

                            }


                        }


                    }
                    /* manual payment verification : OFF */
                    /* subscription code */



                }

                /* referral per sale earning */
                $logged_id = Auth::user()->id;
                $buyer_details = Members::singlebuyerData($logged_id);
                $referral_by = $buyer_details->referral_by;
                $additional_setting = Settings::editAdditional();
                $referral_commission = $additional_setting->per_sale_referral_commission;
                $check_referral = Members::referralCheck($referral_by);
                if($check_referral != 0)
                {
                    $referred['display'] = Members::referralUser($referral_by);
                    $wallet_amount = $referred['display']->earnings + $referral_commission;
                    $referral_amount = $referred['display']->referral_amount + $referral_commission;
                    $update_data = array('earnings' => $wallet_amount, 'referral_amount' => $referral_amount);
                    Members::updateReferral($referral_by,$update_data);
                }
                /* referral per sale earning */
                $result_data = array('payment_token' => $payment_token);
                return view('success')->with($result_data);

        }
        else
        {
            return view('cancel');
        }
	}
	
	public function paypal_success($ord_token, Request $request)
	{
	$sid = 1;
	$setting['setting'] = Settings::editGeneral($sid);
	$payment_token = $request->input('tx');
	$payment_status = 'completed';
	$purchased_token = $ord_token;
	$orderdata = array('payment_token' => $payment_token, 'order_status' => $payment_status);
	$checkoutdata = array('payment_token' => $payment_token, 'payment_status' => $payment_status);
	Items::singleordupdateData($purchased_token,$orderdata);
	Items::singlecheckoutData($purchased_token,$checkoutdata);
	
	$token = $purchased_token;
	$check['display'] = Items::getcheckoutData($token);
	$order_id = $check['display']->order_ids;
	$order_loop = explode(',',$order_id);
	foreach($order_loop as $order)
	{
						
		$getitem['item'] = Items::getorderData($order);
		$token = $getitem['item']->item_token;
		$item['display'] = Items::solditemData($token);
		$item_sold = $item['display']->item_sold + 1;
		$item_token = $token; 
		$data = array('item_sold' => $item_sold);
		Items::updateitemData($item_token,$data);
		/* subscription code */
		$additional['setting'] = Settings::editAdditional();
		$ordered['data'] = Items::singleorderData($order);
		$item_user_id = $ordered['data']->item_user_id;
		$vendor['info'] = Members::singlevendorData($item_user_id);
		$to_name = $vendor['info']->name;
		$to_email = $vendor['info']->email;
		$vendor_amount = $ordered['data']->vendor_amount;
		$admin_name = $setting['setting']->sender_name;
		$admin_email = $setting['setting']->sender_email;
		$currency = $setting['setting']->site_currency;
		$count_mode = Settings::checkuserSubscription($item_user_id);
		/* manual payment verification : OFF */
		if($additional['setting']->subscription_mode == 0)
		{
			if($setting['setting']->payment_verification == 0)
			{
			   
				  
				  $user_id = $ordered['data']->user_id;
				  
				  $total_price = $ordered['data']->total_price;
				  $admin_amount = $ordered['data']->admin_amount;
				  
				  
				  $user_token = $vendor['info']->user_token;
				  
				  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
				  $record = array('earnings' => $vendor_earning);
				  Members::updatepasswordData($user_token, $record);
				  
				  $admin['info'] = Members::adminData();
				  $admin_token = $admin['info']->user_token;
				  $admin_earning = $admin['info']->earnings + $admin_amount;
				  $admin_record = array('earnings' => $admin_earning);
				  Members::updateadminData($admin_token, $admin_record);
				  
				  $orderdata = array('approval_status' => 'payment released to vendor');
				  Items::singleorderupData($order,$orderdata);
			 
			}
			
			$record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
			/* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
			Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
								$message->to($to_email, $to_name)
										->subject($template_subject);
								$message->from($admin_email,$admin_name);
							});
		}	
		else
		{
		   if($count_mode == 1)
		   {
		       
			      $orderdata = array('approval_status' => 'payment released to vendor');
				  Items::singleorderupData($order,$orderdata);
				  $check_email_support = Members::getuserSubscription($vendor['info']->id);
				  if($check_email_support == 1)
				  {
					  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
					  /* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
					  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
								$message->to($to_email, $to_name)
										->subject($template_subject);
								$message->from($admin_email,$admin_name);
							});
				  }
		   }
		   else
		   {
		      
			  if($setting['setting']->payment_verification == 0)
			 {
			      $user_id = $ordered['data']->user_id;
				  
				  $total_price = $ordered['data']->total_price;
				  $admin_amount = $ordered['data']->admin_amount;
				  
				  
				  $user_token = $vendor['info']->user_token;
				  
				  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
				  $record = array('earnings' => $vendor_earning);
				  Members::updatepasswordData($user_token, $record);
				  
				  $admin['info'] = Members::adminData();
				  $admin_token = $admin['info']->user_token;
				  $admin_earning = $admin['info']->earnings + $admin_amount;
				  $admin_record = array('earnings' => $admin_earning);
				  Members::updateadminData($admin_token, $admin_record);
				  
				  $orderdata = array('approval_status' => 'payment released to vendor');
				  Items::singleorderupData($order,$orderdata);
				  
				  
				  $check_email_support = Members::getuserSubscription($vendor['info']->id);
				  if($check_email_support == 1)
				  {
					  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
					  /* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
					  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
								$message->to($to_email, $to_name)
										->subject($template_subject);
								$message->from($admin_email,$admin_name);
							});
				  }
			 
			  }
			  
		      
		   }
		   
		   
		}	
		/* manual payment verification : OFF */
		/* subscription code */
		
		
		
	}
	
	/* referral per sale earning */
	    $logged_id = Auth::user()->id;
		$buyer_details = Members::singlebuyerData($logged_id);
		$referral_by = $buyer_details->referral_by;
		$additional_setting = Settings::editAdditional();
		$referral_commission = $additional_setting->per_sale_referral_commission;
		$check_referral = Members::referralCheck($referral_by);
		  if($check_referral != 0)
		  {
			  $referred['display'] = Members::referralUser($referral_by);
			  $wallet_amount = $referred['display']->earnings + $referral_commission;
			  $referral_amount = $referred['display']->referral_amount + $referral_commission;
			  $update_data = array('earnings' => $wallet_amount, 'referral_amount' => $referral_amount);
			  Members::updateReferral($referral_by,$update_data);
		   } 
    /* referral per sale earning */	
	$result_data = array('payment_token' => $payment_token);
	return view('success')->with($result_data);
	
	}
	
	
	
	
	public function payu_success(Request $request)
	{
	$sid = 1;
	$setting['setting'] = Settings::editGeneral($sid);
	$payment_token = $request->input('txnid');
	$payment_status = 'completed';
	$purchased_token = $request->input('udf1');
	$orderdata = array('payment_token' => $payment_token, 'order_status' => $payment_status);
	$checkoutdata = array('payment_token' => $payment_token, 'payment_status' => $payment_status);
	Items::singleordupdateData($purchased_token,$orderdata);
	Items::singlecheckoutData($purchased_token,$checkoutdata);
	
	$token = $purchased_token;
	$check['display'] = Items::getcheckoutData($token);
	$order_id = $check['display']->order_ids;
	$order_loop = explode(',',$order_id);
	foreach($order_loop as $order)
	{
						
		$getitem['item'] = Items::getorderData($order);
		$token = $getitem['item']->item_token;
		$item['display'] = Items::solditemData($token);
		$item_sold = $item['display']->item_sold + 1;
		$item_token = $token; 
		$data = array('item_sold' => $item_sold);
		Items::updateitemData($item_token,$data);
		/* subscription code */
		$additional['setting'] = Settings::editAdditional();
		$ordered['data'] = Items::singleorderData($order);
		$item_user_id = $ordered['data']->item_user_id;
		$vendor['info'] = Members::singlevendorData($item_user_id);
		$to_name = $vendor['info']->name;
		$to_email = $vendor['info']->email;
		$vendor_amount = $ordered['data']->vendor_amount;
		$admin_name = $setting['setting']->sender_name;
		$admin_email = $setting['setting']->sender_email;
		$currency = $setting['setting']->site_currency;
		$count_mode = Settings::checkuserSubscription($item_user_id);
		/* manual payment verification : OFF */
		if($additional['setting']->subscription_mode == 0)
		{
			if($setting['setting']->payment_verification == 0)
			{
			   
				  
				  $user_id = $ordered['data']->user_id;
				  
				  $total_price = $ordered['data']->total_price;
				  $admin_amount = $ordered['data']->admin_amount;
				  
				  
				  $user_token = $vendor['info']->user_token;
				  
				  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
				  $record = array('earnings' => $vendor_earning);
				  Members::updatepasswordData($user_token, $record);
				  
				  $admin['info'] = Members::adminData();
				  $admin_token = $admin['info']->user_token;
				  $admin_earning = $admin['info']->earnings + $admin_amount;
				  $admin_record = array('earnings' => $admin_earning);
				  Members::updateadminData($admin_token, $admin_record);
				  
				  $orderdata = array('approval_status' => 'payment released to vendor');
				  Items::singleorderupData($order,$orderdata);
			 
			}
			
			$record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
			/* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
			Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
								$message->to($to_email, $to_name)
										->subject($template_subject);
								$message->from($admin_email,$admin_name);
							});
		}	
		else
		{
		   if($count_mode == 1)
		   {
		       
			      $orderdata = array('approval_status' => 'payment released to vendor');
				  Items::singleorderupData($order,$orderdata);
				  $check_email_support = Members::getuserSubscription($vendor['info']->id);
				  if($check_email_support == 1)
				  {
					  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
					  /* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
					  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
								$message->to($to_email, $to_name)
										->subject($template_subject);
								$message->from($admin_email,$admin_name);
							});
				  }
		   }
		   else
		   {
		      
			  if($setting['setting']->payment_verification == 0)
			 {
			      $user_id = $ordered['data']->user_id;
				  
				  $total_price = $ordered['data']->total_price;
				  $admin_amount = $ordered['data']->admin_amount;
				  
				  
				  $user_token = $vendor['info']->user_token;
				  
				  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
				  $record = array('earnings' => $vendor_earning);
				  Members::updatepasswordData($user_token, $record);
				  
				  $admin['info'] = Members::adminData();
				  $admin_token = $admin['info']->user_token;
				  $admin_earning = $admin['info']->earnings + $admin_amount;
				  $admin_record = array('earnings' => $admin_earning);
				  Members::updateadminData($admin_token, $admin_record);
				  
				  $orderdata = array('approval_status' => 'payment released to vendor');
				  Items::singleorderupData($order,$orderdata);
				  
				  
				  $check_email_support = Members::getuserSubscription($vendor['info']->id);
				  if($check_email_support == 1)
				  {
					  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
					  /* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
					  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
								$message->to($to_email, $to_name)
										->subject($template_subject);
								$message->from($admin_email,$admin_name);
							});
				  }
			 
			  }
			  
		      
		   }
		   
		   
		}	
		/* manual payment verification : OFF */
		/* subscription code */
		
		
		
	}
	
	/* referral per sale earning */
	    $logged_id = Auth::user()->id;
		$buyer_details = Members::singlebuyerData($logged_id);
		$referral_by = $buyer_details->referral_by;
		$additional_setting = Settings::editAdditional();
		$referral_commission = $additional_setting->per_sale_referral_commission;
		$check_referral = Members::referralCheck($referral_by);
		  if($check_referral != 0)
		  {
			  $referred['display'] = Members::referralUser($referral_by);
			  $wallet_amount = $referred['display']->earnings + $referral_commission;
			  $referral_amount = $referred['display']->referral_amount + $referral_commission;
			  $update_data = array('earnings' => $wallet_amount, 'referral_amount' => $referral_amount);
			  Members::updateReferral($referral_by,$update_data);
		   } 
    /* referral per sale earning */	
	$result_data = array('payment_token' => $payment_token);
	return view('success')->with($result_data);
	
	}
	
	
	
	
	public function flutterwaveCallback(Request $request)
	{
	$sid = 1;
	$setting['setting'] = Settings::editGeneral($sid);
	$payment_token = $request->input('transaction_id');
	$ord_token = $request->input('tx_ref');
	$pay_status = $request->input('status');
	if ($pay_status == 'successful') 
	{
	
			
			$payment_status = 'completed';
			$purchased_token = $ord_token;
			$orderdata = array('payment_token' => $payment_token, 'order_status' => $payment_status);
			$checkoutdata = array('payment_token' => $payment_token, 'payment_status' => $payment_status);
			Items::singleordupdateData($purchased_token,$orderdata);
			Items::singlecheckoutData($purchased_token,$checkoutdata);
			
			$token = $purchased_token;
			$check['display'] = Items::getcheckoutData($token);
			$order_id = $check['display']->order_ids;
			$order_loop = explode(',',$order_id);
			foreach($order_loop as $order)
			{
								
				$getitem['item'] = Items::getorderData($order);
				$token = $getitem['item']->item_token;
				$item['display'] = Items::solditemData($token);
				$item_sold = $item['display']->item_sold + 1;
				$item_token = $token; 
				$data = array('item_sold' => $item_sold);
				Items::updateitemData($item_token,$data);
				/* subscription code */
				$additional['setting'] = Settings::editAdditional();
				$ordered['data'] = Items::singleorderData($order);
				$item_user_id = $ordered['data']->item_user_id;
				$vendor['info'] = Members::singlevendorData($item_user_id);
				$to_name = $vendor['info']->name;
				$to_email = $vendor['info']->email;
				$vendor_amount = $ordered['data']->vendor_amount;
				$admin_name = $setting['setting']->sender_name;
				$admin_email = $setting['setting']->sender_email;
				$currency = $setting['setting']->site_currency;
				$count_mode = Settings::checkuserSubscription($item_user_id);
				/* manual payment verification : OFF */
				if($additional['setting']->subscription_mode == 0)
				{
					if($setting['setting']->payment_verification == 0)
					{
					   
						  
						  $user_id = $ordered['data']->user_id;
						  
						  $total_price = $ordered['data']->total_price;
						  $admin_amount = $ordered['data']->admin_amount;
						  
						  
						  $user_token = $vendor['info']->user_token;
						  
						  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
						  $record = array('earnings' => $vendor_earning);
						  Members::updatepasswordData($user_token, $record);
						  
						  $admin['info'] = Members::adminData();
						  $admin_token = $admin['info']->user_token;
						  $admin_earning = $admin['info']->earnings + $admin_amount;
						  $admin_record = array('earnings' => $admin_earning);
						  Members::updateadminData($admin_token, $admin_record);
						  
						  $orderdata = array('approval_status' => 'payment released to vendor');
						  Items::singleorderupData($order,$orderdata);
					 
					}
					
					$record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
					/* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
					Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
										$message->to($to_email, $to_name)
												->subject($template_subject);
										$message->from($admin_email,$admin_name);
									});
				}	
				else
				{
				   if($count_mode == 1)
				   {
					   
						  $orderdata = array('approval_status' => 'payment released to vendor');
						  Items::singleorderupData($order,$orderdata);
						  $check_email_support = Members::getuserSubscription($vendor['info']->id);
						  if($check_email_support == 1)
						  {
							  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
							  /* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
							  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
										$message->to($to_email, $to_name)
												->subject($template_subject);
										$message->from($admin_email,$admin_name);
									});
						  }
				   }
				   else
				   {
					  
					  if($setting['setting']->payment_verification == 0)
					 {
						  $user_id = $ordered['data']->user_id;
						  
						  $total_price = $ordered['data']->total_price;
						  $admin_amount = $ordered['data']->admin_amount;
						  
						  
						  $user_token = $vendor['info']->user_token;
						  
						  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
						  $record = array('earnings' => $vendor_earning);
						  Members::updatepasswordData($user_token, $record);
						  
						  $admin['info'] = Members::adminData();
						  $admin_token = $admin['info']->user_token;
						  $admin_earning = $admin['info']->earnings + $admin_amount;
						  $admin_record = array('earnings' => $admin_earning);
						  Members::updateadminData($admin_token, $admin_record);
						  
						  $orderdata = array('approval_status' => 'payment released to vendor');
						  Items::singleorderupData($order,$orderdata);
						  
						  
						  $check_email_support = Members::getuserSubscription($vendor['info']->id);
						  if($check_email_support == 1)
						  {
							  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
							  /* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
							  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
										$message->to($to_email, $to_name)
												->subject($template_subject);
										$message->from($admin_email,$admin_name);
									});
						  }
					 
					  }
					  
					  
				   }
				   
				   
				}	
				/* manual payment verification : OFF */
				/* subscription code */
				
				
				
			}
			
			/* referral per sale earning */
				$logged_id = Auth::user()->id;
				$buyer_details = Members::singlebuyerData($logged_id);
				$referral_by = $buyer_details->referral_by;
				$additional_setting = Settings::editAdditional();
				$referral_commission = $additional_setting->per_sale_referral_commission;
				$check_referral = Members::referralCheck($referral_by);
				  if($check_referral != 0)
				  {
					  $referred['display'] = Members::referralUser($referral_by);
					  $wallet_amount = $referred['display']->earnings + $referral_commission;
					  $referral_amount = $referred['display']->referral_amount + $referral_commission;
					  $update_data = array('earnings' => $wallet_amount, 'referral_amount' => $referral_amount);
					  Members::updateReferral($referral_by,$update_data);
				   } 
			/* referral per sale earning */	
			$result_data = array('payment_token' => $payment_token);
			return view('success')->with($result_data);
		}
		else
		{
		   return view('cancel');
		}
			
	}
	
	public function coingate_success()
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
		
				
				$payment_status = 'completed';
				$purchased_token = $ord_token;
				$orderdata = array('payment_token' => $payment_token, 'order_status' => $payment_status);
				$checkoutdata = array('payment_token' => $payment_token, 'payment_status' => $payment_status);
				Items::singleordupdateData($purchased_token,$orderdata);
				Items::singlecheckoutData($purchased_token,$checkoutdata);
				
				$token = $purchased_token;
				$check['display'] = Items::getcheckoutData($token);
				$order_id = $check['display']->order_ids;
				$order_loop = explode(',',$order_id);
				foreach($order_loop as $order)
				{
									
					$getitem['item'] = Items::getorderData($order);
					$token = $getitem['item']->item_token;
					$item['display'] = Items::solditemData($token);
					$item_sold = $item['display']->item_sold + 1;
					$item_token = $token; 
					$data = array('item_sold' => $item_sold);
					Items::updateitemData($item_token,$data);
					/* subscription code */
					$additional['setting'] = Settings::editAdditional();
					$ordered['data'] = Items::singleorderData($order);
					$item_user_id = $ordered['data']->item_user_id;
					$vendor['info'] = Members::singlevendorData($item_user_id);
					$to_name = $vendor['info']->name;
					$to_email = $vendor['info']->email;
					$vendor_amount = $ordered['data']->vendor_amount;
					$admin_name = $setting['setting']->sender_name;
					$admin_email = $setting['setting']->sender_email;
					$currency = $setting['setting']->site_currency;
					$count_mode = Settings::checkuserSubscription($item_user_id);
					/* manual payment verification : OFF */
					if($additional['setting']->subscription_mode == 0)
					{
						if($setting['setting']->payment_verification == 0)
						{
						   
							  
							  $user_id = $ordered['data']->user_id;
							  
							  $total_price = $ordered['data']->total_price;
							  $admin_amount = $ordered['data']->admin_amount;
							  
							  
							  $user_token = $vendor['info']->user_token;
							  
							  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
							  $record = array('earnings' => $vendor_earning);
							  Members::updatepasswordData($user_token, $record);
							  
							  $admin['info'] = Members::adminData();
							  $admin_token = $admin['info']->user_token;
							  $admin_earning = $admin['info']->earnings + $admin_amount;
							  $admin_record = array('earnings' => $admin_earning);
							  Members::updateadminData($admin_token, $admin_record);
							  
							  $orderdata = array('approval_status' => 'payment released to vendor');
							  Items::singleorderupData($order,$orderdata);
						 
						}
						
						$record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
						/* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
						Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
											$message->to($to_email, $to_name)
													->subject($template_subject);
											$message->from($admin_email,$admin_name);
										});
					}	
					else
					{
					   if($count_mode == 1)
					   {
						   
							  $orderdata = array('approval_status' => 'payment released to vendor');
							  Items::singleorderupData($order,$orderdata);
							  $check_email_support = Members::getuserSubscription($vendor['info']->id);
							  if($check_email_support == 1)
							  {
								  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
								  /* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
								  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
											$message->to($to_email, $to_name)
													->subject($template_subject);
											$message->from($admin_email,$admin_name);
										});
							  }
					   }
					   else
					   {
						  
						  if($setting['setting']->payment_verification == 0)
						 {
							  $user_id = $ordered['data']->user_id;
							  
							  $total_price = $ordered['data']->total_price;
							  $admin_amount = $ordered['data']->admin_amount;
							  
							  
							  $user_token = $vendor['info']->user_token;
							  
							  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
							  $record = array('earnings' => $vendor_earning);
							  Members::updatepasswordData($user_token, $record);
							  
							  $admin['info'] = Members::adminData();
							  $admin_token = $admin['info']->user_token;
							  $admin_earning = $admin['info']->earnings + $admin_amount;
							  $admin_record = array('earnings' => $admin_earning);
							  Members::updateadminData($admin_token, $admin_record);
							  
							  $orderdata = array('approval_status' => 'payment released to vendor');
							  Items::singleorderupData($order,$orderdata);
							  
							  
							  $check_email_support = Members::getuserSubscription($vendor['info']->id);
							  if($check_email_support == 1)
							  {
								  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
								  /* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
								  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
											$message->to($to_email, $to_name)
													->subject($template_subject);
											$message->from($admin_email,$admin_name);
										});
							  }
						 
						  }
						  
						  
					   }
					   
					   
					}	
					/* manual payment verification : OFF */
					/* subscription code */
					
					
					
				}
				
				/* referral per sale earning */
					$logged_id = Auth::user()->id;
					$buyer_details = Members::singlebuyerData($logged_id);
					$referral_by = $buyer_details->referral_by;
					$additional_setting = Settings::editAdditional();
					$referral_commission = $additional_setting->per_sale_referral_commission;
					$check_referral = Members::referralCheck($referral_by);
					  if($check_referral != 0)
					  {
						  $referred['display'] = Members::referralUser($referral_by);
						  $wallet_amount = $referred['display']->earnings + $referral_commission;
						  $referral_amount = $referred['display']->referral_amount + $referral_commission;
						  $update_data = array('earnings' => $wallet_amount, 'referral_amount' => $referral_amount);
						  Members::updateReferral($referral_by,$update_data);
					   } 
				/* referral per sale earning */	
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
	} catch (Exception $e) {
		  echo $e->getMessage(); // BadCredentials Not found App by Access-Key
		}
	}
	
	
	public function coingate_callback()
	{
	
	   $ord_token = Cache::get('coingate_id');
	   $purchase_id = Cache::get('purchase_id');
	   $seller_details = Items::singleorderToken($purchase_id);
		 $seller_id = $seller_details->item_user_id;
		 $vendor_details = Members::singlevendorData($seller_id);
	   $sid = 1;
	   $setting['setting'] = Settings::editGeneral($sid);
	   
	   $coingate_mode = $vendor_details->user_coingate_mode;
	   if($coingate_mode == 0)
	   {
	      $coingate_mode_status = "sandbox";
	   }
	   else
	   {
	      $coingate_mode_status = "live";
	   }
	   $coingate_auth_token = $vendor_details->user_coingate_auth_token;
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
		
				
				$payment_status = 'completed';
				$purchased_token = $ord_token;
				$orderdata = array('payment_token' => $payment_token, 'order_status' => $payment_status);
				$checkoutdata = array('payment_token' => $payment_token, 'payment_status' => $payment_status);
				Items::singleordupdateData($purchased_token,$orderdata);
				Items::singlecheckoutData($purchased_token,$checkoutdata);
				
				$token = $purchased_token;
				$check['display'] = Items::getcheckoutData($token);
				$order_id = $check['display']->order_ids;
				$order_loop = explode(',',$order_id);
				foreach($order_loop as $order)
				{
									
					$getitem['item'] = Items::getorderData($order);
					$token = $getitem['item']->item_token;
					$item['display'] = Items::solditemData($token);
					$item_sold = $item['display']->item_sold + 1;
					$item_token = $token; 
					$data = array('item_sold' => $item_sold);
					Items::updateitemData($item_token,$data);
					/* subscription code */
					$additional['setting'] = Settings::editAdditional();
					$ordered['data'] = Items::singleorderData($order);
					$item_user_id = $ordered['data']->item_user_id;
					$vendor['info'] = Members::singlevendorData($item_user_id);
					$to_name = $vendor['info']->name;
					$to_email = $vendor['info']->email;
					$vendor_amount = $ordered['data']->vendor_amount;
					$admin_name = $setting['setting']->sender_name;
					$admin_email = $setting['setting']->sender_email;
					$currency = $setting['setting']->site_currency;
					$count_mode = Settings::checkuserSubscription($item_user_id);
					/* manual payment verification : OFF */
					if($additional['setting']->subscription_mode == 0)
					{
						if($setting['setting']->payment_verification == 0)
						{
						   
							  
							  $user_id = $ordered['data']->user_id;
							  
							  $total_price = $ordered['data']->total_price;
							  $admin_amount = $ordered['data']->admin_amount;
							  
							  
							  $user_token = $vendor['info']->user_token;
							  
							  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
							  $record = array('earnings' => $vendor_earning);
							  Members::updatepasswordData($user_token, $record);
							  
							  $admin['info'] = Members::adminData();
							  $admin_token = $admin['info']->user_token;
							  $admin_earning = $admin['info']->earnings + $admin_amount;
							  $admin_record = array('earnings' => $admin_earning);
							  Members::updateadminData($admin_token, $admin_record);
							  
							  $orderdata = array('approval_status' => 'payment released to vendor');
							  Items::singleorderupData($order,$orderdata);
						 
						}
						
						$record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
						/* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
						Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
											$message->to($to_email, $to_name)
													->subject($template_subject);
											$message->from($admin_email,$admin_name);
										});
					}	
					else
					{
					   if($count_mode == 1)
					   {
						   
							  $orderdata = array('approval_status' => 'payment released to vendor');
							  Items::singleorderupData($order,$orderdata);
							  $check_email_support = Members::getuserSubscription($vendor['info']->id);
							  if($check_email_support == 1)
							  {
								  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
								  /* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
								  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
											$message->to($to_email, $to_name)
													->subject($template_subject);
											$message->from($admin_email,$admin_name);
										});
							  }
					   }
					   else
					   {
						  
						  if($setting['setting']->payment_verification == 0)
						 {
							  $user_id = $ordered['data']->user_id;
							  
							  $total_price = $ordered['data']->total_price;
							  $admin_amount = $ordered['data']->admin_amount;
							  
							  
							  $user_token = $vendor['info']->user_token;
							  
							  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
							  $record = array('earnings' => $vendor_earning);
							  Members::updatepasswordData($user_token, $record);
							  
							  $admin['info'] = Members::adminData();
							  $admin_token = $admin['info']->user_token;
							  $admin_earning = $admin['info']->earnings + $admin_amount;
							  $admin_record = array('earnings' => $admin_earning);
							  Members::updateadminData($admin_token, $admin_record);
							  
							  $orderdata = array('approval_status' => 'payment released to vendor');
							  Items::singleorderupData($order,$orderdata);
							  
							  
							  $check_email_support = Members::getuserSubscription($vendor['info']->id);
							  if($check_email_support == 1)
							  {
								  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
								  /* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
								  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
											$message->to($to_email, $to_name)
													->subject($template_subject);
											$message->from($admin_email,$admin_name);
										});
							  }
						 
						  }
						  
						  
					   }
					   
					   
					}	
					/* manual payment verification : OFF */
					/* subscription code */
					
					
					
				}
				
				/* referral per sale earning */
					$logged_id = Auth::user()->id;
					$buyer_details = Members::singlebuyerData($logged_id);
					$referral_by = $buyer_details->referral_by;
					$additional_setting = Settings::editAdditional();
					$referral_commission = $additional_setting->per_sale_referral_commission;
					$check_referral = Members::referralCheck($referral_by);
					  if($check_referral != 0)
					  {
						  $referred['display'] = Members::referralUser($referral_by);
						  $wallet_amount = $referred['display']->earnings + $referral_commission;
						  $referral_amount = $referred['display']->referral_amount + $referral_commission;
						  $update_data = array('earnings' => $wallet_amount, 'referral_amount' => $referral_amount);
						  Members::updateReferral($referral_by,$update_data);
					   } 
				/* referral per sale earning */	
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
	} catch (Exception $e) {
		  echo $e->getMessage(); // BadCredentials Not found App by Access-Key
		}
	}
	
	
	
	public function iyzico_success($ord_token, Request $request)
	{
	
	  $split = explode("-", $ord_token);
	  $payment_level = $split[0];
	  $purchase_token = $split[1];
	  include(app_path() . '/iyzipay-php/IyzipayBootstrap.php');
	  IyzipayBootstrap::init();
	  $options = new \Iyzipay\Options();
	  if($payment_level == 'admin')
	  {
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
	  }
	  else
	  {
	     $seller_details = Items::singleorderToken($purchase_token);
		 $seller_id = $seller_details->item_user_id;
		 $vendor_details = Members::singlevendorData($seller_id);
		 $iyzico_api_key = $vendor_details->user_iyzico_api_key;
		 $iyzico_secret_key = $vendor_details->user_iyzico_secret_key;
		 $iyzico_mode = $vendor_details->user_iyzico_mode;
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
	  }
	  # create request class
	  $request = new \Iyzipay\Request\RetrieveCheckoutFormRequest();
	  $request->setLocale(\Iyzipay\Model\Locale::TR);
	  $request->setConversationId($purchase_token);
	  $request->setToken($_REQUEST['token']);
      # make request
      $checkoutForm = \Iyzipay\Model\CheckoutForm::retrieve($request, $options);
      # print result
      //echo $checkoutForm->getPaymentStatus();
      //echo $checkoutForm->getPaymentId();
	  

	$sid = 1;
	$setting['setting'] = Settings::editGeneral($sid);
	$payment_token = $checkoutForm->getPaymentId();
	$payment_status = 'completed';
	$purchased_token = $purchase_token;
	$iyzico_status = $checkoutForm->getPaymentStatus();
	if($iyzico_status == 'SUCCESS')
	{
			$orderdata = array('payment_token' => $payment_token, 'order_status' => $payment_status);
			$checkoutdata = array('payment_token' => $payment_token, 'payment_status' => $payment_status);
			Items::singleordupdateData($purchased_token,$orderdata);
			Items::singlecheckoutData($purchased_token,$checkoutdata);
			
			$token = $purchased_token;
			$check['display'] = Items::getcheckoutData($token);
			$order_id = $check['display']->order_ids;
			$order_loop = explode(',',$order_id);
			foreach($order_loop as $order)
			{
								
				$getitem['item'] = Items::getorderData($order);
				$token = $getitem['item']->item_token;
				$item['display'] = Items::solditemData($token);
				$item_sold = $item['display']->item_sold + 1;
				$item_token = $token; 
				$data = array('item_sold' => $item_sold);
				Items::updateitemData($item_token,$data);
				
				$additional['setting'] = Settings::editAdditional();
				$ordered['data'] = Items::singleorderData($order);
				$item_user_id = $ordered['data']->item_user_id;
				$vendor['info'] = Members::singlevendorData($item_user_id);
				$to_name = $vendor['info']->name;
				$to_email = $vendor['info']->email;
				$vendor_amount = $ordered['data']->vendor_amount;
				$admin_name = $setting['setting']->sender_name;
				$admin_email = $setting['setting']->sender_email;
				$currency = $setting['setting']->site_currency;
				$count_mode = Settings::checkuserSubscription($item_user_id);
				
				if($additional['setting']->subscription_mode == 0)
				{
					if($setting['setting']->payment_verification == 0)
					{
					   
						  
						  $user_id = $ordered['data']->user_id;
						  
						  $total_price = $ordered['data']->total_price;
						  $admin_amount = $ordered['data']->admin_amount;
						  
						  
						  $user_token = $vendor['info']->user_token;
						  
						  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
						  $record = array('earnings' => $vendor_earning);
						  Members::updatepasswordData($user_token, $record);
						  
						  $admin['info'] = Members::adminData();
						  $admin_token = $admin['info']->user_token;
						  $admin_earning = $admin['info']->earnings + $admin_amount;
						  $admin_record = array('earnings' => $admin_earning);
						  Members::updateadminData($admin_token, $admin_record);
						  
						  $orderdata = array('approval_status' => 'payment released to vendor');
						  Items::singleorderupData($order,$orderdata);
					 
					}
					
					$record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
					/* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
					Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
										$message->to($to_email, $to_name)
												->subject($template_subject);
										$message->from($admin_email,$admin_name);
									});
				}	
				else
				{
				   if($count_mode == 1)
				   {
					   
						  $orderdata = array('approval_status' => 'payment released to vendor');
						  Items::singleorderupData($order,$orderdata);
						  $check_email_support = Members::getuserSubscription($vendor['info']->id);
						  if($check_email_support == 1)
						  {
							  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
							  /* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */

							  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
										$message->to($to_email, $to_name)
												->subject($template_subject);
										$message->from($admin_email,$admin_name);
									});
						  }
				   }
				   else
				   {
					  
					  if($setting['setting']->payment_verification == 0)
					 {
						  $user_id = $ordered['data']->user_id;
						  
						  $total_price = $ordered['data']->total_price;
						  $admin_amount = $ordered['data']->admin_amount;
						  
						  
						  $user_token = $vendor['info']->user_token;
						  
						  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
						  $record = array('earnings' => $vendor_earning);
						  Members::updatepasswordData($user_token, $record);
						  
						  $admin['info'] = Members::adminData();
						  $admin_token = $admin['info']->user_token;
						  $admin_earning = $admin['info']->earnings + $admin_amount;
						  $admin_record = array('earnings' => $admin_earning);
						  Members::updateadminData($admin_token, $admin_record);
						  
						  $orderdata = array('approval_status' => 'payment released to vendor');
						  Items::singleorderupData($order,$orderdata);
						  
						  
						  $check_email_support = Members::getuserSubscription($vendor['info']->id);
						  if($check_email_support == 1)
						  {
							  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
							  /* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */

							  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
										$message->to($to_email, $to_name)
												->subject($template_subject);
										$message->from($admin_email,$admin_name);
									});
						  }
					 
					  }
					  
					  
				   }
				   
				   
				}	
				
				
				
				
			}
			
			
				$logged_id = Auth::user()->id;
				$buyer_details = Members::singlebuyerData($logged_id);
				$referral_by = $buyer_details->referral_by;
				$additional_setting = Settings::editAdditional();
				$referral_commission = $additional_setting->per_sale_referral_commission;
				$check_referral = Members::referralCheck($referral_by);
				  if($check_referral != 0)
				  {
					  $referred['display'] = Members::referralUser($referral_by);
					  $wallet_amount = $referred['display']->earnings + $referral_commission;
					  $referral_amount = $referred['display']->referral_amount + $referral_commission;
					  $update_data = array('earnings' => $wallet_amount, 'referral_amount' => $referral_amount);
					  Members::updateReferral($referral_by,$update_data);
				   } 
			
				
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
	$sid = 1;
	$setting['setting'] = Settings::editGeneral($sid);
	
	$payment_status = 'completed';
	$purchased_token = $ord_token;
	$orderdata = array( 'order_status' => $payment_status);
	$checkoutdata = array( 'payment_status' => $payment_status);
	Items::singleordupdateData($purchased_token,$orderdata);
	Items::singlecheckoutData($purchased_token,$checkoutdata);
	
	$token = $purchased_token;
	$check['display'] = Items::getcheckoutData($token);
	$order_id = $check['display']->order_ids;
	$order_loop = explode(',',$order_id);
	foreach($order_loop as $order)
	{
						
		$getitem['item'] = Items::getorderData($order);
		$token = $getitem['item']->item_token;
		$item['display'] = Items::solditemData($token);
		$item_sold = $item['display']->item_sold + 1;
		$item_token = $token; 
		$data = array('item_sold' => $item_sold);
		Items::updateitemData($item_token,$data);
		/* subscription code */
		$additional['setting'] = Settings::editAdditional();
		$ordered['data'] = Items::singleorderData($order);
		$item_user_id = $ordered['data']->item_user_id;
		$vendor['info'] = Members::singlevendorData($item_user_id);
		$to_name = $vendor['info']->name;
		$to_email = $vendor['info']->email;
		$vendor_amount = $ordered['data']->vendor_amount;
		$admin_name = $setting['setting']->sender_name;
		$admin_email = $setting['setting']->sender_email;
		$currency = $setting['setting']->site_currency;
		$count_mode = Settings::checkuserSubscription($item_user_id);
		/* manual payment verification : OFF */
		if($additional['setting']->subscription_mode == 0)
		{
			if($setting['setting']->payment_verification == 0)
			{
			   
				  
				  $user_id = $ordered['data']->user_id;
				  
				  $total_price = $ordered['data']->total_price;
				  $admin_amount = $ordered['data']->admin_amount;
				  
				  
				  $user_token = $vendor['info']->user_token;
				  
				  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
				  $record = array('earnings' => $vendor_earning);
				  Members::updatepasswordData($user_token, $record);
				  
				  $admin['info'] = Members::adminData();
				  $admin_token = $admin['info']->user_token;
				  $admin_earning = $admin['info']->earnings + $admin_amount;
				  $admin_record = array('earnings' => $admin_earning);
				  Members::updateadminData($admin_token, $admin_record);
				  
				  $orderdata = array('approval_status' => 'payment released to vendor');
				  Items::singleorderupData($order,$orderdata);
			 
			}
			
			$record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
			/* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */
			Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
								$message->to($to_email, $to_name)
										->subject($template_subject);
								$message->from($admin_email,$admin_name);
							});
		}	
		else
		{
		   if($count_mode == 1)
		   {
		       
			      $orderdata = array('approval_status' => 'payment released to vendor');
				  Items::singleorderupData($order,$orderdata);
				  $check_email_support = Members::getuserSubscription($vendor['info']->id);
				  if($check_email_support == 1)
				  {
					  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
					  /* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */

					  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
								$message->to($to_email, $to_name)
										->subject($template_subject);
								$message->from($admin_email,$admin_name);
							});
				  }
		   }
		   else
		   {
		      
			  if($setting['setting']->payment_verification == 0)
			 {
			      $user_id = $ordered['data']->user_id;
				  
				  $total_price = $ordered['data']->total_price;
				  $admin_amount = $ordered['data']->admin_amount;
				  
				  
				  $user_token = $vendor['info']->user_token;
				  
				  $vendor_earning = $vendor['info']->earnings + $vendor_amount;
				  $record = array('earnings' => $vendor_earning);
				  Members::updatepasswordData($user_token, $record);
				  
				  $admin['info'] = Members::adminData();
				  $admin_token = $admin['info']->user_token;
				  $admin_earning = $admin['info']->earnings + $admin_amount;
				  $admin_record = array('earnings' => $admin_earning);
				  Members::updateadminData($admin_token, $admin_record);
				  
				  $orderdata = array('approval_status' => 'payment released to vendor');
				  Items::singleorderupData($order,$orderdata);
				  
				  
				  $check_email_support = Members::getuserSubscription($vendor['info']->id);
				  if($check_email_support == 1)
				  {
					  $record_data = array('to_name' => $to_name, 'to_email' => $to_email, 'vendor_amount' => $vendor_amount, 'currency' => $currency);
					  /* email template code */
										  $checktemp = EmailTemplate::checkTemplate(18);
										  if($checktemp != 0)
										  {
										  $template_view['mind'] = EmailTemplate::viewTemplate(18);
										  $template_subject = $template_view['mind']->et_subject;
										  }
										  else
										  {
										  $template_subject = "New Payment Approved";
										  }
										  /* email template code */

					  Mail::send('admin.vendor_payment_mail', $record_data , function($message) use ($admin_name, $admin_email, $to_name, $to_email, $template_subject) {
								$message->to($to_email, $to_name)
										->subject($template_subject);
								$message->from($admin_email,$admin_name);
							});
				  }
			 
			  }
			  
		      
		   }
		   
		   
		}	
		/* manual payment verification : OFF */
		/* subscription code */
		
		
		
	}
	
	/* referral per sale earning */
	    $logged_id = Auth::user()->id;
		$buyer_details = Members::singlebuyerData($logged_id);
		$referral_by = $buyer_details->referral_by;
		$additional_setting = Settings::editAdditional();
		$referral_commission = $additional_setting->per_sale_referral_commission;
		$check_referral = Members::referralCheck($referral_by);
		  if($check_referral != 0)
		  {
			  $referred['display'] = Members::referralUser($referral_by);
			  $wallet_amount = $referred['display']->earnings + $referral_commission;
			  $referral_amount = $referred['display']->referral_amount + $referral_commission;
			  $update_data = array('earnings' => $wallet_amount, 'referral_amount' => $referral_amount);
			  Members::updateReferral($referral_by,$update_data);
		   } 
    /* referral per sale earning */
	$payment_token = "";	
	$result_data = array('payment_token' => $payment_token);
	return view('success')->with($result_data);
	
	}
	
	/* checkout */
	
	
	/* purchases */
	
	public function view_purchases()
	{
	  $orderData['item'] = Items::getuserOrders();
	  $order['purchase'] = Items::getpurchaseCheckout();
	  
	  $purchase_sale = 0;
	  foreach($order['purchase'] as $item)
	  {
	    $purchase_sale += $item->total;
	  }
	  	  
	  $drawal['view'] = Items::getdrawalView();
	  $drawal_amount = 0;
	  foreach($drawal['view'] as $drawal)
	  {
	    $drawal_amount += $drawal->wd_amount;
	  }
	  $countdata = Chat::getgroupchatData();
	  return view('purchases',[ 'orderData' => $orderData, 'purchase_sale' => $purchase_sale, 'drawal_amount' => $drawal_amount, 'countdata' => $countdata]); 
	 
	}
	
	
	
	public function purchases_download($token)
	{
	    $today_date = date('Y-m-d');
		$download_count_checks = Members::checkdownloadDate(Auth::user()->id,$today_date);
		if(Auth::user()->user_subscr_download_item > $download_count_checks->user_today_download_limit)
	    {
				$allsettings = Settings::allSettings();
				$logged_id = Auth::user()->id;
				$check_sold = Items::checkSold($token,$logged_id);
				
				
				$downoad_count = Auth::user()->user_today_download_limit + 1;
		        $up_level_download = array('user_today_download_limit' => $downoad_count);
		        Members::updateReferral(Auth::user()->id,$up_level_download);
				
				if($check_sold != 0)
				{
					$item['data'] = Items::solditemData($token);
					if($item['data']->file_type == 'file')
					{
						if($allsettings->site_s3_storage == 1)
						{
						$myFile = Storage::disk('s3')->url($item['data']->item_file);
						$newName = uniqid().time().'.zip';
						header("Cache-Control: public");
						header("Content-Description: File Transfer");
						header("Content-Disposition: attachment; filename=" . basename($newName));
						header("Content-Type: application/octet-stream");
						return readfile($myFile);
						}
						else if($allsettings->site_s3_storage == 2)
						{
						$myFile = Storage::disk('wasabi')->url($item['data']->item_file);
						$newName = uniqid().time().'.zip';
						header("Cache-Control: public");
						header("Content-Description: File Transfer");
						header("Content-Disposition: attachment; filename=" . basename($newName));
						header("Content-Type: application/octet-stream");
						return readfile($myFile);
						}
						else if($allsettings->site_s3_storage == 3)
						{
						$myFile = Storage::disk('dropbox')->url($item['data']->item_file);
						$newName = uniqid().time().'.zip';
						header("Cache-Control: public");
						header("Content-Description: File Transfer");
						header("Content-Disposition: attachment; filename=" . basename($newName));
						header("Content-Type: application/octet-stream");
						return readfile($myFile);
						}
						else if($allsettings->site_s3_storage == 4)
						{
						$filename = $item['data']->item_file;
					    $dir = '/';
					    $recursive = false; 
					    $contents = collect(Storage::disk('google')->listContents($dir, $recursive));
					    $file = $contents
					    ->where('filename', '=', pathinfo($filename, PATHINFO_FILENAME))
					    ->where('extension', '=', pathinfo($filename, PATHINFO_EXTENSION))
					    ->first(); 
					    $display_product_file = Storage::disk('google')->download($file['path']);
			            return $display_product_file;
						}			
						else
						{
						$filename = public_path().'/storage/items/'.$item['data']->item_file;
						$headers = ['Content-Type: application/octet-stream'];
						$new_name = uniqid().time().'.zip';
						return response()->download($filename,$new_name,$headers);
						}
					}
					else
					{
					   return redirect($item['data']->item_file_link);
					}
				}
				else
				{
				return redirect('404');
				}
		}
		else
		{
		   return redirect()->back()->with('error', 'Sorry! Today your download limit reached. please check your profile page');
		}		
	}
	
	
	public function rating_purchases(Request $request)
	{
	  $item_id = $request->input('item_id');
	  $item_token = $request->input('item_token');
	  $user_id = $request->input('user_id');
	  $item_user_id = $request->input('item_user_id');
	  $rating = $request->input('rating');
	  $ord_id = $request->input('ord_id');
	  $rating_reason = $request->input('rating_reason');
	  $item_url = $request->input('item_url');
	  $rating_date = date('Y-m-d H:i:s');
	  
	  $rating_comment = $request->input('rating_comment');
	  $rating_count = Items::checkRating($item_token,$user_id);
	  
	  $savedata = array('or_item_id' => $item_id, 'order_id' => $ord_id, 'or_item_token' => $item_token, 'or_user_id' => $user_id, 'or_item_user_id' => $item_user_id, 'rating' => $rating, 'rating_reason' => $rating_reason, 'rating_comment' => $rating_comment, 'rating_date' => $rating_date); 
	  
	  $updata = array('rating' => $rating, 'rating_reason' => $rating_reason, 'rating_comment' => $rating_comment, 'rating_date' => $rating_date); 
	  
	  if($rating_count == 0)
	  {
	  
	    Items::saveRating($savedata);
		$userto['data'] = Members::singlevendorData($item_user_id);
		$userfrom['data'] = Members::singlebuyerData($user_id);
		$to_email = $userto['data']->email;
		$to_name  = $userto['data']->name;
		$buyer_review = $userto['data']->buyer_review_email;
		if($buyer_review == 1)
		{
		  $from_email = $userfrom['data']->email;
		  $from_name = $userfrom['data']->name;
		  $sid = 1;
		  $setting['setting'] = Settings::editGeneral($sid);
		  $admin_name = $setting['setting']->sender_name;
		  $admin_email = $setting['setting']->sender_email;
		  $check_email_support = Members::getuserSubscription($item_user_id);
		  if($check_email_support == 1)
		  {
			  $record = array('to_name' => $to_name, 'from_name' => $from_name, 'from_email' => $from_email, 'item_url' => $item_url, 'rating' => $rating, 'rating_reason' => $rating_reason, 'rating_comment' => $rating_comment);
			  /* email template code */
	          $checktemp = EmailTemplate::checkTemplate(7);
			  if($checktemp != 0)
			  {
			  $template_view['mind'] = EmailTemplate::viewTemplate(7);
			  $template_subject = $template_view['mind']->et_subject;
			  }
			  else
			  {
			  $template_subject = "Item Rating Received";
			  }
			  /* email template code */
			  Mail::send('rating_mail', $record, function($message) use ($admin_name, $admin_email, $to_email, $from_email, $to_name, $from_name, $template_subject) {
					$message->to($to_email, $to_name)
							->subject($template_subject);
					$message->from($from_email,$from_name);
				});
		   }		
		
	    }
		
		
		 
	  }
	  else
	  {
	     Items::updateRating($item_token,$user_id,$updata);
	  }
	  
	  return redirect('purchases')->with('success','Rating has been updated');
	
	}
	
	/* purchases */
	
	
	/* sales */
	
	public function view_sales()
	{
	  $orderData['item'] = Items::getuserCheckout();
	  
	  $total_sale = 0;
	  foreach($orderData['item'] as $item)
	  {
	    $total_sale += $item->total;
	  }
	  
	  $order['purchase'] = Items::getpurchaseCheckout();
	  
	  $purchase_sale = 0;
	  foreach($order['purchase'] as $item)
	  {
	    $purchase_sale += $item->total;
	  }
	  
	  $credit['order'] = Items::getcreditOrder();
	  
	  $credit_amount = 0;
	  foreach($credit['order'] as $order)
	  {
	    $credit_amount += $order->vendor_amount;
	  }
	  
	  
	  $drawal['view'] = Items::getdrawalView();
	  $drawal_amount = 0;
	  foreach($drawal['view'] as $drawal)
	  {
	    $drawal_amount += $drawal->wd_amount;
	  }
	  
	  return view('sales',[ 'orderData' => $orderData, 'total_sale' => $total_sale, 'purchase_sale' => $purchase_sale, 'credit_amount' => $credit_amount, 'drawal_amount' => $drawal_amount]); 
	 
	}
	
	
	
	public function view_order_details($token)
	{
	  $checkout['view'] = Items::singlecheckoutView($token);
	  $order['view'] = Items::getorderView($token);
	  $countdata = Chat::getgroupchatData();
	  return view('order-details',[ 'checkout' => $checkout, 'order' => $order, 'countdata' => $countdata]);
	}
	
	
	/* sales */
	
	
	
	/* refund */
	
	public function refund_request(Request $request)
	{
	  $item_id = $request->input('item_id');
	  $item_token = $request->input('item_token');
	  $purchased_token = $request->input('purchased_token');
	  $user_id = $request->input('user_id');
	  $item_user_id = $request->input('item_user_id');
	  $ord_id = $request->input('ord_id');
	  $ref_refund_reason = $request->input('refund_reason');
	  $ref_refund_comment = $request->input('refund_comment');
	  $item_url = $request->input('item_url');
	  $refund_count = Items::checkRefund($item_token,$user_id);
	  
	  $savedata = array('ref_item_id' => $item_id, 'ref_order_id' => $ord_id, 'ref_item_token' => $item_token, 'ref_purchased_token' => $purchased_token,  'ref_user_id' => $user_id, 'ref_item_user_id' => $item_user_id, 'ref_refund_reason' => $ref_refund_reason, 'ref_refund_comment' => $ref_refund_comment); 
	  
	  
	  
	  if($refund_count == 0)
	  {
	    Items::saveRefund($savedata);
		$userfrom['data'] = Members::singlebuyerData($user_id);
		$from_email = $userfrom['data']->email;
		$from_name = $userfrom['data']->name;
		$sid = 1;
		$setting['setting'] = Settings::editGeneral($sid);
		$admin_name = $setting['setting']->sender_name;
		$admin_email = $setting['setting']->sender_email;
		$record = array('from_name' => $from_name, 'from_email' => $from_email, 'item_url' => $item_url, 'ref_refund_reason' => $ref_refund_reason, 'ref_refund_comment' => $ref_refund_comment);
		/* email template code */
	          $checktemp = EmailTemplate::checkTemplate(8);
			  if($checktemp != 0)
			  {
			  $template_view['mind'] = EmailTemplate::viewTemplate(8);
			  $template_subject = $template_view['mind']->et_subject;
			  }
			  else
			  {
			  $template_subject = "Refund Request Received";
			  }
			  /* email template code */
		Mail::send('refund_mail', $record, function($message) use ($admin_name, $admin_email, $from_email, $from_name, $template_subject) {
				$message->to($admin_email, $admin_name)
						->subject($template_subject);
				$message->from($from_email,$from_name);
			});
		
		
		
	    return redirect('purchases')->with('success','Your refund request has been sent successfully');
	  }
	  else
	  {
	     
		 return redirect('purchases')->with('error','Sorry! Your refund request already sent');
	  }
	  
	  
	  
	
	}
	
	/* refund */
	
	
	/* destroyed */
	
	public function filedestroy(Request $request)
    {
	   
	   $filename =  $request->get('filename');
	   Items::fileDeleted($filename);
	   
	   $allsettings = Settings::allSettings();
        $watermark = $allsettings->site_watermark;
        $url = URL::to("/");
	    $item_token = $request->get('item_token');
		$logged_id = Auth::user()->id;
	    $additional = Settings::editAdditional();
		if(!empty($item_token))
	 	{
	 		$edit['item'] = Items::edititemData($item_token);
	 		$item_image['item'] = Items::getimagesData($item_token);
	 	}
		$session_id = Session::getId();
		$getdata['first'] = Items::getProdutData($session_id); 
		 $getdata['second'] = Items::getProdutData($session_id);  
		 $getdata['third'] = Items::getProdutZip($session_id);   
		 $getdata['four'] = Items::getProdutData($session_id);   
		 $getdata['five'] = Items::getProdutMP4($session_id);
		 $getdata['six'] = Items::getProdutMP3($session_id);
		 $record = '<div class="row">
		           <div class="col-sm-6"> 
				   <div class="form-group">
                    <label for="site_desc" class="control-label mb-1">Upload Thumbnail (Size : 80x80px) <span class="require">*</span></label><br/>
                    <select name="item_thumbnail2" id="item_thumbnail2" class="form-control">
                    <option value=""></option>';
                    foreach($getdata['first'] as $get)
					{
					   $record .= '<option value="'.$get->item_file_name.'">'.$get->original_file_name.'</option>';
					}
                    $record .= '</select>';
                   if(!empty($item_token))
				   {
						if($edit['item']->item_thumbnail!='')
						{
							$record .='<img src="'.url('/').'/public/storage/items/'.$edit['item']->item_thumbnail.'" alt="'.$edit['item']->item_name.'" width="80">';
						}
						else
						{
							$record .='<img src="'.url('/').'/public/img/no-image.png" alt="'.$edit['item']->item_name.'" width="80">';
						}
                   } 
				   $record .= '</div></div>';
		 $record .= '<div class="col-sm-6">
		            <div class="form-group">
                    <label for="site_desc" class="control-label mb-1">Upload Preview (Size : 361x230px) <span class="require">*</span></label><br/>
                    <select name="item_preview2" id="item_preview2" class="form-control">
                    <option value=""></option>';
                    foreach($getdata['second'] as $get)
					{
					   $record .= '<option value="'.$get->item_file_name.'">'.$get->original_file_name.'</option>';
					}
                    $record .= '</select>';
                   if(!empty($item_token))
				   {
						if($edit['item']->item_preview!='')
						{
							$record .='<img src="'.url('/').'/public/storage/items/'.$edit['item']->item_preview.'" alt="'.$edit['item']->item_name.'" width="80">';
						}
						else
						{
							$record .='<img src="'.url('/').'/public/img/no-image.png" alt="'.$edit['item']->item_name.'" width="80">';
						}
                   } 
				   $record .= '</div></div>';
				   $record .= '<div class="col-sm-6">
				                 <div class="form-group">
                                                <label for="name" class="control-label mb-1">Upload Main File Type <span class="require">*</span></label>
                                               <select name="file_type2" id="file_type2" class="form-control" data-bvalidator="required">
                                                <option value=""></option>';
												if(!empty($item_token))
												{
												   if($edit['item']->file_type == 'file')
												   {
												   $record .= '<option value="file" selected>File</option>
												               <option value="link">Link/URL</option>';
												   }
												   else if($edit['item']->file_type == 'link')
												   {
													 $record .= '<option value="file">File</option>
												                 <option value="link" selected>Link/URL</option>';
												   }
												   else
												   {
												      $record .= '<option value="file">File</option>
												                  <option value="link">Link/URL</option>';
												   }
												}
												else
												{
												    $record .= '<option value="file">File</option>
												            <option value="link">Link/URL</option>';
												}
                                                $record .= '</select></div></div>';
								if(!empty($item_token))
								{
								   if($edit['item']->file_type == 'file')
								   {
								   $record .= '<div class="col-sm-6 display-block" id="main_file"><div class="form-group">';
								   }
								   else if($edit['item']->file_type == 'link')
								   {
								     $record .= '<div class="col-sm-6 display-none" id="main_file"><div class="form-group">';
								   }
								   else
								   {
								      $record .= '<div class="col-sm-6" id="main_file"><div class="form-group">';
								   }
								}
								else
								{			
								$record .= '<div class="col-sm-6" id="main_file"><div class="form-group">';
								}			
				   
                               $record .= '<label for="customer_earnings" class="control-label mb-1">Upload Main File (ZIP - All files) <span class="require">*</span></label>
                                                <select name="item_file2" id="item_file2" class="form-control">
                                                <option value=""></option>';
												foreach($getdata['third'] as $get)
												{
												$record .= '<option value="'.$get->item_file_name.'">'.$get->original_file_name.'</option>';
												}
                                                $record .= '</select>';
											 if(!empty($item_token))
											 {
											     if($edit['item']->item_file!='')
												 {
												    $record .= '<span class="require">'.$edit['item']->item_file.'</span>';
												 }
                                             }
											 $record .= '</div></div>';
											 if(!empty($item_token))
								             {
												   if($edit['item']->file_type == 'file')
												   {
												   $record .= '<div class="col-sm-6 display-none" id="main_link"><div  class="form-group">';
												   }
												   else if($edit['item']->file_type == 'link')
												   {
													 $record .= '<div class="col-sm-6 display-block" id="main_link"><div class="form-group">';
												   }
												   else
												   {
													  $record .= '<div class="col-sm-6" id="main_link"><div class="form-group">';
												   }
												}
												else
												{			
												$record .= '<div class="col-sm-6" id="main_link"><div class="form-group">';
												}
												if(!empty($item_token))
												 {
												   if(!empty($edit['item']->item_file_link))
												   {
												   $item_file_linked = $edit['item']->item_file_link;
												   }
												   else
												   {
													  $item_file_linked = "";
												   }
												 }
												 else
												 {
												  $item_file_linked = "";
												 }
                                                $record .= '<label for="name" class="control-label mb-1">Main File Link/URL <span class="require">*</span></label>
                                                <input type="text" id="item_file_link2" name="item_file_link2" class="form-control" value="'.$item_file_linked.'" data-bvalidator="required,url">
                                              </div>  
                                            </div>';
									 if($additional->show_screenshots == 1)
									 {		
                                     $record .= '<div class="col-sm-6">
									            <div class="form-group">
                                                <label for="customer_earnings" class="control-label mb-1">Upload Screenshots (multiple) (Size : 750x430px)</label>
                                                <select id="item_screenshot2" name="item_screenshot[]" class="form-control" multiple>';
												foreach($getdata['four'] as $get)
												{
												$record .= '<option value="'.$get->item_file_name.'">'.$get->original_file_name.'</option>';
												}
                                                $record .= '</select>';
												if(!empty($item_token))
											   {
											      $alerttext = 'Are you sure you want to delete?';
											      foreach($item_image['item'] as $item)
												  {
												      $record .= '<div class="item-img" style="float:left;margin:10px;"><img src="'.url('/').'/public/storage/items/'.$item->item_image .'" alt="'.$item->item_image.'" width="80">';
													  $record .='<a href="'.url('/edit-item').'/dropimg/'.base64_encode($item->itm_id).'" onClick="return confirm("'.$alerttext.'");" class="drop-icon"><span class="dwg-trash drop-icon"></span></a></div>';
													  
												  }
											   }
                                             $record .= '<div class="clearfix"></div></div></div>';
		                            }
									if($additional->show_video == 1)
									{
									$record .='<div class="col-sm-6">
									            <div class="form-group">
                                                <label for="name" class="control-label mb-1">Preview Type (optional)</label>
                                               <select name="video_preview_type2" id="video_preview_type2" class="form-control">
                                                <option value=""></option>';
												if(!empty($item_token))
												{
												   if($edit['item']->video_preview_type == 'youtube')
												   {
												   $record .= '<option value="youtube" selected>Youtube</option>
                                                               <option value="mp4">MP4</option>
															   <option value="mp3">MP3</option>';
												   }
												   else if($edit['item']->video_preview_type == 'mp4')
												   {
													 $record .= '<option value="youtube">Youtube</option>
                                                                 <option value="mp4" selected>MP4</option>
																 <option value="mp3">MP3</option>';
												   }
												   else if($edit['item']->video_preview_type == 'mp3')
												   {
													 $record .= '<option value="youtube">Youtube</option>
                                                                 <option value="mp4">MP4</option>
																 <option value="mp3" selected>MP3</option>';
												   }
												   else
												   {
												      $record .= '<option value="youtube">Youtube</option>
                                                                 <option value="mp4">MP4</option>
																 <option value="mp3">MP3</option>';
												   }
												}
												else
												{
												    $record .= '<option value="youtube">Youtube</option>
                                                                <option value="mp4">MP4</option>
																<option value="mp3">MP3</option>';
												}
                                                    
                                                $record .= '</select>
                                            </div></div>'; 
											if(!empty($item_token))
								             {
												   if($edit['item']->video_preview_type == 'youtube')
												   {
												   $record .= '<div class="col-sm-6 display-block" id="youtube"><div class="form-group">';
												   }
												   else if($edit['item']->video_preview_type == 'mp4')
												   {
													 $record .= '<div class="col-sm-6 display-none" id="youtube"><div class="form-group">';
												   }
												   else if($edit['item']->video_preview_type == 'mp3')
												   {
													 $record .= '<div class="col-sm-6 display-none" id="youtube"><div class="form-group">';
												   }
												   else
												   {
													  $record .= '<div class="col-sm-6 display-none" id="youtube"><div class="form-group">';
												   }
												}
												else
												{			
												$record .= '<div class="col-sm-6 display-none" id="youtube"><div class="form-group">';
												}		   
									            if(!empty($item_token))
												 {
												   if(!empty($edit['item']->video_url))
												   {
												   $video_linked = $edit['item']->video_url;
												   }
												   else
												   {
													  $video_linked = "";
												   }
												 }
												 else
												 {
												  $video_linked = "";
												 } 
                                                $record .='<label for="name" class="control-label mb-1">Youtube Video URL <span class="require">*</span></label>
                                                
                                                <input type="text" id="video_url2" name="video_url2" class="form-control" value="'.$video_linked.'" data-bvalidator="required">
                                                 <small>(example : https://www.youtube.com/watch?v=C0DPdy98e4c)</small>
                                            </div></div>';
									if(!empty($item_token))
								             {
												   if($edit['item']->video_preview_type == 'youtube')
												   {
												   $record .= '<div class="col-sm-6 display-none" id="mp4"><div  class="form-group">';
												   }
												   else if($edit['item']->video_preview_type == 'mp4')
												   {
													 $record .= '<div class="col-sm-6 display-block" id="mp4"><div class="form-group">';
												   }
												   else if($edit['item']->video_preview_type == 'mp3')
												   {
													 $record .= '<div class="col-sm-6 display-none" id="mp4"><div class="form-group">';
												   }
												   else
												   {
													  $record .= '<div class="col-sm-6 display-none" id="mp4"><div class="form-group">';
												   }
												}
												else
												{			
												$record .= '<div class="col-sm-6 display-none" id="mp4"><div class="form-group">';
												}		
									
                                    $record .='<label for="site_desc" class="control-label mb-1">Upload MP4 Video <span class="require">*</span></label><br/>
                                                <select id="video_file2" name="video_file2" class="form-control">
												<option value=""></option>';
                                                foreach($getdata['five'] as $get)
												{
                                                $record .= '<option value="'.$get->item_file_name.'">'.$get->original_file_name.'</option>';
												}
                                                $record .= '</select>';
												if(!empty($item_token))
											    {
											     if($edit['item']->video_file!='')
												 {
												    $record .= '<span class="require">'.$edit['item']->video_file.'</span>';
												 }
                                               }
									$record .= '</div></div>';		   
									if(!empty($item_token))
								             {
												   if($edit['item']->video_preview_type == 'youtube')
												   {
												   $record .= '<div class="col-sm-6 display-none" id="mp3"><div  class="form-group">';
												   }
												   else if($edit['item']->video_preview_type == 'mp4')
												   {
													 $record .= '<div class="col-sm-6 display-none" id="mp3"><div class="form-group">';
												   }
												   else if($edit['item']->video_preview_type == 'mp3')
												   {
													 $record .= '<div class="col-sm-6 display-block" id="mp3"><div class="form-group">';
												   }
												   else
												   {
													  $record .= '<div class="col-sm-6 display-none" id="mp3"><div class="form-group">';
												   }
												}
												else
												{			
												$record .= '<div class="col-sm-6 display-none" id="mp3"><div class="form-group">';
												}		   
									$record .='<label for="site_desc" class="control-label mb-1">Upload MP3<span class="require">*</span></label><br/>
                                                <select id="audio_file2" name="audio_file2" class="form-control">
												<option value=""></option>';
                                                foreach($getdata['six'] as $get)
												{
                                                $record .= '<option value="'.$get->item_file_name.'">'.$get->original_file_name.'</option>';
												}
                                                $record .= '</select>';
												if(!empty($item_token))
											    {
											     if($edit['item']->audio_file!='')
												 {
												    $record .= '<span class="require">'.$edit['item']->audio_file.'</span>';
												 }
                                               }		   
                                             $record .= '</div></div></div>';				
									}
								    $record .= '<script>
											$("#file_type2").on("change", function() {
												  if ( this.value == "file")
												  {
													$("#main_file").show();
													$("#main_link").hide();
												  }
												  else
												  {
													$("#main_file").hide();
													$("#main_link").show();
												  }
												});	
											$("#video_preview_type2").on("change", function() {
												  if ( this.value == "youtube")
												  
												  {
													 $("#youtube").show();
													 $("#mp4").hide();
													 $("#mp3").hide();
												  }	
												  else if ( this.value == "mp4")
												  {
													 $("#mp4").show();
													 $("#youtube").hide();
													 $("#mp3").hide();
												  }
												  else if ( this.value == "mp3")
												  {
													 $("#mp3").show();
													 $("#youtube").hide();
													 $("#mp4").hide();
												  }
												  else
												  {
													  $("#mp4").hide();
													  $("#youtube").hide();
													  $("#mp3").hide();
												  }
												  
												 });
											
											</script>';
		 return response()->json(['success' => true, 'record' => $record]);

		 
	
	}
	
	/* destroyed */
	
	public function file_download($token)
	{
	    
		    $allsettings = Settings::allSettings();
			$logged_id = Auth::user()->id;
			$checkif = Items::checkInSeller($token,$logged_id);
			if($checkif != 0)
			{	
				$item['data'] = Items::selleritemData($token,$logged_id);
				if($item['data']->file_type == 'file')
				{
						if($allsettings->site_s3_storage == 1)
						{
						$myFile = Storage::disk('s3')->url($item['data']->item_file);
						$newName = uniqid().time().'.zip';
						header("Cache-Control: public");
						header("Content-Description: File Transfer");
						header("Content-Disposition: attachment; filename=" . basename($newName));
						header("Content-Type: application/octet-stream");
						return readfile($myFile);
						}
						else if($allsettings->site_s3_storage == 2)
						{
						$myFile = Storage::disk('wasabi')->url($item['data']->item_file);
						$newName = uniqid().time().'.zip';
						header("Cache-Control: public");
						header("Content-Description: File Transfer");
						header("Content-Disposition: attachment; filename=" . basename($newName));
						header("Content-Type: application/octet-stream");
						return readfile($myFile);
						}	
						else if($allsettings->site_s3_storage == 3)
						{
						$myFile = Storage::disk('dropbox')->url($item['data']->item_file);
						$newName = uniqid().time().'.zip';
						header("Cache-Control: public");
						header("Content-Description: File Transfer");
						header("Content-Disposition: attachment; filename=" . basename($newName));
						header("Content-Type: application/octet-stream");
						return readfile($myFile);
						}
						else if($allsettings->site_s3_storage == 4)
						{
						$filename = $item['data']->item_file;
					    $dir = '/';
					    $recursive = false; 
					    $contents = collect(Storage::disk('google')->listContents($dir, $recursive));
					    $file = $contents
					    ->where('filename', '=', pathinfo($filename, PATHINFO_FILENAME))
					    ->where('extension', '=', pathinfo($filename, PATHINFO_EXTENSION))
					    ->first(); 
					    $display_product_file = Storage::disk('google')->download($file['path']);
			            return $display_product_file;
						}			
						else
						{
						$filename = public_path().'/storage/items/'.$item['data']->item_file;
						$headers = ['Content-Type: application/octet-stream'];
						$new_name = uniqid().time().'.zip';
						return response()->download($filename,$new_name,$headers);
						}
			 }
			 else
			 {
				return redirect($item['data']->item_file_link);
			 }
		}
		else
		{
		    return redirect('404');
		}		
				
	}
	
	
	public function view_deposit()
	{
	  $sid = 1;
	  $setting['setting'] = Settings::editGeneral($sid);
	  $get_payment = explode(',', $setting['setting']->payment_option);
	  $deposit['view'] = Deposit::viewdepositData();
	  $stripe_mode = $setting['setting']->stripe_mode;
	  if($stripe_mode == 0)
	  {
		$stripe_publish = $setting['setting']->test_publish_key;
		$stripe_secret = $setting['setting']->test_secret_key;
	  }
	  else
	  {
		 $stripe_publish = $setting['setting']->live_publish_key;
		 $stripe_secret = $setting['setting']->live_secret_key;
	  }
	  return view('deposit',['deposit' => $deposit, 'get_payment' => $get_payment, 'stripe_publish' => $stripe_publish]);
	}
	
	
	public function show_deposit(Request $request)
	{
	
	   $sid = 1;
	   $setting['setting'] = Settings::editGeneral($sid);
	   $additional_view = Settings::editAdditional();
	   $get_payment = explode(',', $setting['setting']->payment_option);
	   $totaldata = array('get_payment' => $get_payment);
	   $order_firstname = $request->input('order_firstname');
	   $order_email = $request->input('order_email');
	   $token = $request->input('token');
	   $purchase_token = rand(111111,999999);
	   $user_id = Auth::user()->id;
	   $final_amount = base64_decode($request->input('amount'));
	   $user_email = Auth::user()->email;
	   $user_token = Auth::user()->user_token;
	   $payment_method = $request->input('payment_method');
	   $website_url = $request->input('website_url');
	   $payment_date = date('Y-m-d');
	   $reference = $request->input('reference');
	   
	   $dataview = array('deposit_amount' => $final_amount, 'deposit_type' => $payment_method); 
	   Settings::updateAdditionData($dataview);
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
	   $success_url = $website_url.'/deposit-success';
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
	   
	   
	   
	   /* settings */
	   
	   
	   $MERCHANT_KEY = $additional_view->payu_merchant_key; // add your id
	   $SALT = $additional_view->payu_salt_key; // add your id
	   if($additional_view->payumoney_mode == 1)
	   {
		   $PAYU_BASE_URL = "https://secure.payu.in";
	   }
	   else
	   {
		  $PAYU_BASE_URL = "https://test.payu.in";
	   }
		/* flutterwave */
	   $flutterwave_public_key = $additional_view->flutterwave_public_key;
	   $flutterwave_secret_key = $additional_view->flutterwave_secret_key;
	   /* flutterwave */
	   /* coingate */
	   $coingate_mode = $additional_view->coingate_mode;
	   if($coingate_mode == 0)
	   {
	       $coingate_mode_status = "sandbox";
	   }
	   else
	   {
	       $coingate_mode_status = "live";
	   }
	   $coingate_auth_token = $additional_view->coingate_auth_token;
	   $coingate_callback = $website_url.'/coingate';
	   /* coingate */
	   $item_names_data = "Deposit";
	   if($payment_method == 'paypal')
	   {
		     
			 $paypal = '<form method="post" id="paypal_form" action="'.$paypal_url.'">
			  <input type="hidden" value="_xclick" name="cmd">
			  <input type="hidden" value="'.$paypal_email.'" name="business">
			  <input type="hidden" value="'.$item_names_data.'" name="item_name">
			  <input type="hidden" value="'.$purchase_token.'" name="item_number">
			  <input type="hidden" value="'.$final_amount.'" name="amount">
			  <input type="hidden" value="'.$site_currency.'" name="currency_code">
			  <input type="hidden" value="'.$success_url.'" name="return">
			  <input type="hidden" value="'.$cancel_url.'" name="cancel_return">
			  		  
			</form>';
			$paypal .= '<script>window.paypal_form.submit();</script>';
			echo $paypal;
					 
			 
		  }
		  /* stripe code */
		  else if($payment_method == 'stripe')
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
			 
				
				$item_name = $item_names_data;
				$item_price = $final_amount * 100;
				$currency = $site_currency;
				$order_id = $purchase_token;
			 
				
				$charge = \Stripe\Charge::create(array(
					'customer' => $customer->id,
					'amount'   => $item_price,
					'currency' => $currency,
					'description' => $item_name,
					'metadata' => array(
						'order_id' => $order_id
					)
				));
			 
				
				$chargeResponse = $charge->jsonSerialize();
			 
				
				if($chargeResponse['paid'] == 1 && $chargeResponse['captured'] == 1) 
				{
			 
					
										
					$payment_token = $chargeResponse['balance_transaction'];
					$additional_view = Settings::editAdditional();
					$amount = $additional_view->deposit_amount;
					$payment_type = $additional_view->deposit_type;
					$user_token = Auth::user()->user_token;
					$buyer_details = Members::editData($user_token);
					$wallet = $buyer_details->earnings + $amount;
					$data = array('earnings' => $wallet);
					Members::updateData($user_token,$data);
					$currency = $setting['setting']->site_currency;
					$buyer['info'] = Members::singlevendorData(Auth::user()->id);	
					$buyer_name = $buyer['info']->name;
					$buyer_email = $buyer['info']->email;
					$payment_date = date('Y-m-d');
					$admin_name = $setting['setting']->sender_name;
					$admin_email = $setting['setting']->sender_email;
					$buyer_data = array('buyer_name' => $buyer_name, 'buyer_email' => $buyer_email, 'currency' => $currency, 'amount' => $amount,  'payment_token' => $payment_token, 'payment_date' => $payment_date, 'payment_type' => $payment_type);
					/* email template code */
	          		$checktemp = EmailTemplate::checkTemplate(19);
					if($checktemp != 0)
					{
					$template_view['mind'] = EmailTemplate::viewTemplate(19);
					$template_subject = $template_view['mind']->et_subject;
					}
					else
					{
					$template_subject = "New Deposit Details";
					}
			  	    /* email template code */
					Mail::send('deposit_mail', $buyer_data , function($message) use ($admin_name, $admin_email, $buyer_name, $buyer_email, $template_subject) {
						$message->to($buyer_email, $buyer_name)
							->subject($template_subject);
						$message->from($admin_email,$admin_name);
					});
						
					$clean = array('deposit_amount' => '', 'deposit_type' => '');
					Settings::updateAdditionData($clean);
					$data_record = array('payment_token' => $payment_token);
					return view('success')->with($data_record);
					
					
				}
		     
		  
		  }
		  /* stripe code */

	   return view('deposit')->with($totaldata);
	
	
	}
	
	public function deposit_success(Request $request)
	{
	$sid = 1;
	$setting['setting'] = Settings::editGeneral($sid);
	$payment_token = $request->input('tx');
	$additional_view = Settings::editAdditional();
	$amount = $additional_view->deposit_amount;
	$payment_type = $additional_view->deposit_type;
	$user_token = Auth::user()->user_token;
	$buyer_details = Members::editData($user_token);
	$wallet = $buyer_details->earnings + $amount;
	$data = array('earnings' => $wallet);
	Members::updateData($user_token,$data);
	$currency = $setting['setting']->site_currency;
	$buyer['info'] = Members::singlevendorData(Auth::user()->id);	
	$buyer_name = $buyer['info']->name;
	$buyer_email = $buyer['info']->email;
	$payment_date = date('Y-m-d');
	$admin_name = $setting['setting']->sender_name;
	$admin_email = $setting['setting']->sender_email;
	$buyer_data = array('buyer_name' => $buyer_name, 'buyer_email' => $buyer_email, 'currency' => $currency, 'amount' => $amount,  'payment_token' => $payment_token, 'payment_date' => $payment_date, 'payment_type' => $payment_type);
	/* email template code */
	$checktemp = EmailTemplate::checkTemplate(19);
	if($checktemp != 0)
	{
		$template_view['mind'] = EmailTemplate::viewTemplate(19);
		$template_subject = $template_view['mind']->et_subject;
	}
	else
	{
		$template_subject = "New Deposit Details";
	}
	/* email template code */
	Mail::send('deposit_mail', $buyer_data , function($message) use ($admin_name, $admin_email, $buyer_name, $buyer_email, $template_subject) {
		$message->to($buyer_email, $buyer_name)
		->subject($template_subject);
		$message->from($admin_email,$admin_name);
	});
	$clean = array('deposit_amount' => '', 'deposit_type' => '');
	Settings::updateAdditionData($clean);
	$result_data = array('payment_token' => $payment_token);
	return view('success')->with($result_data);
	
	}
	
	
	
	
}
