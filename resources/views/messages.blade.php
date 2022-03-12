@if($allsettings->maintenance_mode == 0)
<!DOCTYPE HTML>
<html lang="en">
<head>
<title>{{ $allsettings->site_title }} - {{ Helper::translation(6378,$translate,'') }}</title>
@include('meta')
@include('style')
<meta name="csrf-token" content="{{ csrf_token() }}" />
</head>
<body>
@include('header')
@if(Auth::user()->user_type != 'admin')
<?php /*?><section class="bg-position-center-top" style="background-image: url('{{ url('/') }}/public/storage/settings/{{ $allsettings->site_banner }}');">
      <div class="py-4">
        <div class="container d-lg-flex justify-content-between py-2 py-lg-3">
        <div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb flex-lg-nowrap justify-content-center justify-content-lg-star">
              <li class="breadcrumb-item"><a class="text-nowrap" href="{{ URL::to('/') }}"><i class="dwg-home"></i>{{ Helper::translation(2862,$translate,'') }}</a></li>
              <li class="breadcrumb-item text-nowrap active" aria-current="page">{{ Helper::translation(6378,$translate,'') }}</li>
            </ol>
          </nav>
        </div>
        <div class="order-lg-1 pr-lg-4 text-center text-lg-left">
          <h1 class="h3 mb-0 text-white">{{ Helper::translation(6378,$translate,'') }}</h1>
        </div>
      </div>
      </div>
    </section><?php */?>
<div class="container py-5 mt-md-2 mb-2">
      <div class="row">
        <div class="col-lg-12" data-aos="fade-up" data-aos-delay="200">
            <div class="card">
			<div class="row g-0">
				<div class="col-12 col-lg-5 col-xl-3 border-right">
                    @foreach($other_user['details'] as $user)
                    <a href="javascript:void(0);" data-id="{{ $user->username }}" @if($slug == $user->username) class="list-group-item list-group-item-action border-0 active userlink" @else class="list-group-item list-group-item-action border-0 userlink" @endif>
						<div class="d-flex align-items-start">
							@if($user->user_photo!='')
                              <img src="{{ url('/') }}/public/storage/users/{{ $user->user_photo }}" class="rounded-circle mr-1" alt="{{ $user->username }}" width="40" height="40">
                              @else
                              <img class="rounded-circle mr-1" width="40" height="40" src="{{ url('/') }}/public/img/no-user.png" alt="{{ $user->username }}"/>
                              @endif
							<div class="flex-grow-1 ml-3">
								{{ $user->username }}
                                @if($user->user_type == 'vendor')
								<div class="small"><span class="badge badge-success">{{ Helper::translation(3142,$translate,'') }}</span></div>
                                @endif
                                @if($user->user_type == 'customer')
								<div class="small"><span class="badge badge-warning">{{ Helper::translation(4830,$translate,'') }}</span></div>
                                @endif
							</div>
						</div>
					</a>
					@endforeach
					<hr class="d-block d-lg-none mt-1 mb-0">
				</div>
				<div class="col-12 col-lg-7 col-xl-9">
					<?php /*?><div class="py-2 px-4 border-bottom d-none d-lg-block">
						<div class="d-flex align-items-center py-1">
							<div class="position-relative">
                             @if($login_user->user_photo!='')
                              <img src="{{ url('/') }}/public/storage/users/{{ $login_user->user_photo }}" class="rounded-circle mr-1" alt="{{ $login_user->username }}" width="40" height="40">
                              @else
                              <img class="rounded-circle mr-1" width="40" height="40" src="{{ url('/') }}/public/img/no-user.png" alt="{{ $login_user->username }}"/>
                              @endif
								
							</div>
							<div class="flex-grow-1 pl-3">
								<strong>{{ $login_user->username }}</strong>
							</div>
						</div>
					</div><?php */?>
                   <div class="position-relative">
                      <div id='loader' style='display: none;' align="center">
                          <img src='{{ url('/') }}/public/storage/settings/{{ $allsettings->site_loader_image }}' width='60' height='60' class="sloader">
                      </div>
                      <div id="display_message">
                      </div>
                      <div class="chat-messages p-4" id="hide_message">
                       @if($chck != 0)   
						@foreach($chat['message'] as $chat)
                         <div class="chat-message-left pb-4">
							 <div align="center">
							  @if($chat->user_photo!='')
                              <img src="{{ url('/') }}/public/storage/users/{{ $chat->user_photo }}" class="rounded-circle mr-1" alt="{{ $chat->username }}" width="60" height="60">
                              @else
                              <img class="rounded-circle mr-1" width="60" height="60" src="{{ url('/') }}/public/img/no-user.png" alt="{{ $chat->username }}"/>
                              @endif
							  <div class="text-muted small text-nowrap mt-2">{{ Helper::timeAgo(strtotime($chat->conver_date)) }}</div>
                              </div>
							  <div class="flex-shrink-1 bg-light rounded py-2 px-3 ml-3">
									<div class="font-weight-bold mb-1">{{ $chat->username }}</div>
									@emojione($chat->conver_text)<br/>
                                    <?php /*?>@if($chat->conver_user_id == Auth::user()->id)
                                    <p class="mt-1"><a href="{{ URL::to('/messages') }}/drop/{{ $encrypter->encrypt($chat->conver_id) }}" onClick="return confirm('{{ Helper::translation(5064,$translate,'') }}?');"><i class="dwg-trash"></i></a></p>
                                    @endif<?php */?>
								</div>
                            </div>
                      @endforeach
                      @endif
						</div>
					</div>
                    <?php /*?><form class="media-body needs-validation ml-3" action="{{ route('messages') }}" method="post" id="comment_form"  enctype="multipart/form-data">@csrf<?php */?>
                    <form method="post" id="checkout_form" enctype="multipart/form-data" action=""  class="media-body needs-validation ml-3 messageform">
                    @csrf
                    <div class="flex-grow-0 py-3 px-4 border-top emoji">
						<div class="input-group">
                            <input type="hidden" name="conver_user_id" value="{{ Auth::user()->id }}">
                            <input type="hidden" name="conver_seller_id" id="conver_seller_id" value="{{ $last_user }}">
                            <input type="hidden" name="conver_url" value="{{ url('/messages') }}">
		<input type="text" class="form-control" name="conver_text" id="conver_text" placeholder="{{ Helper::translation(6309,$translate,'') }}" data-emojiable="true"data-emoji-input="unicode" required>
							<button class="btn btn-primary btn-submit" type="submit">{{ Helper::translation(6312,$translate,'') }}</button>
                        </div>
					</div>
                   </form> 
				</div>
			</div>
		</div>
       </div>
      </div>
    </div>
    @else
        @include('not-found')
        @include('footer')
   @endif
