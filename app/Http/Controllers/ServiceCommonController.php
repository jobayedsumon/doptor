<?php

namespace Fickrr\Http\Controllers;

use Fickrr\Models\Service;
use Illuminate\Http\Request;
use Fickrr\Models\Members;
use Fickrr\Models\Settings;
use Fickrr\Models\Items;
use Fickrr\Models\Blog;
use Fickrr\Models\Category;
use Fickrr\Models\Comment;
use Fickrr\Models\Pages;
use Fickrr\Models\Attribute;
use Fickrr\Models\SubCategory;
use Fickrr\Models\Subscription;
use Fickrr\Models\EmailTemplate;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Str;
use Mail;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;
use Auth;
use Illuminate\Validation\Rule;
use URL;
use Illuminate\Support\Facades\Cookie;
use Redirect;
use Storage;
use Cache;
use Session;

class ServiceCommonController extends Controller
{
    public function homepage()
    {

        $today = date("Y-m-d");
        $sid = 1;
        $setting['setting'] = Settings::editGeneral($sid);
        $additional['settings'] = Settings::editAdditional();
        $blog['data'] = Blog::homeblogData();
        $comments = Blog::getgroupcommentData();
        $review['data'] = Items::homereviewsData();
        $totalmembers = Members::getmemberData();
        $totalsales = Items::totalsaleitemCount();
        $totalfiles = Items::totalfileItems();
        $total_services = Items::totalfileItems();
        $total['earning'] = Items::totalearningCount();
        $categories = Category::with('Subcategory')->where('category_type', 'service')->get();
        $maincategory_two['view'] = Category::where('category_type', 'service')->get();
        View::share('maincategory_two', $maincategory_two);
        if($additional['settings']->subscription_mode == 1)
        {
        $featured['items'] = Items::with('ratings')->leftjoin('users', 'users.id', '=', 'items.user_id')->where('users.user_subscr_date','>=',$today)->where('items.item_status','=',1)->where('items.item_featured','=','yes')->where('items.drop_status','=','no')->orderBy('items.item_id', 'desc')->take($setting['setting']->home_featured_items)->get();
        $popular['items'] = Items::with('ratings')->leftjoin('users', 'users.id', '=', 'items.user_id')->where('users.user_subscr_date','>=',$today)->where('items.item_status','=',1)->where('items.drop_status','=','no')->orderBy('items.item_views', 'desc')->take($setting['setting']->home_popular_items)->get();
        $flash['items'] = Items::with('ratings')->leftjoin('users', 'users.id', '=', 'items.user_id')->where('users.user_subscr_date','>=',$today)->where('items.item_status','=',1)->where('items.drop_status','=','no')->where('items.item_flash','=',1)->orderBy('items.item_id', 'desc')->take($setting['setting']->home_flash_items)->get();
        /*$free['items'] = Items::with('ratings')->leftjoin('users', 'users.id', '=', 'items.user_id')->where('users.user_subscr_date','>=',$today)->where('items.item_status','=',1)->where('items.drop_status','=','no')->where('items.free_download','=',1)->orderBy('items.item_id', 'desc')->take($setting['setting']->home_free_items)->get();*/
        $newest['items'] = Items::with('ratings')->leftjoin('users', 'users.id', '=', 'items.user_id')->where('users.user_subscr_date','>=',$today)->where('items.item_status','=',1)->where('items.drop_status','=','no')->orderBy('items.item_id', 'desc')->take($setting['setting']->site_newest_files)->get();
        }
        else
        {
        $featured['items'] = Items::with('ratings')->leftjoin('users', 'users.id', '=', 'items.user_id')->where('items.item_status','=',1)->where('items.item_featured','=','yes')->where('items.drop_status','=','no')->orderBy('items.item_id', 'desc')->take($setting['setting']->home_featured_items)->get();
        $popular['items'] = Items::with('ratings')->leftjoin('users', 'users.id', '=', 'items.user_id')->where('items.item_status','=',1)->where('items.drop_status','=','no')->orderBy('items.item_views', 'desc')->take($setting['setting']->home_popular_items)->get();
        $flash['items'] = Items::with('ratings')->leftjoin('users', 'users.id', '=', 'items.user_id')->where('items.item_status','=',1)->where('items.drop_status','=','no')->where('items.item_flash','=',1)->orderBy('items.item_id', 'desc')->take($setting['setting']->home_flash_items)->get();
        
        $newest['items'] = Items::with('ratings')->leftjoin('users', 'users.id', '=', 'items.user_id')->where('items.item_status','=',1)->where('items.drop_status','=','no')->orderBy('items.item_id', 'desc')->take($setting['setting']->site_newest_files)->get();
        }
        $free['items'] = Items::with('ratings')->leftjoin('users', 'users.id', '=', 'items.user_id')->where('items.item_status','=',1)->where('items.drop_status','=','no')->where('items.free_download','=',1)->orderBy('items.item_id', 'desc')->take($setting['setting']->home_free_items)->get();
        $totalearning = 0;
        foreach($total['earning'] as $earning)
        {
          $totalearning += $earning->total_price;
        } 
        
        
        $data = array('blog' => $blog, 'categories' => $categories, 'comments' => $comments, 'review' => $review, 'totalmembers' => $totalmembers, 'totalsales' => $totalsales, 'totalfiles' => $totalfiles,'total_services' => $total_services, 'totalearning' => $totalearning, 'featured' => $featured, 'newest' => $newest, 'free' => $free, 'popular' => $popular, 'flash' => $flash);
       //SitemapGenerator::create(URL::to('/'))->writeToFile('sitemap.xml');

       return view('service.homepage')->with($data);
    }

