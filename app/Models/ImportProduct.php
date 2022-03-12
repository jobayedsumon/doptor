<?php

namespace Fickrr\Models;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\File;
use Auth;
use Fickrr\Models\Import;
use Fickrr\Models\Items;
use Maatwebsite\Excel\Concerns\ToModel;

class ImportProduct implements ToModel
{
	
   public function model(array $row)
    {
	     
	    
           $data = Items::findProduct($row[2]);
		   if($row[9] == ""){ $item_file = ""; } else { $item_file = $row[9]; }
		   if($row[13] == ""){ $item_category_parent = ""; } else { $item_category_parent = $row[13]; }
		   if($row[20] == ""){ $seller_money_back = 0; } else { $seller_money_back = $row[20]; }
		   if($row[21] == ""){ $seller_money_back_days = 0; } else { $seller_money_back_days = $row[21]; }
		   if($row[39] == ""){ $item_views = 0; } else { $item_views = $row[39]; }
		   if($row[40] == ""){ $free_download = 0; } else { $free_download = $row[40]; }
		   if($row[43] == ""){ $future_update = 0; } else { $future_update = $row[43]; }
		   if($row[44] == ""){ $item_support = 0; } else { $item_support = $row[44]; }
		   if($row[47] == ""){ $download_count = 0; } else { $download_count = $row[47]; }
		   if($row[48] == ""){ $item_flash = 0; } else { $item_flash = $row[48]; }
		   if($row[49] == ""){ $item_flash_request = 0; } else { $item_flash_request = $row[49]; }
		   if($row[55] == ""){ $item_status = 0; } else { $item_status = $row[55]; }
		   
		   
          if (empty($data)) {
          
					  return new Import([
					   'user_id'    => $row[1], 
					   'item_token' => $row[2],
					   'item_name' => $row[3],
					   'item_slug' => $row[4],
					   'item_desc' => $row[5],
					   'item_shortdesc' => $row[6],
					   'item_thumbnail' => $row[7],
					   'item_preview' => $row[8],
					   'item_file' => $item_file,
					   'file_type' => $row[10],
					   'item_file_link' => $row[11],
					   'item_category' => $row[12],
					   'item_category_parent' => $item_category_parent,
					   'item_category_type' => $row[14],
					   'item_type_cat_id' => $row[15],
					   'item_type' => $row[16],
					   'regular_price' => $row[17],
					   'extended_price' => $row[18],
					   'seller_refund_term' => $row[19],
					   'seller_money_back' => $seller_money_back,
					   'seller_money_back_days' => $seller_money_back_days,
					   'compatible_browsers' => $row[22],
					   'package_includes' => $row[23],
					   'package_includes_two' => $row[24],
					   'columns' => $row[25],
					   'layout' => $row[26],
					   'package_includes_three' => $row[27],
					   'layered' => $row[28],
					   'cs_version' => $row[29],
					   'print_dimensions' => $row[30],
					   'pixel_dimensions' => $row[31],
					   'package_includes_four' => $row[32],
					   'demo_url' => $row[33],
					   'video_preview_type' => $row[34],
					   'video_file' => $row[35],
					   'video_url' => $row[36],
					   'item_tags' => $row[37],
					   'item_liked' => $row[38],
					   'item_views' => $item_views,
					   'free_download' => $free_download,
					   'item_featured' => $row[41],
					   'item_sold' => $row[42],
					   'future_update' => $future_update,
					   'item_support' => $item_support,
					   'created_item' => $row[45],
					   'updated_item' => $row[46],
					   'download_count' => $download_count,
					   'item_flash' => $item_flash,
					   'item_flash_request' => $item_flash_request,
					   'item_allow_seo' => $row[50],
					   'item_seo_keyword' => $row[51],
					   'item_seo_desc' => $row[52],
					   'audio_file' => $row[53],
					   'drop_status' => $row[54],
					   'item_status' => $item_status,
					   
					]);
		  
		  
              } 
     
	    
	
        
    }
   
   
  
  
}
