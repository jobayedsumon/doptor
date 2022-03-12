@php
    $section = session()->get('section') ?? 'overview';
@endphp

<div class="page-title-overlap pt-4"
     style="background-image: url('{{ url('/') }}/public/storage/settings/{{ $allsettings->site_banner }}');">
    <div class="container d-lg-flex justify-content-between py-2 py-lg-3">
        <div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb flex-lg-nowrap justify-content-center justify-content-lg-star">
                    <li class="breadcrumb-item"><a class="text-nowrap" href="{{ URL::to('/') }}"><i
                                    class="dwg-home"></i>{{ Helper::translation(2862,$translate,'') }}</a></li>
                    <li class="breadcrumb-item text-nowrap active"
                        aria-current="page">{{ Helper::translation(2931,$translate,'') }}</li>
                    <li class="breadcrumb-item text-nowrap active"
                        aria-current="page">{{ $type_name->item_type_name }}</li>

                </ol>
            </nav>
        </div>
        <div class="order-lg-1 pr-lg-4 text-center text-lg-left">
            <h1 class="h3 mb-0 text-white">{{ Helper::translation(2931,$translate,'') }} <span
                        class="dwg-arrow-right"></span> {{ $type_name->item_type_name }}</h1>
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
                    <a class="btn btn-outline-accent d-block" href="#account-menu" data-toggle="collapse"><i
                                class="dwg-menu mr-2"></i>{{ Helper::translation(4878,$translate,'') }}</a></div>
                <!-- Actual menu-->
                @if(Auth::user()->id != 1)
                    @include('dashboard-menu')
                @endif
            </aside>
            <!-- Content-->
            <section class="col-lg-8 pt-lg-4 pb-4 mb-3">
                <div class="pt-2 px-4 pl-lg-0 pr-xl-5">
                    <nav id="tabs"><!--- tabs Starts --->

                        <div class="container">

                            <ul class="nav nav-tabs" id="nav-tab" role="tablist">

                                <li class="nav-item">
                                    <a class="nav-link {{ $section == 'overview' ? 'active' : '' }}" id="nav-home-tab" data-toggle="tab" href="#overview">
                                        Overview </a>
                                </li>


                                <li class="nav-item">
                                    <a class="nav-link {{ $section == 'pricing' ? 'active' : '' }}" id="nav-home-tab" data-toggle="tab" href="#pricing">
                                        Pricing </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link {{ $section == 'description' ? 'active' : '' }}" id="nav-home-tab" data-toggle="tab" href="#description">
                                        Description &amp; FAQ </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link {{ $section == 'requirements' ? 'active' : '' }}" id="nav-home-tab" data-toggle="tab" href="#requirements">
                                        Requirements </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link {{ $section == 'gallery' ? 'active' : '' }}" id="nav-home-tab" data-toggle="tab" href="#gallery">
                                        Gallery </a>
                                </li>

                            </ul>

                        </div>

                    </nav>

                    <div class="container mt-5 mb-5"><!--- container mt-5 Starts --->
                        <div class="row"><!--- row Starts --->
                            <div class=" col-md-12"><!--- col-xl-8 Starts --->
                                <div class="tab-content card card-body"><!--- tab-content Starts --->
                                    <div class="tab-pane fade {{ $section == 'overview' ? 'show active' : '' }}" id="overview">
                                        <form action="{{ route('service.create') }}" method="post"
                                              class="service-form"><!--- form Starts -->
                                            @csrf
                                            <div class="form-group row"><!--- form-group row Starts --->
                                                <div class="col-md-3">Service Title</div>
                                                <div class="col-md-9">
                                                    <textarea name="title" rows="2" placeholder="I Will" required
                                                              class="form-control">{{ $service->title }}</textarea>
                                                </div>
                                                @error('title')
                                                <small class="form-text text-danger">{{ $message }}</small>
                                                @enderror
                                            </div><!--- form-group row Ends --->

                                            <div class="form-group row"><!--- form-group row Starts --->
                                                <div class="col-md-3"> Category</div>
                                                <div class="col-md-9">
                                                    <select name="category_id" id="category_id"
                                                            class="form-control mb-3" required>
                                                        <option value="">Select a category</option>
                                                        @forelse($service_categories as $category)
                                                            <option {{ $service->category_id == $category->cat_id ? 'selected' : '' }} value="{{ $category->cat_id }}">{{ $category->category_name }}</option>
                                                        @empty
                                                        @endforelse
                                                    </select>
                                                    @error('category_id')
                                                    <small class="form-text text-danger">{{ $message }}</small>
                                                    @enderror


                                                </div>
                                            </div><!--- form-group row Ends --->

                                            <div class="form-group row">
                                                <div class="col-md-3">
                                                    Sub Category
                                                </div>
                                                <div class="col-md-9">
                                                    <select name="subcategory_id" id="subcategory_id"
                                                            class="form-control" required>

                                                    </select>
                                                    @error('subcategory_id')
                                                    <small class="form-text text-danger">{{ $message }}</small>
                                                    @enderror
                                                </div>
                                            </div>

                                            <div class="form-group row"><!--- form-group row Starts --->
                                                <div class="col-md-3">Tags</div>
                                                <div class="col-md-9">
                                                    <div class="bootstrap-tagsinput">
                                                        <input type="text" name="tags" class="form-control"
                                                               data-role="tagsinput" value="{{ $service->tags }}">
                                                        <span class="text-muted text-sm">Multiple tags should be comma seperated</span>
                                                    </div>
                                                </div>
                                                @error('tags')
                                                <small class="form-text text-danger">{{ $message }}</small>
                                                @enderror
                                            </div><!--- form-group row Ends --->

                                            <input type="hidden" name="section" value="pricing">

                                            <div class="form-group mb-0"><!--- form-group Starts --->
                                                <a href="{{ URL::to('/manage-services') }}"
                                                   class="float-left btn btn-secondary">Cancel</a>
                                                <input class="btn btn-success float-right" type="submit"
                                                       value="Save &amp; Continue">
                                            </div><!--- form-group Starts --->

                                        </form><!--- form Ends -->
                                    </div>

                                    <div class="tab-pane fade {{ $section == 'pricing' ? 'show active' : '' }}" id="pricing">
                                        <form action="{{ route('service.update', $service->slug) }}" method="post">
                                            @csrf
                                        <h5 class="font-weight-normal float-left">Pricing</h5>
                                        <div class="float-right switch-box">
                                            <span class="text">Fixed Price :</span>
                                            <label class="switch">
                                                <input type="checkbox" class="pricing" name="is_fixed_price" {{ $service->is_fixed_price ? 'checked' : ''}}>
                                                <span class="slider"></span>
                                            </label>
                                        </div>

                                        <div class="clearfix"></div>

                                        <hr class="mt-0">

                                        <div class="form-group row service-price justify-content-center mt-3">
                                            <div class="col-md-7">
                                                <label>Service Price</label>
                                                <div class="input-group">
                                                    <span class="input-group-addon font-weight-bold"></span>
                                                    <input type="number" class="form-control"
                                                           name="service_price" min="1" value="{{ $service->service_price }}">
                                                </div>
                                                <small>If you want to use packages, you need to set this field value to
                                                    0.</small>
                                            </div>
                                        </div>


                                        <div class="form-group row service-price justify-content-center mb-4">
                                            <!--- form-group row Starts --->
                                            <div class="col-md-7">
                                                <label>Service Revisions</label>
                                                <select name="service_revision"
                                                        class="form-control" required="">

                                                    @for($i=0; $i<=10; $i++)
                                                    <option {{ $service->service_revision == $i ? 'selected': '' }} value="{{ $i }}">{{ $i }}</option>
                                                    @endfor
                                                    <option {{ $service->service_revision == -1 ? 'selected' : '' }} value="-1">Unlimited Revisions</option>
                                                </select>
                                                <small>Set to 0 if your service is configured for instant
                                                    delivery.</small>
                                            </div>
                                            @error('title')
                                            <small class="form-text text-danger">{{ $message }}</small>
                                            @enderror
                                        </div><!--- form-group row Ends --->


                                        <div class="form-group row service-price justify-content-center mb-4">
                                            <!--- form-group row Starts --->
                                            <div class="col-md-7">
                                                <label>Delivery Time</label>
                                                <select name="delivery_time" class="form-control"
                                                        required="">
                                                    <option value="">Select Delivery Time</option>
                                                    @for($i=1; $i<=15; $i++)
                                                        <option {{ $service->delivery_time == $i ? 'selected': '' }} value="{{ $i }}">{{ $i }}
                                                            {{ $i == 1 ? 'day' : 'days' }}</option>
                                                    @endfor
                                                </select>
                                                <small>Please select 1 day if this is for an instant delivery.</small>
                                            </div>
                                            @error('delivery_time')
                                            <small class="form-text text-danger">{{ $message }}</small>
                                            @enderror
                                        </div><!--- form-group row Ends --->


