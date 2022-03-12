@if($allsettings->maintenance_mode == 0)
<!DOCTYPE HTML>
<html lang="en">
<head>
<title>{{ $allsettings->site_title }} - {{ Helper::translation(3211,$translate,'') }}</title>
@include('meta')
@include('style')
</head>
<body>
@include('header')
@if($addition_settings->subscription_mode == 0)
	@include('my-withdrawal')
@else
	@if(Auth::user()->user_type == 'vendor')
        @include('my-withdrawal')
   @elseif(Auth::user()->user_type == 'customer')
        @include('my-withdrawal')
   @else
        @include('not-found')
   @endif
@endif
@include('footer')
@include('script')
</body>
</html>
@else
@include('503')
@endif