<?php /*?>@include('footer')<?php */?>
@include('script')
<script src="{{ URL::to('resources/views/theme/emojione/emojione.picker.js') }}"></script>
<script  type="text/javascript">
$( "#conver_text" ).emojionePicker();
</script>
<script type="text/javascript">
$(document).ready(function() {
       $('.userlink').click(function(e) {
	      e.preventDefault();
		  var id = $(this).data("id");
    	  var token = $("meta[name='csrf-token']").attr("content");
            $('.userlink').removeClass('active');

        var $this = $(this);
        if (!$this.hasClass('active')) {
            $this.addClass('active');
        }
			$.ajax(
			{
				
				url: '{{url("messages")}}/'+id,
				type: 'GET',
				data: {
					"id": id,
					"_token": token,
				},
				beforeSend: function()
				{
					$("#loader").show();
					
				},
				success: function (data){
				    
					$('#hide_message').hide();
					/*$('.messageform').hide();*/
					$('#display_message').html(data.record);
					$("#conver_seller_id").val(data.last_user);
				},
				complete:function(data)
				{
					$("#loader").hide();
					
				}
			});
		  
       });
    });
   $(document).ready(function() {
   $('.chat-messages').scrollTop($('.chat-messages')[0].scrollHeight);   
    $(".btn-submit").click(function(e){
  
        e.preventDefault();
   
        var conver_user_id = $("input[name=conver_user_id]").val();
		var conver_seller_id = $("input[name=conver_seller_id]").val();
		var conver_url = $("input[name=conver_url]").val();
		var conver_text = $("input[name=conver_text]").val();
        var _token = $("input[name='_token']").val();
		if($('#conver_text').val() == '')
		{
           $('#conver_text').css("border", "1px solid #FE696A");
        }
		else
		{
		$.ajax({
                url: '{{url("messages")}}',
                type:'POST',
				dataType: 'json',
                data:{_token:_token, conver_user_id:conver_user_id, conver_seller_id:conver_seller_id, conver_url:conver_url, conver_text:conver_text},
                success: function(data) {
				
                    if($.isEmptyObject(data.error)){
					   if (data.success == undefined)
					   {
                        alert("Invalid Data");
					    }
						else
						{
						$('.emoji-wysiwyg-editor img').hide();
						$('.emoji-wysiwyg-editor').val("");
						$('#conver_text').val("");
						$('#hide_message').hide();
						$('#display_message').html(data.record);
						
						
					
						}
                    }else{
					    
                        printErrorMsg(data.error);
						
                    }
                }
            });
		}	
		
        });
  
    });
</script>
</body>
</html>
@else
@include('503')
@endif