{{--                                        <div class="packages" style="display: none;">--}}
{{--                                            <table class="table table-bordered packages" style="display: none;">--}}
{{--                                                <thead>--}}
{{--                                                <tr>--}}
{{--                                                    <th></th>--}}
{{--                                                    <th>Basic</th>--}}
{{--                                                    <th>Standard</th>--}}
{{--                                                    <th>Advance</th>--}}
{{--                                                </tr>--}}
{{--                                                </thead>--}}
{{--                                                <tbody>--}}
{{--                                                <form action="#" method="post" class="pricing-form"--}}
{{--                                                      id="pricing-form"></form>--}}
{{--                                                <input type="hidden" name="service_packages[1][package_id]"--}}
{{--                                                       form="pricing-form" value="160">--}}
{{--                                                <input type="hidden" name="service_packages[2][package_id]"--}}
{{--                                                       form="pricing-form" value="161">--}}
{{--                                                <input type="hidden" name="service_packages[3][package_id]"--}}
{{--                                                       form="pricing-form" value="162">--}}

{{--                                                <tr>--}}
{{--                                                    <td>Description</td>--}}
{{--                                                    <td class="p-0"><textarea name="service_packages[1][description]"--}}
{{--                                                                              form="pricing-form" class="form-control"--}}
{{--                                                                              placeholder="Description"--}}
{{--                                                                              rows="3"></textarea></td>--}}
{{--                                                    <td class="p-0"><textarea name="service_packages[2][description]"--}}
{{--                                                                              form="pricing-form" class="form-control"--}}
{{--                                                                              placeholder="Description"--}}
{{--                                                                              rows="3"></textarea></td>--}}
{{--                                                    <td class="p-0"><textarea name="service_packages[3][description]"--}}
{{--                                                                              form="pricing-form" class="form-control"--}}
{{--                                                                              placeholder="Description"--}}
{{--                                                                              rows="3"></textarea></td>--}}
{{--                                                </tr>--}}
{{--                                                <tr>--}}