    public function create_service()
    {

        $encrypter = app('Illuminate\Contracts\Encryption\Encrypter');
        $type_id   = 1;
        $itemWell['type'] = Items::gettypeItem();
        $attribute['fields'] = Attribute::selectedAttribute($type_id);
        $type_name = Items::viewItemtype($type_id);
        /* get user storge size */
        $occupy_size = 0;
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

        $service_categories = Category::where('category_type', 'service')->get();

        /* get user storge size */
        $session_id = Session::getId();
        $getdata1['first'] = Items::getProdutData($session_id);
        $getdata2['second'] = Items::getProdutData($session_id);
        $getdata3['third'] = Items::getProdutZip($session_id);
        $getdata4['four'] = Items::getProdutData($session_id);
        $getdata5['five'] = Items::getProdutMP4($session_id);
        $getdata6['six'] = Items::getProdutMP3($session_id);
        $item_token = "";
        $data = array('itemWell' => $itemWell,
            'attribute' => $attribute,
            'type_id' => $type_id,
            'type_name' => $type_name,
            'available_storage' => $available_storage,
            'getdata1' => $getdata1,
            'getdata2' => $getdata2,
            'getdata3' => $getdata3,
            'getdata4' => $getdata4,
            'getdata5' => $getdata5,
            'getdata6' => $getdata6,
            'section' => 'overview',
            'item_token' => $item_token);
        return view('service.create-service', compact('service_categories'))->with($data);
    }

