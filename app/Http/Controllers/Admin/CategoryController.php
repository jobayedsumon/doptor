<?php

namespace Fickrr\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Fickrr\Http\Controllers\Controller;
use Session;
use Fickrr\Models\Category;
use Fickrr\Models\Settings;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;

class CategoryController extends Controller
{
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
	
	public function non_seo_slug($string)
	{
	    $string=str_replace(" ","-",$string);
		$string=strtolower($string);
		return $string;	
    
	}
	
	/* category */
	
	public function category()
    {
        
		
		$categoryData['category'] = Category::getcategoryData();
		return view('admin.category',[ 'categoryData' => $categoryData]);
    }
    
	
	public function add_category()
	{
	   
	   return view('admin.add-category');
	}
	
	public function category_slug($text)
	{
    // replace non letter or digits by -
    $text = str_replace(' ', '-', $text);

    return $text;
    }

	
	/*public function category_slug($string){
		   $slug=preg_replace('/[^A-Za-z0-9-]+/', '-', $string);
		   return $slug;
    }*/
	
	
	
	public function save_category(Request $request)
	{
 
    
         $category_name = $request->input('category_name');
         $category_type = $request->input('category_type');
		 $additional['settings'] = Settings::editAdditional();
	     if($additional['settings']->site_url_rewrite == 1)
		 {
		   $category_slug = $this->seo_slug($category_name);
		 }
		 else
		 {
		   $category_slug = $this->non_seo_slug($category_name);
		 }
		 $category_status = $request->input('category_status');
		 if(!empty($request->input('menu_order')))
		 {
		 $menu_order = $request->input('menu_order');
		 }
		 else
		 {
		   $menu_order = 0;
		 }
		 
		 
         
		 $request->validate([
							'category_name' => 'required',
							'category_type' => 'required',
							'category_status' => 'required',
							
         ]);
		 $rules = array(
				'category_name' => ['required', 'max:255', Rule::unique('category') -> where(function($sql){ $sql->where('drop_status','=','no');})],
				
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
		
		
		 
		$data = array('category_name' => $category_name, 'category_type' => $category_type, 'category_slug' => $category_slug, 'category_status' => $category_status, 'menu_order' => $menu_order);
        Category::insertcategoryData($data);
		return redirect('/admin/category')->with('success', 'Insert successfully.');
            
            
 
       } 
     
    
  }
  
  
  
  public function delete_category($cat_id){

      $data = array('drop_status'=>'yes');
	  
        
      Category::deleteCategorydata($cat_id,$data);
	  
	  return redirect()->back()->with('success', 'Delete successfully.');

    
  }
  
  
  public function edit_category($cat_id)
	{
	   
	   $edit['category'] = Category::editcategoryData($cat_id);
	   return view('admin.edit-category', [ 'edit' => $edit, 'cat_id' => $cat_id]);
	}
	
	
	
	public function update_category(Request $request)
	{
	
	    $category_name = $request->input('category_name');
        $category_type = $request->input('category_type');
		 $additional['settings'] = Settings::editAdditional();
	     if($additional['settings']->site_url_rewrite == 1)
		 {
		   $category_slug = $this->seo_slug($category_name);
		 }
		 else
		 {
		   $category_slug = $this->non_seo_slug($category_name);
		 }
		 $category_status = $request->input('category_status');
		 if(!empty($request->input('menu_order')))
		 {
		 $menu_order = $request->input('menu_order');
		 }
		 else
		 {
		   $menu_order = 0;
		 }
		 
         $cat_id = $request->input('cat_id');
		 $request->validate([
							'category_name' => 'required',
							'category_type' => 'required',
							'category_status' => 'required',
							
         ]);
		 $rules = array(
				'category_name' => ['required', 'max:255', Rule::unique('category') ->ignore($cat_id, 'cat_id') -> where(function($sql){ $sql->where('drop_status','=','no');})],
				
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
		
		
		$data = array('category_name' => $category_name, 'category_type' => $category_type, 'category_slug' => $category_slug, 'category_status' => $category_status, 'menu_order' => $menu_order);
        Category::updatecategoryData($cat_id, $data);
        return redirect('/admin/category')->with('success', 'Update successfully.');	
            
 
       } 
     
       
	
	
	}
	
	
	/* category */
	
	
	/* subcategory */
	
	
	public function subcategory()
    {
        
		
		$subcategoryData['subcategory'] = Category::getsubcategoryData();
		return view('admin.sub-category',[ 'subcategoryData' => $subcategoryData]);
    }
	
	
	public function add_subcategory()
	{
	   $categoryData['category'] = Category::allcategoryData();
	   return view('admin.add-subcategory',[ 'categoryData' => $categoryData]);
	}
	
	
	
