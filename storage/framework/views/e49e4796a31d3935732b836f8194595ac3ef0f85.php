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
                                    <a class="nav-link active" id="nav-home-tab" data-toggle="tab" href="#overview">
                                        Overview </a>
                                </li>


                                <li class="nav-item">
                                    <a class="nav-link disabled" id="nav-home-tab" data-toggle="tab" href="#pricing">
                                        Pricing </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link disabled" id="nav-home-tab" data-toggle="tab" href="#description">
                                        Description &amp; FAQ </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link disabled" id="nav-home-tab" data-toggle="tab" href="#requirements">
                                        Requirements </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link disabled" id="nav-home-tab" data-toggle="tab" href="#gallery">
                                        Gallery </a>
                                </li>

                            </ul>

                        </div>

                    </nav>

                    <div class="container mt-5 mb-5"><!--- container mt-5 Starts --->
                        <div class="row"><!--- row Starts --->
                            <div class=" col-md-12"><!--- col-xl-8 Starts --->
                                <div class="tab-content card card-body"><!--- tab-content Starts --->
                                    <div class="tab-pane fade show active" id="overview">
                                        <form action="<?php echo e(route('service.create')); ?>" method="post"
                                              class="proposal-form"><!--- form Starts -->
                                            <?php echo csrf_field(); ?>
                                            <div class="form-group row"><!--- form-group row Starts --->
                                                <div class="col-md-3">Proposal Title</div>
                                                <div class="col-md-9">
                                                    <textarea name="title" rows="2" placeholder="I Will" required
                                                              class="form-control"></textarea>
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
                                                            <option value="<?php echo e($category->cat_id); ?>"><?php echo e($category->category_name); ?></option>
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
                                                               data-role="tagsinput">
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

                                            <div class="form-group mb-0"><!--- form-group Starts --->
                                                <a href="<?php echo e(URL::to('/manage-services')); ?>"
                                                   class="float-left btn btn-secondary">Cancel</a>
                                                <input class="btn btn-success float-right" type="submit"
                                                       value="Save &amp; Continue">
                                            </div><!--- form-group Starts --->

                                        </form><!--- form Ends -->
                                    </div>

                                    <div class="tab-pane fade " id="pricing">
                                        <h5 class="font-weight-normal float-left">Pricing</h5>
                                        <div class="float-right switch-box">
                                            <span class="text">Fixed Price :</span>
                                            <label class="switch">
                                                <input type="checkbox" class="pricing" checked="">
                                                <span class="slider"></span>
                                            </label>
                                        </div>

                                        <div class="clearfix"></div>

                                        <hr class="mt-0">

                                        <div class="form-group row proposal-price justify-content-center">
                                            <div class="col-md-7">
                                                <label>Proposal Price</label>
                                                <div class="input-group">
                                                    <span class="input-group-addon font-weight-bold"></span>
                                                    <input type="number" class="form-control" form="pricing-form"
                                                           name="proposal_price" min="2" value="5">
                                                </div>
                                                <small>If you want to use packages, you need to set this field value to
                                                    0.</small>
                                            </div>
                                        </div>


                                        <div class="form-group row proposal-price justify-content-center mb-4">
                                            <!--- form-group row Starts --->
                                            <div class="col-md-7">
                                                <label>Proposal Revisions</label>
                                                <select name="proposal_revisions" form="pricing-form"
                                                        class="form-control" required="">
                                                    <option value="0">0</option>
                                                    <option value="1" selected="">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5</option>
                                                    <option value="6">6</option>
                                                    <option value="7">7</option>
                                                    <option value="8">8</option>
                                                    <option value="9">9</option>
                                                    <option value="10">10</option>
                                                    <option value="unlimited">Unlimited Revisions</option>
                                                </select>
                                                <small>Set to 0 if your proposal is configured for instant
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


                                        <div class="form-group row proposal-price justify-content-center mb-4">
                                            <!--- form-group row Starts --->
                                            <div class="col-md-7">
                                                <label>Delivery Time</label>
                                                <select name="delivery_id" form="pricing-form" class="form-control"
                                                        required="">
                                                    <option value="">Select Delivery Time</option>
                                                    <option value="1" selected="">1 Day</option>
                                                    <option value="2">2 Days</option>
                                                    <option value="3">3 Days</option>
                                                    <option value="4">4 Days</option>
                                                    <option value="5">5 Days</option>
                                                    <option value="6">6 Days</option>
                                                    <option value="7">7 Days</option>
                                                    <option value="8">8 Days</option>
                                                    <option value="9">9 Days</option>
                                                    <option value="10">10 Days</option>
                                                    <option value="11">11 Days</option>
                                                    <option value="12">12 Days</option>
                                                    <option value="13">13 Days</option>
                                                    <option value="14">14 Days</option>
                                                    <option value="15">15 Days</option>
                                                </select>
                                                <small>Please select 1 day if this is for an instant delivery.</small>
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


                                        <div class="packages" style="display: none;">
                                            <table class="table table-bordered packages" style="display: none;">
                                                <thead>
                                                <tr>
                                                    <th></th>
                                                    <th>Basic</th>
                                                    <th>Standard</th>
                                                    <th>Advance</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <form action="#" method="post" class="pricing-form"
                                                      id="pricing-form"></form>
                                                <input type="hidden" name="proposal_packages[1][package_id]"
                                                       form="pricing-form" value="160">
                                                <input type="hidden" name="proposal_packages[2][package_id]"
                                                       form="pricing-form" value="161">
                                                <input type="hidden" name="proposal_packages[3][package_id]"
                                                       form="pricing-form" value="162">

                                                <tr>
                                                    <td>Description</td>
                                                    <td class="p-0"><textarea name="proposal_packages[1][description]"
                                                                              form="pricing-form" class="form-control"
                                                                              placeholder="Description"
                                                                              rows="3"></textarea></td>
                                                    <td class="p-0"><textarea name="proposal_packages[2][description]"
                                                                              form="pricing-form" class="form-control"
                                                                              placeholder="Description"
                                                                              rows="3"></textarea></td>
                                                    <td class="p-0"><textarea name="proposal_packages[3][description]"
                                                                              form="pricing-form" class="form-control"
                                                                              placeholder="Description"
                                                                              rows="3"></textarea></td>
                                                </tr>
                                                <tr>

                                                    <td>
                                                        <span>sfsf</span>
                                                        <a href="#" data-attribute="sfsf"
                                                           class="edit-attribute float-right">
                                                            <i class="fa fa-pencil float-right"
                                                               style="font-size: 12px;"></i>
                                                        </a>
                                                    </td>

                                                    <td class="p-0">
                                                        <input type="hidden" name="package_attributes[1][attribute_id]"
                                                               form="pricing-form" value="16">
                                                        <input type="text" name="package_attributes[1][attribute_value]"
                                                               form="pricing-form" class="form-control" value="">
                                                        <i class="fa fa-trash delete-attribute"
                                                           data-attribute="sfsf"></i>
                                                    </td>
                                                    <td class="p-0">
                                                        <input type="hidden" name="package_attributes[2][attribute_id]"
                                                               form="pricing-form" value="17">
                                                        <input type="text" name="package_attributes[2][attribute_value]"
                                                               form="pricing-form" class="form-control" value="">
                                                        <i class="fa fa-trash delete-attribute"
                                                           data-attribute="sfsf"></i>
                                                    </td>
                                                    <td class="p-0">
                                                        <input type="hidden" name="package_attributes[3][attribute_id]"
                                                               form="pricing-form" value="18">
                                                        <input type="text" name="package_attributes[3][attribute_value]"
                                                               form="pricing-form" class="form-control" value="">
                                                        <i class="fa fa-trash delete-attribute"
                                                           data-attribute="sfsf"></i>
                                                    </td>
                                                </tr>

                                                <tr class="delivery-time">
                                                    <td>Delivery Time</td>
                                                    <td class="p-0">
                                                        <select name="proposal_packages[1][delivery_time]"
                                                                class="form-control">
                                                            <option value="1">1 Day</option>
                                                            <option value="2">2 Days</option>
                                                            <option value="3">3 Days</option>
                                                            <option value="4">4 Days</option>
                                                            <option value="5">5 Days</option>
                                                            <option value="6">6 Days</option>
                                                            <option value="7">7 Days</option>
                                                            <option value="8">8 Days</option>
                                                            <option value="9">9 Days</option>
                                                            <option value="10">10 Days</option>
                                                            <option value="11">11 Days</option>
                                                            <option value="12">12 Days</option>
                                                            <option value="13">13 Days</option>
                                                            <option value="14">14 Days</option>
                                                            <option value="15">15 Days</option>
                                                        </select>
                                                    </td>
                                                    <td class="p-0">
                                                        <select name="proposal_packages[2][delivery_time]"
                                                                form="pricing-form" class="form-control">
                                                            <option value="1" selected="">1 Day</option>
                                                            <option value="2">2 Days</option>
                                                            <option value="3">3 Days</option>
                                                            <option value="4">4 Days</option>
                                                            <option value="5">5 Days</option>
                                                            <option value="6">6 Days</option>
                                                            <option value="7">7 Days</option>
                                                            <option value="8">8 Days</option>
                                                            <option value="9">9 Days</option>
                                                            <option value="10">10 Days</option>
                                                            <option value="11">11 Days</option>
                                                            <option value="12">12 Days</option>
                                                            <option value="13">13 Days</option>
                                                            <option value="14">14 Days</option>
                                                            <option value="15">15 Days</option>
                                                        </select></td>
                                                    <td class="p-0">
                                                        <select name="proposal_packages[3][delivery_time]"
                                                                form="pricing-form" class="form-control">
                                                            <option value="1" selected="">1 Day</option>
                                                            <option value="2">2 Days</option>
                                                            <option value="3">3 Days</option>
                                                            <option value="4">4 Days</option>
                                                            <option value="5">5 Days</option>
                                                            <option value="6">6 Days</option>
                                                            <option value="7">7 Days</option>
                                                            <option value="8">8 Days</option>
                                                            <option value="9">9 Days</option>
                                                            <option value="10">10 Days</option>
                                                            <option value="11">11 Days</option>
                                                            <option value="12">12 Days</option>
                                                            <option value="13">13 Days</option>
                                                            <option value="14">14 Days</option>
                                                            <option value="15">15 Days</option>
                                                        </select>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>Revisions</td>
                                                    <td class="p-0">
                                                        <select name="proposal_packages[1][revisions]"
                                                                form="pricing-form" class="form-control">
                                                            <option value="0" selected="">0</option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="unlimited">Unlimited Revisions</option>
                                                        </select>
                                                    </td>
                                                    <td class="p-0">
                                                        <select name="proposal_packages[2][revisions]"
                                                                form="pricing-form" class="form-control">
                                                            <option value="0" selected="">0</option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="unlimited">Unlimited Revisions</option>
                                                        </select>
                                                    </td>
                                                    <td class="p-0">
                                                        <select name="proposal_packages[3][revisions]"
                                                                form="pricing-form" class="form-control">
                                                            <option value="0" selected="">0</option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="unlimited">Unlimited Revisions</option>
                                                        </select>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>Price</td>
                                                    <td class="p-0">

                                                        <input type="number" min="0" required=""
                                                               name="proposal_packages[1][price]" form="pricing-form"
                                                               value="5" class="form-control">
                                                    </td>
                                                    <td class="p-0">
                                                        <input type="number" min="0" required=""
                                                               name="proposal_packages[2][price]" form="pricing-form"
                                                               value="10" class="form-control">
                                                    </td>
                                                    <td class="p-0">

                                                        <input type="number" min="0" required=""
                                                               name="proposal_packages[3][price]" form="pricing-form"
                                                               value="15" class="form-control">
                                                    </td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <!-- Modal -->
                                            <div class="modal fade" id="edit-modal" role="dialog">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title">Edit Attribute Name</h5>
                                                            <button type="button" class="close" data-dismiss="modal">
                                                                <span>×</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form action="" method="post" class="update-attribute">
                                                                <input type="hidden" name="name" value="">
                                                                <div class="form-group">
                                                                    <input type="text" class="form-control"
                                                                           name="new_name" placeholder="Attribute Name">
                                                                </div>
                                                                <div class="form-group text-center mb-0">
                                                                    <input type="submit" class="btn btn-success"
                                                                           value="Update Attribute Name">
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group row add-attribute justify-content-center"
                                             style="display: none;">
                                            <div class="col-md-7">
                                                <div class="input-group">
                                                    <input class="form-control form-control-sm attribute-name"
                                                           placeholder="Add New Attribute" name="">
                                                    <button class="btn btn btn-success input-group-addon insert-attribute">
                                                        <i class="fa fa-cloud-upload"></i> &nbsp;Insert
                                                    </button>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="form-group mt-4 mb-0"><!--- form-group Starts --->
                                            <a href="#" class="btn btn-secondary float-left back-to-instant">Back</a>
                                            <input class="btn btn-success float-right" type="submit" form="pricing-form"
                                                   value="Save &amp; Continue">
                                        </div><!--- form-group Starts --->

                                    </div>
                                    <div class="tab-pane fade" id="description">
                                        <h5 class="font-weight-normal">Description</h5>
                                        <hr>
                                        <p class="small mb-2"> Project Details </p>

                                        <form action="#" method="post" class="proposal-form" id="form1">
                                            <!--- form Starts -->
                                            <textarea class="form-control"></textarea>
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

                                        </form><!--- form Ends -->


                                        <div class="form-group mb-0"><!--- form-group Starts --->
                                            <a href="#" class="btn btn-secondary float-left backButton">Back</a>
                                            <input class="btn btn-success float-right" type="submit" form="form1"
                                                   value="Save &amp; Continue">
                                        </div><!--- form-group Starts --->

                                    </div>
                                    <div class="tab-pane fade" id="requirements">
                                        <form action="#" method="post" class="proposal-form"><!--- form Starts -->

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
                                                <textarea name="buyer_instruction"
                                                          placeholder="If you need to obtain information, files or other items from the buyer prior to starting your work, please add your instructions here. For example: Please send me your company name or Please send me the photo you need me to edit."
                                                          rows="4" class="form-control"></textarea>

                                            </div>


                                            <div class="form-group mb-0"><!--- form-group Starts --->

                                                <a href="#" class="btn btn-secondary float-left back-to-desc">Back</a>

                                                <input class="btn btn-success float-right" type="submit"
                                                       value="Save &amp; Continue">

                                            </div><!--- form-group Starts --->

                                        </form><!--- form Ends -->


                                    </div>
                                    <div class="tab-pane fade" id="gallery">
                                        <h5 class="font-weight-normal">Build Your Proposal Gallery</h5>
                                        <h6 class="font-weight-normal">Add memorable content to your gallery to set
                                            yourself apart from competitors.</h6>

                                        <hr>

                                        <p class="text-right mt-3">
                                            <span class="float-left">Proposal Photos </span>
                                            <small class="text-muted" style="font-size:78%;">Upload Photos that describe
                                                or related to your proposal.your image size must be 700 x 390
                                                pixels.</small>
                                        </p>

                                        <form action="" class="proposal-form" id="gallery_form"><!--- form Starts --->
                                            <div class="row gallery mb-3"><!--- row gallery Starts --->
                                                <div class="col-md-6"><!--- col-md-3 Starts --->
                                                    <div class="img">
                                                        <input type="file" class="form-control"/>
                                                    </div>
                                                </div><!--- col-md-3 Ends --->
                                                <div class="col-md-6"><!--- col-md-3 Starts --->
                                                    <div class="pic">
                                                        <input type="file" class="form-control"/>
                                                    </div>
                                                </div><!--- col-md-3 Ends --->
                                                <div class="col-md-6"><!--- col-md-3 Starts --->
                                                    <div class="pic">
                                                        <input type="file" class="form-control"/>
                                                    </div>
                                                </div><!--- col-md-3 Ends --->
                                                <div class="col-md-6"><!--- col-md-3 Starts --->
                                                    <div class="pic">
                                                        <input type="file" class="form-control"/>
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


                                                    <input type="file" class="form-control"/>

                                                </div><!--- col-md-3 Ends --->
                                            </div><!--- row gallery Ends --->


                                        </form><!--- form Ends --->

                                        <div class="mb-5"></div>

                                        <div class="form-group mb-0"><!--- form-group Starts --->

                                            <a href="#" class="btn btn-secondary float-left back-to">Back</a>

                                            <input class="btn btn-success float-right" type="submit" form="gallery_form"
                                                   value="Save &amp; Continue">

                                            <a href="JobayedSumon/test" id="previewProposal"
                                               class="btn btn-success float-right mr-3 d-none">Preview Proposal</a>

                                            <!--
                                              <input class="btn btn-success float-right" type="submit" form="gallery_form" value="Save & Continue">
                                              <a href="JobayedSumon/test" id="previewProposal" class="btn btn-success float-right mr-3 d-none">Preview Proposal</a>

                                             -->

                                        </div><!--- form-group Starts --->


                                    </div>

                                    <input type="hidden" name="section" value="overview">
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
        $('#category_id').on('change', function () {
            var id = $(this).val();
            $.ajax('<?php echo e(route("get-subcategories", "")); ?>/'+id, {
                method: "GET",
                success: function(data) {
                    var options = '<option value="">Select a sub category</option>';
                    data.forEach(function(item) {
                       options += `<option value=${item.subcat_id}>${item.subcategory_name}</option>`;
                    });
                    $('#subcategory_id').empty();
                    $('#subcategory_id').append(options);
                },
                error: function(error) {
                    console.log(error)
                }
            })
        })
    });



</script><?php /**PATH /var/www/html/doptor/resources/views/service/create-my-service.blade.php ENDPATH**/ ?>