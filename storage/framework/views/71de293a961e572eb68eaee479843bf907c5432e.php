<?php
    $section = session()->get('section') ?? 'overview';
?>

<div class="page-title-overlap pt-4"
     style="background-image: url('<?php echo e(url('/')); ?>/public/storage/settings/<?php echo e($allsettings->site_banner); ?>');">
    <div class="container d-lg-flex justify-content-between py-2 py-lg-3">
        <div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb flex-lg-nowrap justify-content-center justify-content-lg-star">
                    <li class="breadcrumb-item"><a class="text-nowrap" href="<?php echo e(URL::to('/')); ?>"><i
                                    class="dwg-home"></i><?php echo e(Helper::translation(2862,$translate,'')); ?></a></li>
                    <li class="breadcrumb-item text-nowrap active"
                        aria-current="page"><?php echo e(Helper::translation(2931,$translate,'')); ?></li>
                    <li class="breadcrumb-item text-nowrap active"
                        aria-current="page"><?php echo e($type_name->item_type_name); ?></li>

                </ol>
            </nav>
        </div>
        <div class="order-lg-1 pr-lg-4 text-center text-lg-left">
            <h1 class="h3 mb-0 text-white"><?php echo e(Helper::translation(2931,$translate,'')); ?> <span
                        class="dwg-arrow-right"></span> <?php echo e($type_name->item_type_name); ?></h1>
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
                                class="dwg-menu mr-2"></i><?php echo e(Helper::translation(4878,$translate,'')); ?></a></div>
                <!-- Actual menu-->
                <?php if(Auth::user()->id != 1): ?>
                    <?php echo $__env->make('dashboard-menu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php endif; ?>
            </aside>
            <!-- Content-->
            <section class="col-lg-8 pt-lg-4 pb-4 mb-3">
                <div class="pt-2 px-4 pl-lg-0 pr-xl-5">
                    <nav id="tabs"><!--- tabs Starts --->

                        <div class="container">

                            <ul class="nav nav-tabs" id="nav-tab" role="tablist">

                                <li class="nav-item">
                                    <a class="nav-link <?php echo e($section == 'overview' ? 'active' : ''); ?>" id="nav-home-tab" data-toggle="tab" href="#overview">
                                        Overview </a>
                                </li>


                                <li class="nav-item">
                                    <a class="nav-link <?php echo e($section == 'pricing' ? 'active' : ''); ?>" id="nav-home-tab" data-toggle="tab" href="#pricing">
                                        Pricing </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link <?php echo e($section == 'description' ? 'active' : ''); ?>" id="nav-home-tab" data-toggle="tab" href="#description">
                                        Description &amp; FAQ </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link <?php echo e($section == 'requirements' ? 'active' : ''); ?>" id="nav-home-tab" data-toggle="tab" href="#requirements">
                                        Requirements </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link <?php echo e($section == 'gallery' ? 'active' : ''); ?>" id="nav-home-tab" data-toggle="tab" href="#gallery">
                                        Gallery </a>
                                </li>

                            </ul>

                        </div>

                    </nav>

                    <div class="container mt-5 mb-5"><!--- container mt-5 Starts --->
                        <div class="row"><!--- row Starts --->
                            <div class=" col-md-12"><!--- col-xl-8 Starts --->
                                <div class="tab-content card card-body"><!--- tab-content Starts --->
                                    <div class="tab-pane fade <?php echo e($section == 'overview' ? 'show active' : ''); ?>" id="overview">
                                        <form action="<?php echo e(route('service.create')); ?>" method="post"
                                              class="service-form"><!--- form Starts -->
                                            <?php echo csrf_field(); ?>
                                            <div class="form-group row"><!--- form-group row Starts --->
                                                <div class="col-md-3">Service Title</div>
                                                <div class="col-md-9">
                                                    <textarea name="title" rows="2" placeholder="I Will" required
                                                              class="form-control"><?php echo e($service->title); ?></textarea>
                                                </div>
                                                <?php $__errorArgs = ['title'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                                <small class="form-text text-danger"><?php echo e($message); ?></small>
                                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                            </div><!--- form-group row Ends --->

                                            <div class="form-group row"><!--- form-group row Starts --->
                                                <div class="col-md-3"> Category</div>
                                                <div class="col-md-9">
                                                    <select name="category_id" id="category_id"
                                                            class="form-control mb-3" required>
                                                        <option value="">Select a category</option>
                                                        <?php $__empty_1 = true; $__currentLoopData = $service_categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                                                            <option <?php echo e($service->category_id == $category->cat_id ? 'selected' : ''); ?> value="<?php echo e($category->cat_id); ?>"><?php echo e($category->category_name); ?></option>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                                                        <?php endif; ?>
                                                    </select>
                                                    <?php $__errorArgs = ['category_id'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                                    <small class="form-text text-danger"><?php echo e($message); ?></small>
                                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>


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
                                                    <?php $__errorArgs = ['subcategory_id'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                                    <small class="form-text text-danger"><?php echo e($message); ?></small>
                                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                                </div>
                                            </div>

                                            <div class="form-group row"><!--- form-group row Starts --->
                                                <div class="col-md-3">Tags</div>
                                                <div class="col-md-9">
                                                    <div class="bootstrap-tagsinput">
                                                        <input type="text" name="tags" class="form-control"
                                                               data-role="tagsinput" value="<?php echo e($service->tags); ?>">
                                                        <span class="text-muted text-sm">Multiple tags should be comma seperated</span>
                                                    </div>
                                                </div>
                                                <?php $__errorArgs = ['tags'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                                <small class="form-text text-danger"><?php echo e($message); ?></small>
                                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                            </div><!--- form-group row Ends --->

                                            <input type="hidden" name="section" value="pricing">

                                            <div class="form-group mb-0"><!--- form-group Starts --->
                                                <a href="<?php echo e(URL::to('/manage-services')); ?>"
                                                   class="float-left btn btn-secondary">Cancel</a>
                                                <input class="btn btn-success float-right" type="submit"
                                                       value="Save &amp; Continue">
                                            </div><!--- form-group Starts --->

                                        </form><!--- form Ends -->
                                    </div>

                                    <div class="tab-pane fade <?php echo e($section == 'pricing' ? 'show active' : ''); ?>" id="pricing">
                                        <form action="<?php echo e(route('service.update', $service->slug)); ?>" method="post">
                                            <?php echo csrf_field(); ?>
                                        <h5 class="font-weight-normal float-left">Pricing</h5>
                                        <div class="float-right switch-box">
                                            <span class="text">Fixed Price :</span>
                                            <label class="switch">
                                                <input type="checkbox" class="pricing" name="is_fixed_price" <?php echo e($service->is_fixed_price ? 'checked' : ''); ?>>
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
                                                           name="service_price" min="1" value="<?php echo e($service->service_price); ?>">
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

                                                    <?php for($i=0; $i<=10; $i++): ?>
                                                    <option <?php echo e($service->service_revision == $i ? 'selected': ''); ?> value="<?php echo e($i); ?>"><?php echo e($i); ?></option>
                                                    <?php endfor; ?>
                                                    <option <?php echo e($service->service_revision == -1 ? 'selected' : ''); ?> value="-1">Unlimited Revisions</option>
                                                </select>
                                                <small>Set to 0 if your service is configured for instant
                                                    delivery.</small>
                                            </div>
                                            <?php $__errorArgs = ['title'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <small class="form-text text-danger"><?php echo e($message); ?></small>
                                            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                        </div><!--- form-group row Ends --->


                                        <div class="form-group row service-price justify-content-center mb-4">
                                            <!--- form-group row Starts --->
                                            <div class="col-md-7">
                                                <label>Delivery Time</label>
                                                <select name="delivery_time" class="form-control"
                                                        required="">
                                                    <option value="">Select Delivery Time</option>
                                                    <?php for($i=1; $i<=15; $i++): ?>
                                                        <option <?php echo e($service->delivery_time == $i ? 'selected': ''); ?> value="<?php echo e($i); ?>"><?php echo e($i); ?>

                                                            <?php echo e($i == 1 ? 'day' : 'days'); ?></option>
                                                    <?php endfor; ?>
                                                </select>
                                                <small>Please select 1 day if this is for an instant delivery.</small>
                                            </div>
                                            <?php $__errorArgs = ['delivery_time'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <small class="form-text text-danger"><?php echo e($message); ?></small>
                                            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                        </div><!--- form-group row Ends --->

































































































































































































































































                                            <input type="hidden" name="section" value="description">
                                            <div class="form-group mb-0"><!--- form-group Starts --->
                                                <a href="<?php echo e(URL::to('/manage-services')); ?>"
                                                   class="float-left btn btn-secondary">Cancel</a>
                                                <input class="btn btn-success float-right" type="submit"
                                                       value="Save &amp; Continue">
                                            </div><!--- form-group Starts --->
                                        </form>
                                    </div>

                                    <div class="tab-pane fade <?php echo e($section == 'description' ? 'show active' : ''); ?>" id="description">
                                        <h5 class="font-weight-normal">Description</h5>
                                        <hr>
                                        <p class="small my-2"> Service Details </p>

                                        <form action="<?php echo e(route('service.update', $service->slug)); ?>" method="post">
                                        <?php echo csrf_field(); ?>
                                            <!--- form Starts -->
                                            <textarea name="description" class="form-control"><?php echo e($service->description); ?></textarea>
                                            <?php $__errorArgs = ['title'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <small class="form-text text-danger"><?php echo e($message); ?></small>
                                            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>

                                            <input type="hidden" name="section" value="requirements">

                                            <div class="form-group mb-0 mt-3"><!--- form-group Starts --->
                                                <a href="<?php echo e(URL::to('/manage-services')); ?>"
                                                   class="float-left btn btn-secondary">Cancel</a>
                                                <input class="btn btn-success float-right" type="submit"
                                                       value="Save &amp; Continue">
                                            </div><!--- form-group Starts --->

                                        </form><!--- form Ends -->




                                    </div>
                                    <div class="tab-pane fade <?php echo e($section == 'requirements' ? 'show active' : ''); ?>" id="requirements">
                                        <form action="<?php echo e(route('service.update', $service->slug)); ?>" method="post">
                                            <?php echo csrf_field(); ?>
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
                                                          rows="4" class="form-control"><?php echo e($service->requirements); ?></textarea>

                                            </div>


                                            <input type="hidden" name="section" value="gallery">

                                            <div class="form-group mb-0"><!--- form-group Starts --->
                                                <a href="<?php echo e(URL::to('/manage-services')); ?>"
                                                   class="float-left btn btn-secondary">Cancel</a>
                                                <input class="btn btn-success float-right" type="submit"
                                                       value="Save &amp; Continue">
                                            </div><!--- form-group Starts --->

                                        </form><!--- form Ends -->


                                    </div>
                                    <div class="tab-pane fade <?php echo e($section == 'gallery' ? 'show active' : ''); ?>" id="gallery">
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

                                        <form action="<?php echo e(route('service.update', $service->slug)); ?>" method="post" enctype="multipart/form-data">
                                            <?php echo csrf_field(); ?>
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
                                                <a href="<?php echo e(URL::to('/manage-services')); ?>"
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

        var subcategory_id = <?php echo e($service->subcategory_id); ?>


        $('#category_id').on('change', function () {
            var id = $(this).val();
            $.ajax('<?php echo e(route("get-subcategories", "")); ?>/'+id, {
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



</script><?php /**PATH /var/www/html/doptor/resources/views/service/edit-my-service.blade.php ENDPATH**/ ?>