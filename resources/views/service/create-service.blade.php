@if($allsettings->maintenance_mode == 0)
        <!DOCTYPE HTML>
<html lang="en">
<head>
    <title>{{ $allsettings->site_title }} - @if(Auth::user()->user_type == 'vendor') {{ Helper::translation(2931,$translate,'') }} @else {{ Helper::translation(2860,$translate,'') }} @endif</title>
    @include('meta')
    @include('style')
</head>
<body>
@include('header')
@if($addition_settings->subscription_mode == 0)
    @include('service.create-my-service')
@else
    @if(Auth::user()->user_type == 'vendor')
        @if(Auth::user()->user_subscr_date >= date('Y-m-d'))
            @include('service.create-my-service')
        @else
            @include('expired')
        @endif
    @else
        @include('not-found')
    @endif
@endif
@include('footer')
@include('script')
<script type="text/javascript">
    $(document).ready(function(){
        'use strict';
        $("#mp4").hide();
        $("#youtube").hide();
        $("#mp3").hide();
        $('#video_preview_type1').on('change', function() {
            if ( this.value == 'youtube')

            {
                $("#youtube").show();
                $("#mp4").hide();
                $("#mp3").hide();
            }
            else if ( this.value == 'mp4')
            {
                $("#mp4").show();
                $("#youtube").hide();
                $("#mp3").hide();
            }
            else if ( this.value == 'mp3')
            {
                $("#mp3").show();
                $("#mp4").hide();
                $("#youtube").hide();

            }
            else
            {
                $("#mp4").hide();
                $("#youtube").hide();
                $("#mp3").hide();
            }

        });
    });
</script>
@include('upload-size')
</body>
</html>
@else
    @include('503')
@endif