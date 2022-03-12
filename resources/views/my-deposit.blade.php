<div class="page-title-overlap pt-4" style="background-image: url('{{ url('/') }}/public/storage/settings/{{ $allsettings->site_banner }}');">
      <div class="container d-lg-flex justify-content-between py-2 py-lg-3">
        <div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb flex-lg-nowrap justify-content-center justify-content-lg-star">
              <li class="breadcrumb-item"><a class="text-nowrap" href="{{ URL::to('/') }}"><i class="dwg-home"></i>{{ Helper::translation(2862,$translate,'') }}</a></li>
              <li class="breadcrumb-item text-nowrap active" aria-current="page">{{ Helper::translation('61b32a5049abd',$translate,'Deposit') }}</li>
              </li>
             </ol>
          </nav>
        </div>
        <div class="order-lg-1 pr-lg-4 text-center text-lg-left">
          <h1 class="h3 mb-0 text-white">{{ Helper::translation('61b32a5049abd',$translate,'Deposit') }}</h1>
        </div>
      </div>
    </div>
<div class="container mb-5 pb-3">
      <div class="bg-light box-shadow-lg rounded-lg overflow-hidden">
        <div class="row">
          <!-- Sidebar-->
          <aside class="col-lg-4">
            <!-- Account menu toggler (hidden on screens larger 992px)-->
            <div class="d-block d-lg-none p-4">
            <a class="btn btn-outline-accent d-block" href="#account-menu" data-toggle="collapse"><i class="dwg-menu mr-2"></i>{{ Helper::translation(4878,$translate,'') }}</a></div>
            <!-- Actual menu-->
            @if(Auth::user()->id != 1)
            @include('dashboard-menu')
            @endif
          </aside>
          <!-- Content-->
          <section class="@if(Auth::user()->id == 1) col-lg-12 pl-4 @else col-lg-8 @endif pt-lg-4 pb-4 mb-3">
            <div class="pt-2 px-4 pl-lg-0 pr-xl-5">
              <form action="{{ route('deposit') }}" class="setting_form" id="checkout_form" method="post" enctype="multipart/form-data">
        {{ csrf_field() }}
        <input type="hidden" name="order_firstname" value="{{ Auth::user()->name }}"> 
        <input type="hidden" name="order_email" value="{{ Auth::user()->email }}">
        <input type="hidden" name="website_url" value="{{ url('/') }}">
        <input type="hidden" name="token" class="token">
        <input type="hidden" name="reference" value="{{ Paystack::genTranxRef() }}">
        <div class="dashboard_contents dashboard_statement_area newcontent">
            <div id="boxradio">
                 <section>
                   <div class="container">
                            <div class="row">
                            @php $q = 1; @endphp  
                            @foreach($deposit['view'] as $deposit)
                            @php $priceval = $deposit->deposit_price + $deposit->deposit_bonus; @endphp
                            <div class="col-lg-3 col-md-3">
                              <input type="radio" id="control_{{ $deposit->dep_id }}" name="amount" value="{{ base64_encode($priceval) }}" @if($q==1) checked @endif>
                              <label for="control_{{ $deposit->dep_id }}">
                                <h2>{{ $deposit->deposit_price }} {{ $allsettings->site_currency }}</h2>
                                <p>@if($deposit->deposit_bonus != 0) {{ '+'.$deposit->deposit_bonus }} {{ $allsettings->site_currency }} {{ Helper::translation('61b32a701a39d',$translate,'Bonus') }} @else {{ Helper::translation('61b32a78256e8',$translate,'No Bonus') }}@endif</p>
                              </label>
                            </div>
                            @php $q++; @endphp
                            @endforeach
                            </div>
                            
                        </div>
                      </section>
                 </div>
            <!-- end /.container -->
        </div>
        <div class="dashboard_statement_area">
                 <div class="container">
                     <div class="row">
                         <div class="col-lg-12">
                         <div class="information_module payment_options">
                                <div class="toggle_title">
                                    <h4>{{ Helper::translation(2902,$translate,'') }}</h4>
                                </div>
                <div class="accordion mb-2" id="payment-method" role="tablist">
                @php $no = 1; @endphp
                @foreach($get_payment as $payment)
                @if($payment == 'paypal' or $payment == 'stripe')
                <div class="card">
                  <div class="card-header" role="tab">
                    <h3 class="accordion-heading"><a href="#{{ $payment }}" id="{{ $payment }}" data-toggle="collapse">{{ Helper::translation(4899,$translate,'') }} @if($payment == 'twocheckout') {{ Helper::translation(4902,$translate,'') }} @else {{ $payment }} @endif<span class="accordion-indicator"><i data-feather="chevron-up"></i></span></a></h3>
                  </div>
                  <div class="collapse @if($no == 1) show @endif" id="{{ $payment }}" data-parent="#payment-method" role="tabpanel">
                  @if($payment == 'paypal')
                    <div class="card-body font-size-sm custom-control custom-radio">
                      <p><span class='font-weight-medium'><input id="opt1-{{ $payment }}" name="payment_method" type="radio" class="custom_radio" value="{{ $payment }}" @if($no == 1) checked @endif data-bvalidator="required"> {{ Helper::translation(5937,$translate,'') }}</span> - {{ Helper::translation(4905,$translate,'') }}</p>
                      <button class="btn btn-primary" type="submit">{{ Helper::translation(4908,$translate,'') }}</button>
                    </div>
                    @endif
                  @if($payment == 'stripe')
                    <div class="card-body font-size-sm custom-radio custom-control">
                      <p><span class='font-weight-medium'><input id="opt1-{{ $payment }}" name="payment_method" type="radio" class="custom_radio"  value="{{ $payment }}" @if($no == 1) checked @endif data-bvalidator="required"> {{ Helper::translation(5940,$translate,'') }}</span> - {{ Helper::translation(2903,$translate,'') }}</p>
                      <div class="stripebox mb-3" id="ifYes" style="display:none;">
                        <label for="card-element">{{ Helper::translation(2903,$translate,'') }}</label>
                        <div id="card-element"></div>
                        <div id="card-errors" role="alert"></div>
                      </div>
                      <button class="btn btn-primary" type="submit">{{ Helper::translation(4911,$translate,'') }}</button>
                    </div> 
                    @endif
                   </div>
                </div>
                @endif
                @php $no++; @endphp
                @endforeach
              </div>
              </div>
            </div>
           </div>
        </div>
        </div>
       </form>
        </div>
          </section>
        </div>
      </div>
    </div>