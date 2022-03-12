@if($allsettings->maintenance_mode == 0)
<!DOCTYPE HTML>
<html lang="en">
<head>
<title>{{ $allsettings->site_title }} - {{ Helper::translation(6306,$translate,'') }}</title>
@include('meta')
@include('style')
</head>
<body>
@include('header')
<section class="bg-position-center-top" style="background-image: url('{{ url('/') }}/public/storage/settings/{{ $allsettings->site_banner }}');">
      <div class="py-4">
        <div class="container d-lg-flex justify-content-between py-2 py-lg-3">
        <div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb flex-lg-nowrap justify-content-center justify-content-lg-star">
              <li class="breadcrumb-item"><a class="text-nowrap" href="{{ URL::to('/') }}"><i class="dwg-home"></i>{{ Helper::translation(2862,$translate,'') }}</a></li>
              <li class="breadcrumb-item text-nowrap active" aria-current="page">{{ Helper::translation(6306,$translate,'') }}</li>
            </ol>
          </nav>
        </div>
        <div class="order-lg-1 pr-lg-4 text-center text-lg-left">
          <h1 class="h3 mb-0 text-white">{{ Helper::translation(6306,$translate,'') }} {{ Helper::translation(6318,$translate,'') }} {{ $user_details->username }}</h1>
        </div>
      </div>
      </div>
    </section>