    public function edit_service($slug)
    {

        $service = Service::where('slug', $slug)->first();

        if (!$service) {
            return view('404');
        } else {
            $encrypter = app('Illuminate\Contracts\Encryption\Encrypter');
            $type_id = 1;
            $itemWell['type'] = Items::gettypeItem();
            $attribute['fields'] = Attribute::selectedAttribute($type_id);
            $type_name = Items::viewItemtype($type_id);
            /* get user storge size */
            $occupy_size = 0;
            $additional_settings = Settings::editAdditional();
            if ($additional_settings->subscription_mode == 1) {
                if (Auth::user()->user_subscr_space_level == 'limited') {

                    if (Auth::user()->user_subscr_space_type == 'MB') {
                        $maxsize = $this->changeType(Auth::user()->user_subscr_space, 'MB', 'KB');
                    } elseif (Auth::user()->user_subscr_space_type == 'GB') {
                        $maxsize = $this->changeType(Auth::user()->user_subscr_space, 'GB', 'KB');
                    } else {
                        $maxsize = $this->changeType(Auth::user()->user_subscr_space, 'TB', 'KB');
                    }
                    if ($occupy_size < $maxsize) {
                        $overall_size = $maxsize - $occupy_size;
                        $round_size = round($overall_size);
                        $balance_storage = $this->changeType($round_size, 'KB', 'MB');
                        $available_storage = round($balance_storage); // mb
                    } else {
                        $overall_size = $maxsize;
                        $round_size = round($overall_size);
                        $balance_storage = $this->changeType($round_size, 'KB', 'MB');
                        $available_storage = round($balance_storage); // mb
                    }
                } else {
                    $available_storage = 100000; // mb
                }
            } else {
                $available_storage = 100000; // mb
            }

            $service_categories = Category::where('category_type', 'service')->get();

            /* get user storge size */
            $session_id = Session::getId();
            $getdata1['first'] = Items::getProdutData($session_id);
            $getdata2['second'] = Items::getProdutData($session_id);
            $getdata3['third'] = Items::getProdutZip($session_id);
            $getdata4['four'] = Items::getProdutData($session_id);
            $getdata5['five'] = Items::getProdutMP4($session_id);
            $getdata6['six'] = Items::getProdutMP3($session_id);
            $item_token = "";
            $data = array('itemWell' => $itemWell,
                'attribute' => $attribute,
                'type_id' => $type_id,
                'type_name' => $type_name,
                'available_storage' => $available_storage,
                'getdata1' => $getdata1,
                'getdata2' => $getdata2,
                'getdata3' => $getdata3,
                'getdata4' => $getdata4,
                'getdata5' => $getdata5,
                'getdata6' => $getdata6,
                'item_token' => $item_token);
            return view('service.edit-service', compact('service_categories', 'service'))->with($data);
        }
    }

    public function get_subcategories($id)
    {
        $subcategories = SubCategory::where('cat_id', $id)->get();
        return response()->json($subcategories);
    }

    public function create_new_service(Request $request)
    {
        $service = Service::create([
            'title' => $request->title,
           'slug' => Str::slug($request->title),
           'category_id' => $request->category_id,
           'subcategory_id' => $request->subcategory_id,
            'user_id' => auth()->id(),
            'tags' => $request->tags
        ]);

        return redirect()->route('service.edit', $service->slug)->with('section', 'pricing');
    }

    public function update_service(Request $request, $slug)
    {
        $data = [];
        if($request->is_fixed_price) {
            $data['is_fixed_price'] = 1;
        }
        if($request->service_price) {
            $data['service_price'] = $request->service_price;
        }
        if($request->service_price) {
            $data['service_revision'] = $request->service_revision;
        }
        if($request->service_price) {
            $data['delivery_time'] = $request->delivery_time;
        }

        if($request->description) {
            $data['description'] = $request->description;
        }

        if($request->requirements) {
            $data['requirements'] = $request->requirements;
        }

        if($video = $request->file('video')) {
            $name = now().$video->getClientOriginalName();
            $video->move(public_path('videos'), $name);
            $data['video'] = $name;
        }

        if($audio = $request->file('audio')) {
            $name = now().$audio->getClientOriginalName();
            $audio->move(public_path('audios'), $name);
            $data['audio'] = $name;
        }

        if($images = $request->file('images')) {
            $imagesNames = [];
            foreach($images as $image) {
                $name = now().$image->getClientOriginalName();
                $image->move(public_path('images'), $name);
                $imagesNames[] = $name;
            }
            $data['images'] = implode('|', $imagesNames);
        }

        $service = Service::where('slug', $slug)->first();
        $service->update($data);

        if($request->section) {
            return redirect()->route('service.edit', $service->slug)->with('section', $request->section);
        } else {
            return redirect(URL::to('/manage-services'));
        }


    }

}