	public function save_subcategory(Request $request)
	{
 
    
         $cat_id = $request->input('cat_id');
		 $subcategory_name = $request->input('subcategory_name');
		 $subcategory_type = $request->input('subcategory_type');
		 $additional['settings'] = Settings::editAdditional();
	     if($additional['settings']->site_url_rewrite == 1)
		 {
		   $subcategory_slug = $this->seo_slug($subcategory_name);
		 }
		 else
		 {
		   $subcategory_slug = $this->non_seo_slug($subcategory_name);
		 }
		 $subcategory_status = $request->input('subcategory_status');
		 $subcategory_order = $request->input('subcategory_order');
		 
		 
         
		 $request->validate([
							'cat_id' => 'required',
							'subcategory_name' => 'required',
							'subcategory_type' => 'required',
							'subcategory_status' => 'required',
							
         ]);
		 $rules = array(
				/*'subcategory_name' => ['required', 'max:255', Rule::unique('subcategory') -> where(function($sql){ $sql->where('drop_status','=','no');})],*/
				
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
		
		
		 
		$data = array('cat_id' => $cat_id, 'subcategory_name' => $subcategory_name, 'subcategory_type' => $subcategory_type, 'subcategory_slug' => $subcategory_slug, 'subcategory_status' => $subcategory_status, 'subcategory_order' => $subcategory_order);
        Category::insertsubcategoryData($data);
        return redirect('/admin/sub-category')->with('success', 'Insert successfully.');   
 
       } 
     
    
  }
  
  
	public function delete_subcategory($subcat_id){

      $data = array('drop_status'=>'yes');
	  
        
      Category::deleteSubcategorydata($subcat_id,$data);
	  
	  return redirect()->back()->with('success', 'Delete successfully.');

    
  }
  
  
  
  public function edit_subcategory($subcat_id)
	{
	   $categoryData['category'] = Category::allcategoryData();
	   $edit['subcategory'] = Category::editsubcategoryData($subcat_id);
	   return view('admin.edit-subcategory', [ 'edit' => $edit, 'subcat_id' => $subcat_id, 'categoryData' => $categoryData]);
	}
	
	
	
	public function update_subcategory(Request $request)
	{
	
	    $cat_id = $request->input('cat_id');
		 $subcategory_name = $request->input('subcategory_name');
		 $subcategory_type = $request->input('subcategory_type');
		 $additional['settings'] = Settings::editAdditional();
	     if($additional['settings']->site_url_rewrite == 1)
		 {
		   $subcategory_slug = $this->seo_slug($subcategory_name);
		 }
		 else
		 {
		   $subcategory_slug = $this->non_seo_slug($subcategory_name);
		 }
		 $subcategory_status = $request->input('subcategory_status');
		 $subcategory_order = $request->input('subcategory_order');
		 
		 $subcat_id = $request->input('subcat_id');
         
		 $request->validate([
							'cat_id' => 'required',
							'subcategory_name' => 'required',
							'subcategory_type' => 'required',
							'subcategory_status' => 'required',
							
         ]);
		 $rules = array(
				/*'subcategory_name' => ['required', 'max:255', Rule::unique('subcategory') ->ignore($subcat_id, 'subcat_id') -> where(function($sql){ $sql->where('drop_status','=','no');})],*/
				
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
		
		$data = array('cat_id' => $cat_id, 'subcategory_name' => $subcategory_name, 'subcategory_type' => $subcategory_type, 'subcategory_slug' => $subcategory_slug, 'subcategory_status' => $subcategory_status, 'subcategory_order' => $subcategory_order);
		
        Category::updatesubcategoryData($subcat_id, $data);
        return redirect('/admin/sub-category')->with('success', 'Update successfully.');    
 
       } 
     
       
	
	
	}
	
  
	/* subcategory */
	
	
}
