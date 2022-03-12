@if($allsettings->maintenance_mode == 0)
<!DOCTYPE HTML>
<html lang="en">
<head>
<title>{{ $allsettings->site_title }} - @if($addition_settings->verify_mode == 1) {{ Helper::translation('614d4f7745243',$translate,'Verify Purchase') }} @else {{ Helper::translation(2860,$translate,'') }} @endif</title>
@include('meta')
@include('style')
</head>
<body>
@include('header')
@if($addition_settings->verify_mode == 1)
<section class="bg-position-center-top" style="background-image: url('{{ url('/') }}/public/storage/settings/{{ $allsettings->site_banner }}');">
      <div class="py-4">
        <div class="container d-lg-flex justify-content-between py-2 py-lg-3">
        <div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb flex-lg-nowrap justify-content-center justify-content-lg-star">
              <li class="breadcrumb-item"><a class="text-nowrap" href="{{ URL::to('/') }}"><i class="dwg-home"></i>{{ Helper::translation(2862,$translate,'') }}</a></li>
              <li class="breadcrumb-item text-nowrap active" aria-current="page">{{ Helper::translation('614d4f7745243',$translate,'Verify Purchase') }}</li>
            </ol>
          </nav>
        </div>
        <div class="order-lg-1 pr-lg-4 text-center text-lg-left">
          <h1 class="h3 mb-0 text-white">{{ Helper::translation('614d4f7745243',$translate,'Verify Purchase') }}</h1>
        </div>
      </div>
      </div>
    </section>
<div class="container py-4 py-lg-5 my-4">
      <div class="row justify-content-center">
        <div class="col-lg-8 col-md-10">
          <div class="card py-2 mt-4">
            <form method="POST" action="{{ route('verify') }}"  id="login_form" class="card-body needs-validation">
               @csrf 
              <div class="form-group">
                <label for="recover-email">{{ Helper::translation('614d589c73a20',$translate,'Enter Purchase Code') }}</label>
                <input class="form-control" type="text" id="recover-email" name="purchase_code" data-bvalidator="required">
              </div>
              <button class="btn btn-primary" type="submit">{{ Helper::translation('614d4f7745243',$translate,'Verify Purchase') }}</button>
            </form>
          </div>
          @if($checkverify != 0)
          <div class="mt-4">
          <table class="table table-bordered">
             <thead>
             <tr>
                 <th>{{ Helper::translation(5025,$translate,'Title') }}</th>
                 <th>{{ Helper::translation(2867,$translate,'Value') }}</th>
             </tr> 
             </thead>
             <tbody>
             <tr>
             <td>{{ Helper::translation(2938,$translate,'Item Name') }}</td>
             <td>{{ $sold->item_name }}</td>
             </tr>
             <tr>
             <td>{{ Helper::translation(3173,$translate,'Order ID') }}</td><td>{{ $sold->purchase_token }}</td>
             </tr>
             <tr><td>{{ Helper::translation(3102,$translate,'Purchase Date') }}</td><td>{{ date("d F Y", strtotime($sold->start_date)) }}</td>
             </tr>
             <tr>
             <td>{{ Helper::translation('614da54e23863',$translate,'Buyer Name') }}</td><td>{{ $sold->name }}</td>
             </tr>
             <tr>
             <td>{{ Helper::translation('614da543a4824',$translate,'License Type') }}</td><td>{{ $sold->license }} {{ Helper::translation(3105,$translate,'License') }}</td>
             </tr>
             <tr>
             <td>{{ Helper::translation('614da53348009',$translate,'Supported Until') }}</td><td>{{ date("d F Y", strtotime($sold->end_date)) }}</td>
             </tr>
             </tbody>
             </table>
          </div>
          @endif
        </div>
      </div>
    </div>
@else
@include('not-found')
@endif    
@include('footer')
@include('script')
</body>
</html>
@else
@include('503')
@endif