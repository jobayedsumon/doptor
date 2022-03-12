<div class="page-title-overlap pt-4" style="background-image: url('{{ url('/') }}/public/storage/settings/{{ $allsettings->site_banner }}');">
      <div class="container d-lg-flex justify-content-between py-2 py-lg-3">
        <div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb breadcrumb-light flex-lg-nowrap justify-content-center justify-content-lg-star">
              <li class="breadcrumb-item"><a class="text-nowrap" href="{{ URL::to('/') }}"><i class="dwg-home"></i>{{ Helper::translation(2862,$translate,'') }}</a></li>
              <li class="breadcrumb-item text-nowrap active" aria-current="page">{{ Helper::translation(3109,$translate,'') }}</li>
            </ol>
          </nav>
        </div>
        <div class="order-lg-1 pr-lg-4 text-center text-lg-left">
          <h1 class="h3 mb-0 text-white">{{ Helper::translation(3109,$translate,'') }}</h1>
        </div>
      </div>
    </div>
<div class="container pb-5 mb-2 mb-md-3">
      <div class="row">
        <!-- Sidebar-->
        <aside class="col-lg-4 pt-4 pt-lg-0">
          @include('dashboard-menu')
        </aside>
        <!-- Content  -->
        <section class="col-lg-8">
          <!-- Toolbar-->
          <div class="d-none d-lg-flex justify-content-between align-items-center pt-lg-3 pb-4 pb-lg-5 mb-lg-3">
            <h6 class="font-size-base text-light mb-0">{{ Helper::translation(4932,$translate,'') }}</h6><a class="btn btn-primary btn-sm" href="{{ url('/logout') }}"><i class="dwg-sign-out mr-2"></i>{{ Helper::translation(3023,$translate,'') }}</a>
          </div>
          @if($addition_settings->subscription_mode == 1)
          @if(Auth::user()->user_type == 'vendor') 
          @if(Auth::user()->user_subscr_type != '')
          <h4 class="h4 py-2 text-center text-sm-left">{{ Auth::user()->user_subscr_type }} {{ Helper::translation(6156,$translate,'') }}</h4>
          <div class="row mx-n2 pt-2">
                <div class="col-md-4 col-sm-12 px-2 mb-4">
                  <div class="bg-secondary h-100 rounded-lg p-4 text-center">
                    <h3 class="font-size-sm text-muted">{{ Helper::translation(6159,$translate,'') }}</h3>
                    @if(Auth::user()->user_subscr_item_level == 'limited')
                    <p class="h3 mb-2">{{ Auth::user()->user_subscr_item }}</p>
                    @else
                    <p class="h3 mb-2">{{ Helper::translation(6165,$translate,'') }}</p>
                    @endif
                  </div>
                </div>
                <div class="col-md-4 col-sm-12 px-2 mb-4">
                  <div class="bg-secondary h-100 rounded-lg p-4 text-center">
                    <h3 class="font-size-sm text-muted">{{ Helper::translation(6162,$translate,'') }}</h3>
                    @if(Auth::user()->user_subscr_space_level == 'limited')
                    <p class="h3 mb-2">{{ Auth::user()->user_subscr_space }} {{ Auth::user()->user_subscr_space_type }}</p>
                    @else
                    <p class="h3 mb-2">{{ Helper::translation(6165,$translate,'') }}</p>
                    @endif
                  </div>
                </div>
                <div class="col-md-4 col-sm-12 px-2 mb-4">
                  <div class="bg-secondary h-100 rounded-lg p-4 text-center">
                    <h3 class="font-size-sm text-muted">{{ Helper::translation(6168,$translate,'') }}</h3>
                    <p class="h3 mb-2">{{ date('d M Y',strtotime(Auth::user()->user_subscr_date)) }}</p>
                  </div>
                </div>
                @if(Auth::user()->user_subscr_space_level == 'limited')
                <div class="col-md-4 col-sm-12 px-2 mb-4">
                  <div class="bg-secondary h-100 rounded-lg p-4 text-center">
                    <h3 class="font-size-sm text-muted">{{ Helper::translation(6171,$translate,'') }}</h3>
                    <p class="h3 mb-2">{{ Helper::formatSizeUnits(Helper::available_space(Auth::user()->id)) }}</p>
                  </div>
                </div>
                @endif
                <div class="col-md-4 col-sm-12 px-2 mb-4">
                  <div class="bg-secondary h-100 rounded-lg p-4 text-center">
                    <h3 class="font-size-sm text-muted">{{ Helper::translation(6174,$translate,'') }}</h3>
                    <p class="h3 mb-2">{{ Helper::uploaded_item(Auth::user()->id) }}</p>
                  </div>
                </div>
                @if(Auth::user()->user_subscr_item_level == 'limited')
                <div class="col-md-4 col-sm-12 px-2 mb-4">
                  <div class="bg-secondary h-100 rounded-lg p-4 text-center">
                    <h3 class="font-size-sm text-muted">{{ Helper::translation(6177,$translate,'') }}</h3>
                    <p class="h3 mb-2">{{ Auth::user()->user_subscr_item - Helper::uploaded_item(Auth::user()->id) }}</p>
                  </div>
                </div>
                @endif
                <div class="col-md-4 col-sm-12 px-2 mb-4">
                  <div class="bg-secondary h-100 rounded-lg p-4 text-center">
                    <h3 class="font-size-sm text-muted">{{ Helper::translation(6431,$translate,'Download items per day') }}</h3>
                    <p class="h3 mb-2">{{ Auth::user()->user_subscr_download_item }}</p>
                  </div>
                </div>
                <div class="col-md-4 col-sm-12 px-2 mb-4">
                  <div class="bg-secondary h-100 rounded-lg p-4 text-center">
                    <h3 class="font-size-sm text-muted">{{ Helper::translation(6434,$translate,'Today download items limit') }}</h3>
                    <p class="h3 mb-2">{{ Auth::user()->user_today_download_limit }}</p>
                  </div>
                </div>
              </div>
            @endif
            @else
            <div class="row mx-n2 pt-2">
            <div class="col-md-6 col-sm-12 px-2 mb-4">
                  <div class="bg-secondary h-100 rounded-lg p-4 text-center">
                    <h3 class="font-size-sm text-muted">{{ Helper::translation(6431,$translate,'Download items per day') }}</h3>
                    <p class="h3 mb-2">{{ Auth::user()->user_subscr_download_item }}</p>
                  </div>
                </div>
                <div class="col-md-6 col-sm-12 px-2 mb-4">
                  <div class="bg-secondary h-100 rounded-lg p-4 text-center">
                    <h3 class="font-size-sm text-muted">{{ Helper::translation(6434,$translate,'Today download items limit') }}</h3>
                    <p class="h3 mb-2">{{ Auth::user()->user_today_download_limit }}</p>
                  </div>
                </div>
            </div>    
            @endif 
            @endif 
          <!-- Profile form-->
          <form action="{{ route('profile-settings') }}" class="needs-validation" id="profile_form" method="post" enctype="multipart/form-data">
            {{ csrf_field() }}
            <div class="row">
              <div class="col-sm-12 mb-1">
              <h4>{{ Helper::translation(3110,$translate,'') }}</h4>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-fn">{{ Helper::translation(2917,$translate,'') }} <span class="require">*</span></label>
                  <input type="text" id="name" name="name" class="form-control" placeholder="{{ Helper::translation(2917,$translate,'') }}" value="{{ Auth::user()->name }}" data-bvalidator="required" readonly="readonly">
                  <small class="red">{{ Helper::translation(6321,$translate,'') }} <a href="{{ URL::to('/contact') }}" class="text-decord">{{ Helper::translation(3055,$translate,'') }}</a></small>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-ln">{{ Helper::translation(3111,$translate,'') }} <span class="require">*</span></label>
                  <input type="text" id="username" name="username" class="form-control" placeholder="{{ Helper::translation(3111,$translate,'') }}" value="{{ Auth::user()->username }}" data-bvalidator="required" readonly="readonly">
                  <small>{{ Helper::translation(3112,$translate,'') }}: {{ URL::to('/') }}/user/<span>{{ Auth::user()->username }}</span></small><br/>
                  <small class="red">{{ Helper::translation(6324,$translate,'') }} <a href="{{ URL::to('/contact') }}" class="text-decord">{{ Helper::translation(3055,$translate,'') }}</a></small>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(3011,$translate,'') }} <span class="require">*</span></label>
                  <input type="text" id="email" name="email" class="form-control" placeholder="{{ Helper::translation(3011,$translate,'') }}" value="{{ Auth::user()->email }}" data-bvalidator="required,email" readonly="readonly">      <small class="red">{{ Helper::translation(6327,$translate,'') }} <a href="{{ URL::to('/contact') }}" class="text-decord">{{ Helper::translation(3055,$translate,'') }}</a></small>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-pass">{{ Helper::translation(3113,$translate,'') }}</label>
                  <div class="password-toggle">
                    <input id="password" name="password" type="password" class="form-control">
                    <label class="password-toggle-btn">
                      <input class="custom-control-input" type="checkbox"><i class="dwg-eye password-toggle-indicator"></i><span class="sr-only">{{ Helper::translation(4866,$translate,'') }}</span>
                    </label>
                  </div>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-pass">{{ Helper::translation(3114,$translate,'') }}</label>
                  <div class="password-toggle">
                  <input type="password" name="password_confirmation" id="password-confirm" class="form-control" data-bvalidator="equal[password]" placeholder="">
                   <label class="password-toggle-btn">
                      <input class="custom-control-input" type="checkbox"><i class="dwg-eye password-toggle-indicator"></i><span class="sr-only">{{ Helper::translation(4866,$translate,'') }}</span>
                    </label>
                  </div>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(3115,$translate,'') }}</label>
                  <input type="text" id="website" name="website" class="form-control" placeholder="" value="{{ Auth::user()->website }}">
                </div>
              </div>
              @if(Auth::user()->user_type == 'customer')
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(4833,$translate,'') }}</label><br/>
                  <input  type="checkbox" name="become-vendor" id="ch2" value="1">
                  <span class="become_vendor"><small>({{ Helper::translation(4836,$translate,'') }})</small></span>
                </div>
              </div>
              @endif
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(3116,$translate,'') }} <span class="require">*</span></label>
                  <select name="country" id="country" class="form-control" data-bvalidator="required">
                                    <option value=""></option>
                                    @foreach($country['country'] as $country)
                                    <option value="{{ $country->country_id }}" @if(Auth::user()->country == $country->country_id ) selected="selected" @endif>{{ $country->country_name }}</option>
                             @endforeach
                     </select>       
                </div>
              </div>
              @if(Auth::user()->user_type == 'vendor')
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(3117,$translate,'') }} <span class="require">*</span></label>
                  <select name="user_freelance" id="user_freelance" class="form-control" data-bvalidator="required">
                       <option value=""></option>
                       <option value="1" @if(Auth::user()->user_freelance == 1 ) selected="selected" @endif>{{ Helper::translation(2970,$translate,'') }}</option>
                       <option value="0" @if(Auth::user()->user_freelance == 0 ) selected="selected" @endif>{{ Helper::translation(2971,$translate,'') }}</option>
                  </select>       
                </div>
              </div>
              @endif
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(3118,$translate,'') }} <span class="require">*</span></label>
                  <select name="country_badge" id="country_badge" class="form-control" data-bvalidator="required">
                     <option value=""></option>
                     <option value="1" @if(Auth::user()->country_badge == 1 ) selected="selected" @endif>{{ Helper::translation(2970,$translate,'') }}</option>
                     <option value="0" @if(Auth::user()->country_badge == 0 ) selected="selected" @endif>{{ Helper::translation(2971,$translate,'') }}</option>
                  </select>       
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(3119,$translate,'') }} <span class="require">*</span></label>
                  <select name="exclusive_author" id="exclusive_author" class="form-control" data-bvalidator="required">
                      <option value=""></option>
                      <option value="1" @if(Auth::user()->exclusive_author == 1 ) selected="selected" @endif>{{ Helper::translation(2970,$translate,'') }}</option>
                      <option value="0" @if(Auth::user()->exclusive_author == 0 ) selected="selected" @endif>{{ Helper::translation(2971,$translate,'') }}</option>
                  </select>    
                  <small>({{ Helper::translation(3120,$translate,'') }} <strong>"{{ Helper::translation(2970,$translate,'') }}"</strong> {{ Helper::translation(3121,$translate,'') }})</small>   
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(3122,$translate,'') }}</label>
                  <input type="text" id="profile_heading" class="form-control" name="profile_heading" placeholder="{{ Helper::translation(3123,$translate,'') }}" value="{{ Auth::user()->profile_heading }}">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(3124,$translate,'') }}</label>
                  <textarea name="about" id="about" class="form-control" placeholder="{{ Helper::translation(3125,$translate,'') }}">{{ Auth::user()->about }}</textarea>
                </div>
              </div>
              <div class="col-sm-12 mt-4 mb-1">
              <h4 class="mt-4">{{ Helper::translation(3126,$translate,'') }}</h4>
              </div>
              <div class="col-sm-6">
              <div class="form-group pb-2">
                  <label for="account-confirm-pass">{{ Helper::translation(3127,$translate,'') }} (100x100 px)</label>
                  <div class="custom-file">
                  <input class="custom-file-input" type="file" id="unp-product-files" name="user_photo" data-bvalidator="extension[jpg:png:jpeg]" data-bvalidator-msg="{{ Helper::translation(2944,$translate,'') }}">
                  <label class="custom-file-label" for="unp-product-files"></label>
                  @if(Auth::user()->user_photo != '')
                  <img src="{{ url('/') }}/public/storage/users/{{ Auth::user()->user_photo }}" alt="{{ Auth::user()->name }}" width="50">
                  @else
                  <img src="{{ url('/') }}/public/img/no-user.png" alt="{{ Auth::user()->name }}" width="50">
                  @endif
                  </div>
                </div>
              </div> 
              <div class="col-sm-6">
              <div class="form-group pb-2">
                  <label for="account-confirm-pass">{{ Helper::translation(3128,$translate,'') }} (750x370 px)</label>
                  <div class="custom-file">
                  <input class="custom-file-input" type="file" id="unp-product-files" name="user_banner" data-bvalidator="extension[jpg:png:jpeg]" data-bvalidator-msg="{{ Helper::translation(2944,$translate,'') }}">
                  <label class="custom-file-label" for="unp-product-files"></label>
                  @if(Auth::user()->user_banner != '')
                  <img src="{{ url('/') }}/public/storage/users/{{ Auth::user()->user_banner }}" alt="{{ Auth::user()->name }}" width="100">
                  @else
                  <img src="{{ url('/') }}/public/img/no-image.png" alt="{{ Auth::user()->name }}" width="100">
                  @endif
                  </div>
                </div>
              </div>
              <div class="col-sm-12 mt-4 mb-1">
              <h4 class="mt-4">{{ Helper::translation(3129,$translate,'') }}</h4>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(4935,$translate,'') }}</label>
                  <input type="text" class="form-control" name="facebook_url" value="{{ Auth::user()->facebook_url }}" placeholder="ex: https://www.facebook.com">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(4938,$translate,'') }}</label>
                  <input type="text" class="form-control" name="twitter_url" value="{{ Auth::user()->twitter_url }}" placeholder="ex: https://www.twitter.com">
                </div>
              </div>
              <input type="hidden" name="gplus_url" value="{{ Auth::user()->gplus_url }}" />
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(5838,$translate,'') }}</label>
                  <input type="text" class="form-control" name="instagram_url" value="{{ Auth::user()->instagram_url }}" placeholder="ex: https://www.instagram.com">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(5835,$translate,'') }}</label>
                  <input type="text" class="form-control" name="linkedin_url" value="{{ Auth::user()->linkedin_url }}" placeholder="ex: https://www.linkedin.com">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(5832,$translate,'') }}</label>
                  <input type="text" class="form-control" name="pinterest_url" value="{{ Auth::user()->pinterest_url }}" placeholder="ex: https://www.pinterest.com">
                </div>
              </div>
              <div class="col-sm-6">
              </div>
              @if(Auth::user()->user_type == 'vendor')
              <div class="col-sm-12 mt-4 mb-1">
              <h4 class="mt-4">{{ Helper::translation(3130,$translate,'') }}</h4>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(3088,$translate,'') }}</label><br/>
                  <input type="checkbox" id="opt2" class="" name="item_update_email" value="1" @if(Auth::user()->item_update_email == 1) checked @endif>
                  <span class="become_vendor"><small>{{ Helper::translation(3131,$translate,'') }}</small></span>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(3132,$translate,'') }}</label><br/>
                  <input type="checkbox" id="opt3" class="" name="item_comment_email" value="1" @if(Auth::user()->item_comment_email == 1) checked @endif>
                  <span class="become_vendor"><small>{{ Helper::translation(3133,$translate,'') }}</small></span>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(3134,$translate,'') }}</label><br/>
                  <input type="checkbox" id="opt4" class="" name="item_review_email" value="1" @if(Auth::user()->item_review_email == 1) checked @endif>
                  <span class="become_vendor"><small>{{ Helper::translation(3135,$translate,'') }}</small></span>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(3136,$translate,'') }}</label><br/>
                  <input type="checkbox" id="opt5" class="" name="buyer_review_email" value="1" @if(Auth::user()->buyer_review_email == 1) checked @endif>
                  <span class="become_vendor"><small>{{ Helper::translation(3137,$translate,'') }}</small></span>
                </div>
              </div>
              @endif
              <div class="col-sm-12 mt-4 mb-1">
              <h4 class="mt-4">{{ Helper::translation(6330,$translate,'') }}</h4>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(6333,$translate,'') }}</label><br/>
                  <input type="checkbox" id="opt2" class="" name="user_message_permission" value="1" @if(Auth::user()->user_message_permission == 1) checked @endif>
                  <span class="become_vendor"><small>{{ Helper::translation(6336,$translate,'') }}</small></span>
                </div>
              </div>
              @if($addition_settings->subscription_mode == 1)
              @if($count_mode == 1)
              <div class="col-sm-12 mt-4 mb-1">
              <h4 class="mt-4">{{ Helper::translation(5604,$translate,'') }}</h4>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(5724,$translate,'') }} <span class="require">*</span></label><br/>
                  @foreach($payment_option as $payment)
                  
                  <input type="checkbox" id="opt2" class="" name="user_payment_option[]" value="{{ $payment }}" @if(in_array($payment,$get_payment)) checked @endif data-bvalidator="required">
                  <span class="become_vendor">{{ $payment }}</span><br/>
                  
                  @endforeach
                </div>
              </div>
              @if(in_array('paypal',$get_payment))
              <div class="col-sm-12 mt-4 mb-1">
              <h4 class="mt-4">{{ Helper::translation(5733,$translate,'') }}</h4>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(3214,$translate,'') }}</label>
                  <input type="text" class="form-control" name="user_paypal_email" value="{{ Auth::user()->user_paypal_email }}">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(5736,$translate,'') }} <span class="require">*</span></label>
                  <select name="user_paypal_mode" id="user_paypal_mode" class="form-control" data-bvalidator="required">
                      <option value=""></option>
                      <option value="1" @if(Auth::user()->user_paypal_mode == 1 ) selected="selected" @endif>{{ Helper::translation(5739,$translate,'') }}</option>
                      <option value="0" @if(Auth::user()->user_paypal_mode == 0 ) selected="selected" @endif>{{ Helper::translation(5742,$translate,'') }}</option>
                  </select>
                </div>
              </div>
              @endif
              @if(in_array('2checkout',$get_payment))
              <div class="col-sm-12 mt-4 mb-1">
              <h4 class="mt-4">{{ Helper::translation(6339,$translate,'') }}</h4>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(6342,$translate,'') }} <span class="require">*</span></label>
                  <select name="user_two_checkout_mode" id="user_two_checkout_mode" class="form-control" data-bvalidator="required">
                      <option value=""></option>
                      <option value="1" @if(Auth::user()->user_two_checkout_mode == 1 ) selected="selected" @endif>{{ Helper::translation(5739,$translate,'') }}</option>
                      <option value="0" @if(Auth::user()->user_two_checkout_mode == 0 ) selected="selected" @endif>{{ Helper::translation(5742,$translate,'') }}</option>
                  </select>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(6345,$translate,'') }}</label>
                  <input type="text" class="form-control" name="user_two_checkout_account" value="{{ Auth::user()->user_two_checkout_account }}">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(6348,$translate,'') }}</label>
                  <input type="text" class="form-control" name="user_two_checkout_publishable" value="{{ Auth::user()->user_two_checkout_publishable }}">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(6351,$translate,'') }}</label>
                  <input type="text" class="form-control" name="user_two_checkout_private" value="{{ Auth::user()->user_two_checkout_private }}">
                </div>
              </div>
              @endif
              <input type="hidden" name="user_paystack_public_key" value="{{ Auth::user()->user_paystack_public_key }}" />
              <input type="hidden" name="user_paystack_secret_key" value="{{ Auth::user()->user_paystack_secret_key }}" />
              <input type="hidden" name="user_paystack_merchant_email" value="{{ Auth::user()->user_paystack_merchant_email }}" />
              <?php /*?><div class="col-sm-12 mt-4 mb-1">
              <h4 class="mt-4">{{ Helper::translation(5763,$translate,'') }}</h4>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(5766,$translate,'') }}</label>
                  <input type="text" class="form-control" name="user_paystack_public_key" value="{{ Auth::user()->user_paystack_public_key }}">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(5769,$translate,'') }}</label>
                  <input type="text" class="form-control" name="user_paystack_secret_key" value="{{ Auth::user()->user_paystack_secret_key }}">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(5772,$translate,'') }}</label>
                  <input type="text" class="form-control" name="user_paystack_merchant_email" value="{{ Auth::user()->user_paystack_merchant_email }}">
                </div>
              </div><?php */?>
              @if(in_array('razorpay',$get_payment))
              <div class="col-sm-12 mt-4 mb-1">
              <h4 class="mt-4">{{ Helper::translation(6180,$translate,'') }}</h4>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(6183,$translate,'') }}</label>
                  <input type="text" class="form-control" name="user_razorpay_key" value="{{ Auth::user()->user_razorpay_key }}">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(6186,$translate,'') }}</label>
                  <input type="text" class="form-control" name="user_razorpay_secret" value="{{ Auth::user()->user_razorpay_secret }}">
                </div>
              </div>
              @endif
              @if(in_array('payhere',$get_payment))
              <div class="col-sm-12 mt-4 mb-1">
              <h4 class="mt-4">{{ Helper::translation(6354,$translate,'') }}</h4>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(6357,$translate,'') }} <span class="require">*</span></label>
                  <select name="user_payhere_mode" id="user_payhere_mode" class="form-control" data-bvalidator="required">
                      <option value=""></option>
                      <option value="1" @if(Auth::user()->user_payhere_mode == 1 ) selected="selected" @endif>{{ Helper::translation(5739,$translate,'') }}</option>
                      <option value="0" @if(Auth::user()->user_payhere_mode == 0 ) selected="selected" @endif>{{ Helper::translation(5742,$translate,'') }}</option>
                  </select>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(6360,$translate,'') }}</label>
                  <input type="text" class="form-control" name="user_payhere_merchant_id" value="{{ Auth::user()->user_payhere_merchant_id }}">
                </div>
              </div>
              @endif
              @if(in_array('payumoney',$get_payment))
              <div class="col-sm-12 mt-4 mb-1">
              <h4 class="mt-4">{{ Helper::translation(6363,$translate,'') }}</h4>
              </div>
              <div class="col-sm-12">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(6366,$translate,'') }} <span class="require">*</span></label>
                  <select name="user_payumoney_mode" id="user_payumoney_mode" class="form-control" data-bvalidator="required">
                      <option value=""></option>
                      <option value="1" @if(Auth::user()->user_payumoney_mode == 1 ) selected="selected" @endif>{{ Helper::translation(5739,$translate,'') }}</option>
                      <option value="0" @if(Auth::user()->user_payumoney_mode == 0 ) selected="selected" @endif>{{ Helper::translation(5742,$translate,'') }}</option>
                  </select>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(6369,$translate,'') }}</label>
                  <input type="text" class="form-control" name="user_payu_merchant_key" value="{{ Auth::user()->user_payu_merchant_key }}">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(6372,$translate,'') }}</label>
                  <input type="text" class="form-control" name="user_payu_salt_key" value="{{ Auth::user()->user_payu_salt_key }}">
                </div>
              </div>
              @endif
              @if(in_array('iyzico',$get_payment))
              <div class="col-sm-12 mt-4 mb-1">
              <h4 class="mt-4">{{ Helper::translation('61e679da7102a',$translate,'Iyzico Settings') }}</h4>
              </div>
              <div class="col-sm-12">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation('61e67a09202fb',$translate,'Iyzico Mode') }} <span class="require">*</span></label>
                  <select name="user_iyzico_mode" id="user_iyzico_mode" class="form-control" data-bvalidator="required">
                      <option value=""></option>
                      <option value="1" @if(Auth::user()->user_iyzico_mode == 1 ) selected="selected" @endif>{{ Helper::translation(5739,$translate,'') }}</option>
                      <option value="0" @if(Auth::user()->user_iyzico_mode == 0 ) selected="selected" @endif>{{ Helper::translation(5742,$translate,'') }}</option>
                  </select>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation('61e67a11da643',$translate,'Iyzico API Key') }}</label>
                  <input type="text" class="form-control" name="user_iyzico_api_key" value="{{ Auth::user()->user_iyzico_api_key }}">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation('61e67a1ab0ab0',$translate,'Iyzico Secret Key') }}</label>
                  <input type="text" class="form-control" name="user_iyzico_secret_key" value="{{ Auth::user()->user_iyzico_secret_key }}">
                </div>
              </div>
              @endif
              @if(in_array('flutterwave',$get_payment))
              <div class="col-sm-12 mt-4 mb-1">
              <h4 class="mt-4">{{ Helper::translation('61e67a2384157',$translate,'Flutterwave Settings') }}</h4>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation('61e67a2bbb65a',$translate,'Flutterwave Public Key') }}</label>
                  <input type="text" class="form-control" name="user_flutterwave_public_key" value="{{ Auth::user()->user_flutterwave_public_key }}">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation('61e67a332625a',$translate,'Flutterwave Secret Key') }}</label>
                  <input type="text" class="form-control" name="user_flutterwave_secret_key" value="{{ Auth::user()->user_flutterwave_secret_key }}">
                </div>
              </div>
              @endif
              @if(in_array('coingate',$get_payment))
              <div class="col-sm-12 mt-4 mb-1">
              <h4 class="mt-4">{{ Helper::translation('61e67a4006ea0',$translate,'Coingate Settings') }}</h4>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation('61e67a472bde7',$translate,'Coingate Mode') }} <span class="require">*</span></label>
                  <select name="user_coingate_mode" id="user_coingate_mode" class="form-control" data-bvalidator="required">
                      <option value=""></option>
                      <option value="1" @if(Auth::user()->user_coingate_mode == 1 ) selected="selected" @endif>{{ Helper::translation(5739,$translate,'') }}</option>
                      <option value="0" @if(Auth::user()->user_coingate_mode == 0 ) selected="selected" @endif>{{ Helper::translation(5742,$translate,'') }}</option>
                  </select>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation('61e67a4fdb585',$translate,'Coingate Auth Token') }}</label>
                  <input type="text" class="form-control" name="user_coingate_auth_token" value="{{ Auth::user()->user_coingate_auth_token }}">
                </div>
              </div>
              @endif
              @if(in_array('ipay',$get_payment))
              <div class="col-sm-12 mt-4 mb-1">
              <h4 class="mt-4">{{ Helper::translation('61e67b7a3a699',$translate,'iPay Settings') }}</h4>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation('61e67a5a0487a',$translate,'iPay Mode') }} <span class="require">*</span></label>
                  <select name="user_ipay_mode" id="user_ipay_mode" class="form-control" data-bvalidator="required">
                      <option value=""></option>
                      <option value="1" @if(Auth::user()->user_ipay_mode == 1 ) selected="selected" @endif>{{ Helper::translation(5739,$translate,'') }}</option>
                      <option value="0" @if(Auth::user()->user_ipay_mode == 0 ) selected="selected" @endif>{{ Helper::translation(5742,$translate,'') }}</option>
                  </select>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation('61e67a6339b28',$translate,'Vendor ID') }}</label>
                  <input type="text" class="form-control" name="user_ipay_vendor_id" value="{{ Auth::user()->user_ipay_vendor_id }}">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation('61e67a6ad3001',$translate,'iPay API / Hash Key') }}</label>
                  <input type="text" class="form-control" name="user_ipay_hash_key" value="{{ Auth::user()->user_ipay_hash_key }}">
                </div>
              </div>
              @endif
              @if(in_array('stripe',$get_payment))
              <div class="col-sm-12 mt-4 mb-1">
              <h4 class="mt-4">{{ Helper::translation(5745,$translate,'') }}</h4>
              </div>
              <div class="col-sm-12">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(5748,$translate,'') }} <span class="require">*</span></label>
                  <select name="user_stripe_mode" id="user_stripe_mode" class="form-control" data-bvalidator="required">
                      <option value=""></option>
                      <option value="1" @if(Auth::user()->user_stripe_mode == 1 ) selected="selected" @endif>{{ Helper::translation(5739,$translate,'') }}</option>
                      <option value="0" @if(Auth::user()->user_stripe_mode == 0 ) selected="selected" @endif>{{ Helper::translation(5742,$translate,'') }}</option>
                  </select>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(5751,$translate,'') }}</label>
                  <input type="text" class="form-control" name="user_test_publish_key" value="{{ Auth::user()->user_test_publish_key }}">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(5757,$translate,'') }}</label>
                  <input type="text" class="form-control" name="user_test_secret_key" value="{{ Auth::user()->user_test_secret_key }}">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(5754,$translate,'') }}</label>
                  <input type="text" class="form-control" name="user_live_publish_key" value="{{ Auth::user()->user_live_publish_key }}">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="account-email">{{ Helper::translation(5760,$translate,'') }}</label>
                  <input type="text" class="form-control" name="user_live_secret_key" value="{{ Auth::user()->user_live_secret_key }}">
                </div>
              </div>
              @endif
              @endif
              @endif
              <input type="hidden" name="user_token" value="{{ Auth::user()->user_token }}">
              <input type="hidden" name="id" value="{{ Auth::user()->id }}">
              <input type="hidden" name="save_earnings" value="{{ Auth::user()->earnings }}">
              <input type="hidden" name="save_photo" value="{{ Auth::user()->user_photo }}">
              <input type="hidden" name="save_banner" value="{{ Auth::user()->user_banner }}">
              <input type="hidden" name="save_password" value="{{ Auth::user()->password }}">
              <input type="hidden" name="save_auth_token" value="{{ Auth::user()->user_auth_token }}">
              <div class="col-12">
                <div class="d-flex flex-wrap justify-content-between align-items-center">
                  <button class="btn btn-primary mt-3 mt-sm-0" type="submit">{{ Helper::translation(3138,$translate,'') }}</button>
                </div>
              </div>
            </div>
          </form>
        </section>
      </div>
    </div>