{{--                                                    <td>--}}
{{--                                                        <span>sfsf</span>--}}
{{--                                                        <a href="#" data-attribute="sfsf"--}}
{{--                                                           class="edit-attribute float-right">--}}
{{--                                                            <i class="fa fa-pencil float-right"--}}
{{--                                                               style="font-size: 12px;"></i>--}}
{{--                                                        </a>--}}
{{--                                                    </td>--}}

{{--                                                    <td class="p-0">--}}
{{--                                                        <input type="hidden" name="package_attributes[1][attribute_id]"--}}
{{--                                                               form="pricing-form" value="16">--}}
{{--                                                        <input type="text" name="package_attributes[1][attribute_value]"--}}
{{--                                                               form="pricing-form" class="form-control" value="">--}}
{{--                                                        <i class="fa fa-trash delete-attribute"--}}
{{--                                                           data-attribute="sfsf"></i>--}}
{{--                                                    </td>--}}
{{--                                                    <td class="p-0">--}}
{{--                                                        <input type="hidden" name="package_attributes[2][attribute_id]"--}}
{{--                                                               form="pricing-form" value="17">--}}
{{--                                                        <input type="text" name="package_attributes[2][attribute_value]"--}}
{{--                                                               form="pricing-form" class="form-control" value="">--}}
{{--                                                        <i class="fa fa-trash delete-attribute"--}}
{{--                                                           data-attribute="sfsf"></i>--}}
{{--                                                    </td>--}}
{{--                                                    <td class="p-0">--}}
{{--                                                        <input type="hidden" name="package_attributes[3][attribute_id]"--}}
{{--                                                               form="pricing-form" value="18">--}}
{{--                                                        <input type="text" name="package_attributes[3][attribute_value]"--}}
{{--                                                               form="pricing-form" class="form-control" value="">--}}
{{--                                                        <i class="fa fa-trash delete-attribute"--}}
{{--                                                           data-attribute="sfsf"></i>--}}
{{--                                                    </td>--}}
{{--                                                </tr>--}}