<div class="container py-5 mt-md-2 mb-md-4">
      <div class="row">
        <div class="col-lg-3">
          <!-- Related articles sidebar-->
          <div class="cz-sidebar border-right" id="help-sidebar">
            <div class="profile-img" align="center">
             <a href="{{ url('/') }}/user/{{ $user_details->username }}" class="d-block mb-3 mb-sm-0" title="{{ $user_details->name }}" style="width: 12.5rem;">
             @if($user_details->user_photo != "")
             <img src="{{ url('/') }}/public/storage/users/{{ $user_details->user_photo }}" alt="" class="rounded-lg">
             @else
             <img src="{{ url('/') }}/public/img/no-user.png" alt="" class="rounded-lg">
             @endif
             </a>
             </div>
             <div align="center">
                            <div class="info mt-2">
                        <div class="title">
                            <a href="{{ url('/') }}/user/{{ $user_details->username }}" title="{{ $user_details->name }}" class="theme-color">{{ $user_details->username }}</a>
                        </div>
                        <div class="desc">
                        @if($addition_settings->subscription_mode == 1)
                        @if($user_details->verified == 1)
                        <span class="badges-success"><i class="dwg-check-circle danger"></i> {{ Helper::translation(5202,$translate,'') }}</span>
                        @else
                        <span class="badges-danger"><i class="dwg-close-circle danger"></i> {{ Helper::translation(5205,$translate,'') }} </span>
                        @endif
                        @endif
                        </div>
                        <div align="center" class="mt-3">
                        <a href="{{ url('/sales') }}/{{ $order_details->purchase_token }}" class="btn btn-danger btn-sm">&lt; {{ Helper::translation(5175,$translate,'') }}</a>
                        <a href="{{ url('/') }}/user/{{ $user_details->username }}" title="{{ $user_details->name }}" class="btn btn-success btn-sm"><i class="dwg-briefcase font-size-sm mr-2"></i> {{ Helper::translation(3078,$translate,'') }}</a>
                        </div>
                        </div>
                        </div>
                       <div class="widget mb-grid-gutter pb-grid-gutter mt-5">
                <h3 class="widget-title">{{ Helper::translation(3097,$translate,'') }}</h3>
                <div class="media align-items-center mb-3"><a href="{{ URL::to('/item') }}/{{ $order_details->item_slug }}"><img class="rounded" src="{{ url('/') }}/public/storage/items/{{ $order_details->item_preview }}" width="64" alt="Post image"></a>
                  <div class="media-body pl-3">
                    <h6 class="blog-entry-title font-size-sm mb-0"><a href="{{ URL::to('/item') }}/{{ $order_details->item_slug }}">{{ $order_details->item_name }}</a></h6><span class="font-size-ms text-muted">{{ $allsettings->site_currency_symbol }} {{ $order_details->total_price }}</span>
                  </div>
                </div>
                <ul class="widget-list widget-pads">
                  <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="{{ url('/purchases') }}"><span>{{ Helper::translation(3173,$translate,'') }}</span><span class="font-size-xs text-muted ml-3">{{ $order_details->ord_id }}</span></a></li>
                  <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="{{ url('/purchases') }}"><span>{{ Helper::translation(6051,$translate,'') }}</span><span class="font-size-xs text-muted ml-3">{{ $order_details->purchase_token }}</span></a></li>
                  <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="{{ url('/purchases') }}"><span>{{ Helper::translation(3102,$translate,'') }}</span><span class="font-size-xs text-muted ml-3">{{ date("d F Y", strtotime($order_details->start_date)) }}</span></a></li>
                   <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="{{ url('/purchases') }}"><span>{{ Helper::translation(3103,$translate,'') }}</span><span class="font-size-xs text-muted ml-3">{{ date("d F Y", strtotime($order_details->end_date)) }}</span></a></li>
                   <li class="widget-list-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="{{ url('/purchases') }}"><span>{{ Helper::translation(3105,$translate,'') }}</span><span class="font-size-xs text-muted ml-3">{{ $order_details->license }}</span></a></li>
                </ul>
                </div> 
          </div>
        </div>
        <div class="col-lg-9">
        <div class="card border-0 box-shadow my-2">
              <div class="card-body">
                <div class="media">
                           <img class="rounded-circle" width="50" src="{{ url('/') }}/public/storage/users/{{ Auth::user()->user_photo }}" alt="customer">
                              <form class="media-body needs-validation ml-3" action="{{ route('conversation') }}" method="post" id="comment_form"  enctype="multipart/form-data">          @csrf
                                <input type="hidden" name="conver_user_id" value="{{ Auth::user()->id }}">
                                <input type="hidden" name="conver_seller_id" value="{{ $user_details->id }}">
                                <input type="hidden" name="conver_order_id" value="{{ $order_id }}">
                                <input type="hidden" name="conver_url" value="{{ url('/conversation-to-buyer') }}">
                    <div class="form-group">
                      <textarea class="form-control" rows="4" placeholder="{{ Helper::translation(6309,$translate,'') }}" name="conver_text" data-bvalidator="required"></textarea>
                    </div>
                    <button class="btn btn-primary btn-sm" type="submit">{{ Helper::translation(6312,$translate,'') }}</button>
                  </form>
                </div>
              </div>
            </div>  
        @foreach($chat['message'] as $chat)
        <div class="media py-4 border-bottom li-item">
             <img class="rounded-circle" width="50" src="{{ url('/') }}/public/storage/users/{{ $chat->user_photo }}" alt="Benjamin Miller">
              <div class="media-body pl-3">
                <div class="d-flex justify-content-between align-items-center mb-2">
                  <h6 class="font-size-md mb-0">{{ $chat->username }}</h6>
                  @if($chat->conver_user_id == Auth::user()->id)
                  <a class="nav-link-style font-size-sm font-weight-medium" href="{{ url('/conversation') }}/{{ base64_encode($chat->conver_id) }}" onClick="return confirm('Are you sure you want to delete?');"><i class="dwg-trash mr-2"></i>{{ Helper::translation(2924,$translate,'') }}</a>
                  @endif
                </div>
                <p class="font-size-md mb-1">{{ $chat->conver_text }}</p><span class="font-size-ms text-muted"><i class="dwg-time align-middle mr-2"></i>{{ $chat->conver_date }}</span>
              </div>
            </div>
		@endforeach
        <div class="text-right">
            <div class="turn-page" id="post-pager"></div>
          </div>
       </div>
      </div>
    </div>
@include('footer')
@include('script')
</body>
</html>
@else
@include('503')
@endif