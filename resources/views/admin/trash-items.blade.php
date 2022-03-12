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
    @if(in_array('items',$avilable))
    <div id="right-panel" class="right-panel">

        
                       @include('admin.header')
                       

        <div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>{{ Helper::translation('614dc2391d535',$translate,'Trash Items') }}</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        
                        <ol class="breadcrumb text-right">
                            <a href="{{ url('/admin/items') }}" class="btn btn-success btn-sm"><i class="fa fa-chevron-left"></i> {{ Helper::translation(5175,$translate,'') }}</a>
                            
                            
                            
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
        <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">

                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">{{ Helper::translation('614dc2391d535',$translate,'Trash Items') }}</strong>
                            </div>
                            <div class="card-body">
                                <table id="bootstrap-data-table-export" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>{{ Helper::translation(2920,$translate,'') }}</th>
                                            <th>{{ Helper::translation(5463,$translate,'') }}</th>
                                            <th>{{ Helper::translation(2938,$translate,'') }}</th>
                                            <th>{{ Helper::translation(5469,$translate,'') }}?</th>
                                            <th>{{ Helper::translation(5472,$translate,'') }}?</th>
                                            <th>{{ Helper::translation(3142,$translate,'') }}</th>
                                            <th>{{ Helper::translation(2922,$translate,'') }}</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    @php $no = 1; @endphp
                                    @foreach($itemData['item'] as $item)
                                        <tr>
                                            <td>{{ $no }}</td>
                                            <td>@if($item->item_thumbnail != '') <img height="50" width="50" src="{{ url('/') }}/public/storage/items/{{ $item->item_thumbnail }}" alt="{{ $item->item_name }}"/>@else <img height="50" width="50" src="{{ url('/') }}/public/img/no-image.png" alt="{{ $item->item_name }}" />  @endif</td>
                                            <td><a href="{{ url('/item') }}/{{ $item->item_slug }}" target="_blank" class="black-color">{{ mb_substr($item->item_name, 0, 50, 'UTF-8') }}</a></td>
                                            <td>@if($item->free_download == 1) <span class="badge badge-success">{{ Helper::translation(2970,$translate,'') }}</span> @else <span class="badge badge-danger">{{ Helper::translation(2971,$translate,'') }}</span> @endif</td>
                                            <td>@if($item->item_flash_request == 1) @if($item->item_flash == 0) <span class="badge badge-danger">{{ Helper::translation(5475,$translate,'') }}</span> @else <span class="badge badge-success">{{ Helper::translation(5232,$translate,'') }}</span> @endif @else <span>---</span> @endif</td>
                                            <td><a href="{{ url('/user') }}/{{ $item->username }}" target="_blank" class="black-color">{{ $item->username }}</a></td>
                                            <td>
                                            @if($demo_mode == 'on')
                                            <a href="demo-mode" class="btn btn-success btn-sm"><i class="fa fa-undo"></i>&nbsp;{{ Helper::translation('614dc17755d4a',$translate,'Restore') }}</a> 
                                            <a href="demo-mode" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i>&nbsp;{{ Helper::translation('614dc180e0971',$translate,'Delete Permanently') }}</a>
                                            
                                            @else
                                            <a href="restore-items/{{ $item->item_token }}" class="btn btn-success btn-sm"><i class="fa fa-undo"></i>&nbsp; {{ Helper::translation('614dc17755d4a',$translate,'Restore') }}</a> 
                                            <a href="delete-items/{{ $item->item_token }}" class="btn btn-danger btn-sm" onClick="return confirm('{{ Helper::translation('614dcc1759a53',$translate,'Are you sure you want to permanently delete') }}?');"><i class="fa fa-trash"></i>&nbsp;{{ Helper::translation('614dc180e0971',$translate,'Delete Permanently') }}</a>
                                            @endif</td>
                                        </tr>
                                        @php $no++; @endphp
                                   @endforeach     
                                        
                                    </tbody>
                                </table>
                            </div>
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