{{--                                                <tr class="delivery-time">--}}
{{--                                                    <td>Delivery Time</td>--}}
{{--                                                    <td class="p-0">--}}
{{--                                                        <select name="service_packages[1][delivery_time]"--}}
{{--                                                                class="form-control">--}}
{{--                                                            <option value="1">1 Day</option>--}}
{{--                                                            <option value="2">2 Days</option>--}}
{{--                                                            <option value="3">3 Days</option>--}}
{{--                                                            <option value="4">4 Days</option>--}}
{{--                                                            <option value="5">5 Days</option>--}}
{{--                                                            <option value="6">6 Days</option>--}}
{{--                                                            <option value="7">7 Days</option>--}}
{{--                                                            <option value="8">8 Days</option>--}}
{{--                                                            <option value="9">9 Days</option>--}}
{{--                                                            <option value="10">10 Days</option>--}}
{{--                                                            <option value="11">11 Days</option>--}}
{{--                                                            <option value="12">12 Days</option>--}}
{{--                                                            <option value="13">13 Days</option>--}}
{{--                                                            <option value="14">14 Days</option>--}}
{{--                                                            <option value="15">15 Days</option>--}}
{{--                                                        </select>--}}
{{--                                                    </td>--}}
{{--                                                    <td class="p-0">--}}
{{--                                                        <select name="service_packages[2][delivery_time]"--}}
{{--                                                                form="pricing-form" class="form-control">--}}
{{--                                                            <option value="1" selected="">1 Day</option>--}}
{{--                                                            <option value="2">2 Days</option>--}}
{{--                                                            <option value="3">3 Days</option>--}}
{{--                                                            <option value="4">4 Days</option>--}}
{{--                                                            <option value="5">5 Days</option>--}}
{{--                                                            <option value="6">6 Days</option>--}}
{{--                                                            <option value="7">7 Days</option>--}}
{{--                                                            <option value="8">8 Days</option>--}}
{{--                                                            <option value="9">9 Days</option>--}}
{{--                                                            <option value="10">10 Days</option>--}}
{{--                                                            <option value="11">11 Days</option>--}}
{{--                                                            <option value="12">12 Days</option>--}}
{{--                                                            <option value="13">13 Days</option>--}}
{{--                                                            <option value="14">14 Days</option>--}}
{{--                                                            <option value="15">15 Days</option>--}}
{{--                                                        </select></td>--}}
{{--                                                    <td class="p-0">--}}
{{--                                                        <select name="service_packages[3][delivery_time]"--}}
{{--                                                                form="pricing-form" class="form-control">--}}
{{--                                                            <option value="1" selected="">1 Day</option>--}}
{{--                                                            <option value="2">2 Days</option>--}}
{{--                                                            <option value="3">3 Days</option>--}}
{{--                                                            <option value="4">4 Days</option>--}}
{{--                                                            <option value="5">5 Days</option>--}}
{{--                                                            <option value="6">6 Days</option>--}}
{{--                                                            <option value="7">7 Days</option>--}}
{{--                                                            <option value="8">8 Days</option>--}}
{{--                                                            <option value="9">9 Days</option>--}}
{{--                                                            <option value="10">10 Days</option>--}}
{{--                                                            <option value="11">11 Days</option>--}}
{{--                                                            <option value="12">12 Days</option>--}}
{{--                                                            <option value="13">13 Days</option>--}}
{{--                                                            <option value="14">14 Days</option>--}}
{{--                                                            <option value="15">15 Days</option>--}}
{{--                                                        </select>--}}
{{--                                                    </td>--}}
{{--                                                </tr>--}}

