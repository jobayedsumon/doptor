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
    
    <div id="right-panel" class="right-panel">

        
                       @include('admin.header')
                       

        <div class="breadcrumbs">
            <div class="col-sm-8">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>{{ Helper::translation('614ef9b134edc',$translate,'Edit Email Template') }} - {{ $edit['template']->et_heading }}</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <a href="{{ url('/admin/email-template') }}" class="btn btn-success btn-sm"><i class="fa fa-arrow-circle-left"></i> {{ Helper::translation(5175,$translate,'Back') }}</a>
                        </ol>
                    </div>
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
                        <div class="card-header">
                            <strong class="card-title" v-if="headerText">{{ Helper::translation('614ef9cc1ab3f',$translate,'Short Code') }}</strong>
                        </div>
                        <div class="card-body p-0">
                            <table class="table table-hover table-striped table-align-middle mb-0 edit-template">
                                <tbody>
                                     <?php /* Conversation Message */ ?>
                                    @if($et_id == 1)
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{from_name}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2917,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{from_email}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2915,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{conver_text}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2918,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{conversation_url}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(6303,$translate,'') }}
                                        </td>
                                    </tr>
                                    @endif
                                    <?php /* Comment */ ?>
                                    @if($et_id == 2)
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{from_name}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2906,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{from_email}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2907,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{item_url}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2908,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{comm_text}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2909,$translate,'') }}
                                        </td>
                                    </tr>
                                    @endif
                                    <?php /* Contact Us */ ?>
                                    @if($et_id == 3)
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{from_name}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2917,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{from_email}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2915,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{message_text}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2918,$translate,'') }}
                                        </td>
                                    </tr>
                                    @endif
                                    <?php /* Forget Password */ ?>
                                    @if($et_id == 4)
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{forgot_url}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(3015,$translate,'') }}
                                        </td>
                                    </tr>
                                    @endif
                                    <?php /* Item Update Notification */ ?>
                                    @if($et_id == 5)
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{item_url}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2908,$translate,'') }}
                                        </td>
                                    </tr>
                                    @endif
                                    <?php /* Newsletter Signup */ ?>
                                    @if($et_id == 6)
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{activate_url}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(3005,$translate,'') }}
                                        </td>
                                    </tr>
                                    @endif
                                    <?php /* Item Rating & Reviews */ ?>
                                    @if($et_id == 7)
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{from_name}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2917,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{from_email}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2915,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{rating}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(3163,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{rating_reason}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(3155,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{rating_comment}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2909,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{item_url}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2908,$translate,'') }}
                                        </td>
                                    </tr>
                                    @endif
                                    <?php /* Refund Request Received */ ?>
                                    @if($et_id == 8)
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{from_name}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2917,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{from_email}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2915,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{ref_refund_reason}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(3146,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{ref_refund_comment}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2909,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{item_url}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2908,$translate,'') }}
                                        </td>
                                    </tr>
                                    @endif
                                    <?php /* New Signup Email Verification */ ?>
                                    @if($et_id == 9)
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{register_url}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(3168,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{email}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(3166,$translate,'') }}
                                        </td>
                                    </tr>
                                    @endif
                                    <?php /* Contact Support */ ?>
                                    @if($et_id == 10)
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{from_name}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2917,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{from_email}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2915,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{support_subject}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(3063,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{support_msg}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2918,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{item_url}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2908,$translate,'') }}
                                        </td>
                                    </tr>
                                    @endif
                                    <?php /* Payment Refund Declined */ ?>
                                    @if($et_id == 11)
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{total_price}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(3224,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{currency}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(5193,$translate,'') }}
                                        </td>
                                    </tr>
                                    @endif
                                    <?php /* Payment Approval Cancelled */ ?>
                                    @if($et_id == 12)
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{total_price}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(3224,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{currency}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(5193,$translate,'') }}
                                        </td>
                                    </tr>
                                    @endif
                                    <?php /* Payment Refund Accepted */ ?>
                                    @if($et_id == 13)
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{total_price}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(3224,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{currency}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(5193,$translate,'') }}
                                        </td>
                                    </tr>
                                    @endif
                                    <?php /* Item Rejected Notifications */ ?>
                                    @if($et_id == 14)
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{item_name}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(3089,$translate,'') }}
                                        </td>
                                    </tr>
                                    @endif
                                    <?php /* Item Rejected Notifications */ ?>
                                    @if($et_id == 15)
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{item_url}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2908,$translate,'') }}
                                        </td>
                                    </tr>
                                    @endif
                                    <?php /* Newsletter Updates */ ?>
                                    @if($et_id == 16)
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{news_heading}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(3063,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{news_content}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(5649,$translate,'') }}
                                        </td>
                                    </tr>
                                    @endif
                                    <?php /* Payment Withdrawal Request Accepted */ ?>
                                    @if($et_id == 17)
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{wd_amount}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(3216,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{currency}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(5193,$translate,'') }}
                                        </td>
                                    </tr>
                                    @endif
                                    <?php /* New Payment Approved For Vendor */ ?>
                                    @if($et_id == 18)
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{vendor_amount}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(3224,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{currency}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(5193,$translate,'') }}
                                        </td>
                                    </tr>
                                    @endif
                                    @if($et_id == 19)
                                    <?php /* New Deposit Details */ ?>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{amount}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(3224,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{currency}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(5193,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{payment_type}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(3175,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{payment_token}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(3174,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{payment_date}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(3172,$translate,'') }}
                                        </td>
                                    </tr>
                                    @endif
                                    @if($et_id == 20)
                                    <?php /* Subscription Upgrade */ ?>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{user_subscr_type}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(6141,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{subscr_duration}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(6144,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{subscr_price}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(2888,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{currency}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(5193,$translate,'') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            @php echo htmlentities('{{user_subscr_date}}') @endphp
                                        </td>
                                        
                                        <td>
                                            {{ Helper::translation(3172,$translate,'') }}
                                        </td>
                                    </tr>
                                    @endif
                                  </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                    <div class="col-md-12">
                       
                        
                        
                      
                        <div class="card">
                           @if($demo_mode == 'on')
                           @include('admin.demo-mode')
                           @else
                            <form action="{{ route('admin.edit-email-template') }}" method="post" id="setting_form" enctype="multipart/form-data">
                           {{ csrf_field() }}
                           @endif
                          
                           <div class="col-md-12">
                           
                            <div class="card-body">
                                <!-- Credit Card -->
                                <div id="pay-invoice">
                                    <div class="card-body">
                                           
                                       <div class="form-group">
                                          <label for="site_logo" class="control-label mb-1">{{ Helper::translation(3063,$translate,'Subject') }} <span class="require">*</span></label>
                                                
                                            <input type="text" id="et_subject" name="et_subject" class="form-control"  value="{{ $edit['template']->et_subject }}"  data-bvalidator="required" >
                                            
                                            </div>
                                            
                                    </div>
                                </div>

                            </div>
                            </div>
                            
                            
                            
                             <div class="col-md-6" style="display:none;">
                             
                             
                             <div class="card-body">
                                <!-- Credit Card -->
                                <div id="pay-invoice">
                                    <div class="card-body">
                             <input type="hidden" name="et_status" value="1">
                             
                                          
                                        
                             
                             </div>
                                </div>

                            </div>
                             
                             
                             
                             </div>
                             
                             
                             <div class="col-md-12">
                             
                             
                             <div class="card-body">
                                <!-- Credit Card -->
                                <div id="pay-invoice">
                                    <div class="card-body">
                             
                                           
                                                
                                            <div class="form-group">
                                                <label for="site_title" class="control-label mb-1">{{ Helper::translation(2918,$translate,'Message') }} <span class="require">*</span></label>
                                                <textarea name="et_content" id="summary-ckeditor" rows="6" class="form-control" data-bvalidator="required">{{ html_entity_decode($edit['template']->et_content) }}</textarea>
                                            </div> 
                                            
                                           <input type="hidden" name="et_id" value="{{ $et_id }}">
                             
                             
                             </div>
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
        </div>
        
        
        <!-- .content -->


    </div><!-- /#right-panel -->
    
    <!-- Right Panel -->


   @include('admin.javascript')


</body>

</html>
