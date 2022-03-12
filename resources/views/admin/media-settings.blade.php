<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
    
    @include('admin.stylesheet')
</head>

<body>
    
    @include('admin.navigation')

    <!-- Right Panel -->
    @if(in_array('settings',$avilable)) 
    <div id="right-panel" class="right-panel">

       
                       @include('admin.header')
                       

        <div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>{{ Helper::translation(5565,$translate,'') }}</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    
                </div>
            </div>
        </div>
        
        @if (session('success'))
    <div class="col-sm-12">
        <div class="alert  alert-success alert-dismissible fade show" role="alert">
            {{ session('success') }}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
        </div>
    </div>
@endif

@if (session('error'))
    <div class="col-sm-12">
        <div class="alert  alert-danger alert-dismissible fade show" role="alert">
            {{ session('error') }}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
        </div>
    </div>
@endif


@if ($errors->any())
    <div class="col-sm-12">
     <div class="alert  alert-danger alert-dismissible fade show" role="alert">
     @foreach ($errors->all() as $error)
      
         {{$error}}
      
     @endforeach
     <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
     </div>
    </div>   
 @endif

        <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">

                    <div class="col-md-12">
                       
                        
                        
                      
                        <div class="card">
                           @if($demo_mode == 'on')
                           @include('admin.demo-mode')
                           @else
                           <form action="{{ route('admin.media-settings') }}" method="post" id="checkout_form" enctype="multipart/form-data">
                           {{ csrf_field() }}
                           @endif
                          
                           <div class="col-md-6">
                           
                            <div class="card-body">
                                <!-- Credit Card -->
                                <div id="pay-invoice">
                                    <div class="card-body">
                                       
                                        
                                            
                                            <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">{{ Helper::translation(5568,$translate,'') }}<span class="require">*</span></label>
                                                <input id="site_max_image_size" name="site_max_image_size" type="text" class="form-control noscroll_textarea" value="{{ $setting['setting']->site_max_image_size }}" data-bvalidator="required,digit,min[1]"> <small>{{ Helper::translation(2968,$translate,'') }} : 1000</small>
                                            </div>
                                            
                                           <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">{{ Helper::translation(6422,$translate,'Image Quality') }}<span class="require">*</span></label>
                                                <input id="image_quality" name="image_quality" type="text" class="form-control noscroll_textarea" value="{{ $addition_settings->image_quality }}" data-bvalidator="required,digit,min[1],max[100]"> <small>{{ Helper::translation(2968,$translate,'') }} : 1 to 100</small>
                                            </div>
                                           
                                    </div>
                                </div>

                            </div>
                            </div>
                            
                            
                            
                             <div class="col-md-6">
                             
                             
                             <div class="card-body">
                                <!-- Credit Card -->
                                <div id="pay-invoice">
                                    <div class="card-body">
                             
                               
                             <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">{{ Helper::translation(5571,$translate,'') }}<span class="require">*</span></label>
                                                <input id="site_max_file_size" name="site_max_file_size" type="text" class="form-control noscroll_textarea" value="{{ $setting['setting']->site_max_file_size }}" data-bvalidator="required,digit,min[1]"> <small>{{ Helper::translation(2968,$translate,'') }} : 1000</small>
                                            </div>
                             
                            <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">{{ Helper::translation(5574,$translate,'') }}</label>
                                                <select name="site_s3_storage" class="form-control" data-bvalidator="required">
                                                <option value=""></option>
                                                <option value="0" @if($setting['setting']->site_s3_storage == 0) selected @endif>{{ Helper::translation(5577,$translate,'') }}</option>
                                                <option value="1" @if($setting['setting']->site_s3_storage == 1) selected @endif>{{ Helper::translation(5580,$translate,'') }}</option>
                                                <option value="2" @if($setting['setting']->site_s3_storage == 2) selected @endif>{{ Helper::translation('61e9347a4190a',$translate,'Wasabi Storage') }}</option>
                                                <option value="3" @if($setting['setting']->site_s3_storage == 3) selected @endif>{{ Helper::translation('61e93481d20bf',$translate,'Dropbox Storage') }}</option>
                                                <option value="4" @if($setting['setting']->site_s3_storage == 4) selected @endif>{{ Helper::translation('61e9348976f88',$translate,'Google Storage') }}</option>
                                                </select>
                                                
                                                
                                            </div>
                             
                             </div>
                                </div>

                            </div>
                             
                             <input type="hidden" name="sid" value="1">
                             
                             </div>
                             
                             
                             <div class="col-md-12"><h5>{{ Helper::translation(5583,$translate,'') }}</h5></div>
                             
                             
                             <div class="col-md-6">
                           
                            <div class="card-body">
                                <!-- Credit Card -->
                                <div id="pay-invoice">
                                    <div class="card-body">
                                       
                                        <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">{{ Helper::translation(5586,$translate,'') }}</label>
                                                <input id="aws_access_key_id" name="aws_access_key_id" type="text" class="form-control noscroll_textarea" value="{{ $setting['setting']->aws_access_key_id }}">
                                            </div>
                                        
                                         <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">{{ Helper::translation(5589,$translate,'') }}</label>
                                                <input id="aws_secret_access_key" name="aws_secret_access_key" type="text" class="form-control noscroll_textarea" value="{{ $setting['setting']->aws_secret_access_key }}"> 
                                            </div>
                                           
                                    </div>
                                </div>

                            </div>
                            </div>
                             
                            <div class="col-md-6">
                           
                            <div class="card-body">
                                <!-- Credit Card -->
                                <div id="pay-invoice">
                                    <div class="card-body">
                                       
                                        <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">{{ Helper::translation(5592,$translate,'') }}</label>
                                                <input id="aws_default_region" name="aws_default_region" type="text" class="form-control noscroll_textarea" value="{{ $setting['setting']->aws_default_region }}">
                                                <small>{{ Helper::translation(2968,$translate,'') }} : us-east-2</small>
                                            </div>
                                        
                                         <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">{{ Helper::translation(5595,$translate,'') }}</label>
                                                <input id="aws_bucket" name="aws_bucket" type="text" class="form-control noscroll_textarea" value="{{ $setting['setting']->aws_bucket }}"> <small>{{ Helper::translation(2968,$translate,'') }} : {{ Helper::translation(5598,$translate,'') }}</small>
                                            </div>
                                           
                                    </div>
                                </div>

                            </div>
                            </div> 
                            
                            <div class="col-md-12"><h5>{{ Helper::translation('61e9352785fdc',$translate,'Wasabi Storage Configuration (If wasabi storage selected)') }}</h5></div>
                            
                            <div class="col-md-6">
                           
                            <div class="card-body">
                                <!-- Credit Card -->
                                <div id="pay-invoice">
                                    <div class="card-body">
                                       
                                        <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">{{ Helper::translation('61e9352fe1c84',$translate,'WASABI ACCESS KEY ID') }}</label>
                                                <input id="wasabi_access_key_id" name="wasabi_access_key_id" type="text" class="form-control noscroll_textarea" value="{{ $setting['setting']->wasabi_access_key_id }}">
                                            </div>
                                        
                                         <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">{{ Helper::translation('61e93538514cf',$translate,'WASABI SECRET ACCESS KEY') }}</label>
                                                <input id="wasabi_secret_access_key" name="wasabi_secret_access_key" type="text" class="form-control noscroll_textarea" value="{{ $setting['setting']->wasabi_secret_access_key }}"> 
                                            </div>
                                           
                                    </div>
                                </div>

                            </div>
                            </div>
                            
                            <div class="col-md-6">
                           
                            <div class="card-body">
                                <!-- Credit Card -->
                                <div id="pay-invoice">
                                    <div class="card-body">
                                       
                                        <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">{{ Helper::translation('61e935431ff2b',$translate,'WASABI DEFAULT REGION') }}</label>
                                                <input id="wasabi_default_region" name="wasabi_default_region" type="text" class="form-control noscroll_textarea" value="{{ $setting['setting']->wasabi_default_region }}">
                                                <small>Example : us-east-2</small>
                                            </div>
                                        
                                         <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">{{ Helper::translation('61e9355410b07',$translate,'WASABI BUCKET') }}</label>
                                                <input id="wasabi_bucket" name="wasabi_bucket" type="text" class="form-control noscroll_textarea" value="{{ $setting['setting']->wasabi_bucket }}"> <small>Example : yourbucketname</small>
                                            </div>
                                           
                                    </div>
                                </div>

                            </div>
                            </div>
                             
                            <div class="col-md-12"><h5>{{ Helper::translation('61e9356493d1c',$translate,'Dropbox Storage Configuration (If dropbox storage selected)') }}</h5></div>
                            <div class="col-md-6">
                            <div class="card-body">
                                <!-- Credit Card -->
                                <div id="pay-invoice">
                                    <div class="card-body">
                                       <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">{{ Helper::translation('61e9356c0f424',$translate,'DROPBOX API') }}</label>
                                                <input id="dropbox_api" name="dropbox_api" type="text" class="form-control noscroll_textarea" value="{{ $setting['setting']->dropbox_api }}">
                                            </div>
                                        </div>
                                </div>
                             </div>
                            </div>
                            <div class="col-md-6">
                            <div class="card-body">
                                <!-- Credit Card -->
                                <div id="pay-invoice">
                                    <div class="card-body">
                                       <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">{{ Helper::translation('61e935746a18a',$translate,'DROPBOX TOKEN') }}</label>
                                                <input id="dropbox_token" name="dropbox_token" type="text" class="form-control noscroll_textarea" value="{{ $setting['setting']->dropbox_token }}">
                                            </div>
                                        </div>
                                </div>
                             </div>
                            </div>
                            <div class="col-md-12"><h5>{{ Helper::translation('61e936a53c51e',$translate,'Google Drive Storage Configuration (If google drive storage selected)') }}</h5></div>
                             <div class="col-md-6">
                            <div class="card-body">
                                <!-- Credit Card -->
                                <div id="pay-invoice">
                                    <div class="card-body">
                                       
                                       <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">{{ Helper::translation('61e936baa5b36',$translate,'GOOGLE DRIVE CLIENT ID') }}</label>
                                                <input id="google_drive_client_id" name="google_drive_client_id" type="text" class="form-control noscroll_textarea" value="{{ $setting['setting']->google_drive_client_id }}">
                                            </div>
                                        <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">{{ Helper::translation('61e936c3d060b',$translate,'GOOGLE DRIVE CLIENT SECRET') }}</label>
                                        <input id="google_drive_client_secret" name="google_drive_client_secret" type="text" class="form-control noscroll_textarea" value="{{ $setting['setting']->google_drive_client_secret }}">
                                        </div></div>
                                </div>
                             </div>
                            </div>
                            <div class="col-md-6">
                            <div class="card-body">
                                <!-- Credit Card -->
                                <div id="pay-invoice">
                                    <div class="card-body">
                                       <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">{{ Helper::translation('61e936cf64d9d',$translate,'GOOGLE DRIVE REFRESH TOKEN') }}</label>
                                                <input id="google_drive_refresh_token" name="google_drive_refresh_token" type="text" class="form-control noscroll_textarea" value="{{ $setting['setting']->google_drive_refresh_token }}">
                                            </div>
                                        <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">{{ Helper::translation('61e936d84fa1b',$translate,'GOOGLE DRIVE FOLDER ID') }}</label>
                                        <input id="google_drive_folder_id" name="google_drive_folder_id" type="text" class="form-control noscroll_textarea" value="{{ $setting['setting']->google_drive_folder_id }}">
                                        </div></div>
                                </div>
                             </div>
                            </div>
                             <div class="col-md-12 no-padding">
                             <div class="card-footer">
                                 <button type="submit" name="submit" class="btn btn-primary btn-sm"><i class="fa fa-dot-circle-o"></i> {{ Helper::translation(2876,$translate,'') }}</button>
                                 <button type="reset" class="btn btn-danger btn-sm"><i class="fa fa-ban"></i> {{ Helper::translation(4962,$translate,'') }} </button>
                             </div>
                             
                             </div>
                             
                            
                            </form>
                            
                                                    
                                                    
                                                 
                            
                        </div> 

                     
                    
                    
                    </div>
                    

                </div>
            </div><!-- .animated -->
        </div><!-- .content -->


    </div><!-- /#right-panel -->
    @else
    @include('admin.denied')
    @endif
    <!-- Right Panel -->


   @include('admin.javascript')


</body>

</html>