{{--                                                <tr>--}}
{{--                                                    <td>Revisions</td>--}}
{{--                                                    <td class="p-0">--}}
{{--                                                        <select name="service_packages[1][revisions]"--}}
{{--                                                                form="pricing-form" class="form-control">--}}
{{--                                                            <option value="0" selected="">0</option>--}}
{{--                                                            <option value="1">1</option>--}}
{{--                                                            <option value="2">2</option>--}}
{{--                                                            <option value="3">3</option>--}}
{{--                                                            <option value="4">4</option>--}}
{{--                                                            <option value="5">5</option>--}}
{{--                                                            <option value="6">6</option>--}}
{{--                                                            <option value="7">7</option>--}}
{{--                                                            <option value="8">8</option>--}}
{{--                                                            <option value="9">9</option>--}}
{{--                                                            <option value="10">10</option>--}}
{{--                                                            <option value="unlimited">Unlimited Revisions</option>--}}
{{--                                                        </select>--}}
{{--                                                    </td>--}}
{{--                                                    <td class="p-0">--}}
{{--                                                        <select name="service_packages[2][revisions]"--}}
{{--                                                                form="pricing-form" class="form-control">--}}
{{--                                                            <option value="0" selected="">0</option>--}}
{{--                                                            <option value="1">1</option>--}}
{{--                                                            <option value="2">2</option>--}}
{{--                                                            <option value="3">3</option>--}}
{{--                                                            <option value="4">4</option>--}}
{{--                                                            <option value="5">5</option>--}}
{{--                                                            <option value="6">6</option>--}}
{{--                                                            <option value="7">7</option>--}}
{{--                                                            <option value="8">8</option>--}}
{{--                                                            <option value="9">9</option>--}}
{{--                                                            <option value="10">10</option>--}}
{{--                                                            <option value="unlimited">Unlimited Revisions</option>--}}
{{--                                                        </select>--}}
{{--                                                    </td>--}}
{{--                                                    <td class="p-0">--}}
{{--                                                        <select name="service_packages[3][revisions]"--}}
{{--                                                                form="pricing-form" class="form-control">--}}
{{--                                                            <option value="0" selected="">0</option>--}}
{{--                                                            <option value="1">1</option>--}}
{{--                                                            <option value="2">2</option>--}}
{{--                                                            <option value="3">3</option>--}}
{{--                                                            <option value="4">4</option>--}}
{{--                                                            <option value="5">5</option>--}}
{{--                                                            <option value="6">6</option>--}}
{{--                                                            <option value="7">7</option>--}}
{{--                                                            <option value="8">8</option>--}}
{{--                                                            <option value="9">9</option>--}}
{{--                                                            <option value="10">10</option>--}}
{{--                                                            <option value="unlimited">Unlimited Revisions</option>--}}
{{--                                                        </select>--}}
{{--                                                    </td>--}}
{{--                                                </tr>--}}

{{--                                                <tr>--}}
{{--                                                    <td>Price</td>--}}
{{--                                                    <td class="p-0">--}}

{{--                                                        <input type="number" min="0" required=""--}}
{{--                                                               name="service_packages[1][price]" form="pricing-form"--}}
{{--                                                               value="5" class="form-control">--}}
{{--                                                    </td>--}}
{{--                                                    <td class="p-0">--}}
{{--                                                        <input type="number" min="0" required=""--}}
{{--                                                               name="service_packages[2][price]" form="pricing-form"--}}
{{--                                                               value="10" class="form-control">--}}
{{--                                                    </td>--}}
{{--                                                    <td class="p-0">--}}

{{--                                                        <input type="number" min="0" required=""--}}
{{--                                                               name="service_packages[3][price]" form="pricing-form"--}}
{{--                                                               value="15" class="form-control">--}}
{{--                                                    </td>--}}
{{--                                                </tr>--}}

{{--                                                </tbody>--}}
{{--                                            </table>--}}

{{--                                            <!-- Modal -->--}}
{{--                                            <div class="modal fade" id="edit-modal" role="dialog">--}}
{{--                                                <div class="modal-dialog" role="document">--}}
{{--                                                    <div class="modal-content">--}}
{{--                                                        <div class="modal-header">--}}
{{--                                                            <h5 class="modal-title">Edit Attribute Name</h5>--}}
{{--                                                            <button type="button" class="close" data-dismiss="modal">--}}
{{--                                                                <span>×</span>--}}
{{--                                                            </button>--}}
{{--                                                        </div>--}}
{{--                                                        <div class="modal-body">--}}
{{--                                                            <form action="" method="post" class="update-attribute">--}}
{{--                                                                <input type="hidden" name="name" value="">--}}
{{--                                                                <div class="form-group">--}}
{{--                                                                    <input type="text" class="form-control"--}}
{{--                                                                           name="new_name" placeholder="Attribute Name">--}}
{{--                                                                </div>--}}
{{--                                                                <div class="form-group text-center mb-0">--}}
{{--                                                                    <input type="submit" class="btn btn-success"--}}
{{--                                                                           value="Update Attribute Name">--}}
{{--                                                                </div>--}}
{{--                                                            </form>--}}
{{--                                                        </div>--}}
{{--                                                    </div>--}}
{{--                                                </div>--}}
{{--                                            </div>--}}
{{--                                        </div>--}}

{{--                                        <div class="form-group row add-attribute justify-content-center"--}}
{{--                                             style="display: none;">--}}
{{--                                            <div class="col-md-7">--}}
{{--                                                <div class="input-group">--}}
{{--                                                    <input class="form-control form-control-sm attribute-name"--}}
{{--                                                           placeholder="Add New Attribute" name="">--}}
{{--                                                    <button class="btn btn btn-success input-group-addon insert-attribute">--}}
{{--                                                        <i class="fa fa-cloud-upload"></i> &nbsp;Insert--}}
{{--                                                    </button>--}}
{{--                                                </div>--}}
{{--                                            </div>--}}
{{--                                        </div>--}}

                                            <input type="hidden" name="section" value="description">
                                            <div class="form-group mb-0"><!--- form-group Starts --->
                                                <a href="{{ URL::to('/manage-services') }}"
                                                   class="float-left btn btn-secondary">Cancel</a>
                                                <input class="btn btn-success float-right" type="submit"
                                                       value="Save &amp; Continue">
                                            </div><!--- form-group Starts --->
                                        </form>
                                    </div>

                                    <div class="tab-pane fade {{ $section == 'description' ? 'show active' : '' }}" id="description">
                                        <h5 class="font-weight-normal">Description</h5>
                                        <hr>
                                        <p class="small my-2"> Service Details </p>

                                        <form action="{{ route('service.update', $service->slug) }}" method="post">
                                        @csrf
                                            <!--- form Starts -->
                                            <textarea name="description" class="form-control">{{ $service->description }}</textarea>
                                            @error('title')
                                            <small class="form-text text-danger">{{ $message }}</small>
                                            @enderror

                                            <input type="hidden" name="section" value="requirements">

                                            <div class="form-group mb-0 mt-3"><!--- form-group Starts --->
                                                <a href="{{ URL::to('/manage-services') }}"
                                                   class="float-left btn btn-secondary">Cancel</a>
                                                <input class="btn btn-success float-right" type="submit"
                                                       value="Save &amp; Continue">
                                            </div><!--- form-group Starts --->

                                        </form><!--- form Ends -->




                                    </div>
                                    <div class="tab-pane fade {{ $section == 'requirements' ? 'show active' : '' }}" id="requirements">
                                        <form action="{{ route('service.update', $service->slug) }}" method="post">
                                            @csrf
                                            <h5 class="font-weight-normal">

                                                <span class="float-left mr-2"><i class="fa fa-file text-info fa-1x"></i> </span>

                                                <span class="float-left">

                                                    Tell your buyer what you need to get started (Optional) <br>

                                                    <small class="text-muted">Structure your Buyer Instructions as free text.</small>

                                                    </span>

                                                <div class="clearfix"></div>

                                            </h5>

                                            <hr>

                                            <div class="form-group requirements">
                                                <p class="mb-1">Requirements</p>
                                                <textarea name="requirements"
                                                          placeholder="If you need to obtain information, files or other items from the buyer prior to starting your work, please add your instructions here. For example: Please send me your company name or Please send me the photo you need me to edit."
                                                          rows="4" class="form-control">{{ $service->requirements }}</textarea>

                                            </div>


                                            <input type="hidden" name="section" value="gallery">

                                            <div class="form-group mb-0"><!--- form-group Starts --->
                                                <a href="{{ URL::to('/manage-services') }}"
                                                   class="float-left btn btn-secondary">Cancel</a>
                                                <input class="btn btn-success float-right" type="submit"
                                                       value="Save &amp; Continue">
                                            </div><!--- form-group Starts --->

                                        </form><!--- form Ends -->


                                    </div>
                                    <div class="tab-pane fade {{ $section == 'gallery' ? 'show active' : '' }}" id="gallery">
                                        <h5 class="font-weight-normal">Build Your Service Gallery</h5>
                                        <h6 class="font-weight-normal">Add memorable content to your gallery to set
                                            yourself apart from competitors.</h6>

                                        <hr>

                                        <p class="text-right mt-3">
                                            <span class="float-left">Service Photos </span>
                                            <small class="text-muted" style="font-size:78%;">Upload Photos that describe
                                                or related to your service.your image size must be 700 x 390
                                                pixels.</small>
                                        </p>

                                        <form action="{{ route('service.update', $service->slug) }}" method="post" enctype="multipart/form-data">
                                            @csrf
                                            <div class="row gallery mb-3"><!--- row gallery Starts --->
                                                <div class="col-md-6"><!--- col-md-3 Starts --->
                                                    <div class="img">
                                                        <input type="file" multiple name="images[]" class="form-control"/>
                                                    </div>
                                                </div><!--- col-md-3 Ends --->

                                            </div><!--- row gallery Ends --->

                                            <hr>


                                            <p class="text-right mt-2">
                                                <span class="float-left">Add Video</span>
                                                <small class="text-muted" style="font-size: 78%;">(Optional) Supported
                                                    Video Extensions Include : 'mp4','mov','avi','flv','wmv'.</small>
                                            </p>
                                            <div class="row gallery"><!--- row gallery Starts --->
                                                <div class="col-md-6"><!--- col-md-3 Starts --->

                                                    <input type="file" name="video" class="form-control"/>

                                                </div><!--- col-md-3 Ends --->
                                            </div><!--- row gallery Ends --->


                                            <p class="text-right mt-2">
                                                <span class="float-left">Add Audio</span>
                                                <small class="text-muted" style="font-size: 78%;">(Optional) Supported
                                                    Audio Extensions Include : 'mp3','ogg','aac','webm','wav'.</small>
                                            </p>
                                            <div class="row gallery mb-3"><!--- row gallery Starts --->
                                                <div class="col-md-6"><!--- col-md-3 Starts --->

                                                    <input type="file" name="audio" class="form-control"/>

                                                </div><!--- col-md-3 Ends --->
                                            </div><!--- row gallery Ends --->
                                            <div class="form-group mb-0"><!--- form-group Starts --->
                                                <a href="{{ URL::to('/manage-services') }}"
                                                   class="float-left btn btn-secondary">Cancel</a>
                                                <input class="btn btn-success float-right" type="submit"
                                                       value="Save &amp; Finish">
                                            </div><!--- form-group Starts --->

                                        </form><!--- form Ends --->

                                    </div>
                                </div><!--- tab-content Ends --->
                            </div><!--- col-md-8 Ends --->
                        </div><!--- row Ends --->
                    </div>

                </div>
            </section>
        </div>
    </div>
</div>


<script>

    $(document).ready(function () {

        var subcategory_id = {{ $service->subcategory_id }}

        $('#category_id').on('change', function () {
            var id = $(this).val();
            $.ajax('{{ route("get-subcategories", "") }}/'+id, {
                method: "GET",
                success: function(data) {
                    var options = '<option value="">Select a sub category</option>';
                    data.forEach(function(item) {
                       options += `<option ${subcategory_id == item.subcat_id ? 'selected' : ''} value=${item.subcat_id}>${item.subcategory_name}</option>`;
                    });
                    $('#subcategory_id').empty();
                    $('#subcategory_id').append(options);
                },
                error: function(error) {
                    console.log(error)
                }
            })
        });

        $('#category_id').trigger('change');
    });



</script>