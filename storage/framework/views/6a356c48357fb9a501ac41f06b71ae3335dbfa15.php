<?php if($allsettings->maintenance_mode == 0): ?>
        <!DOCTYPE HTML>
<html lang="en">
<head>
    <title><?php echo e($allsettings->site_title); ?> - <?php if(Auth::user()->user_type == 'vendor'): ?> <?php echo e(Helper::translation(2931,$translate,'')); ?> <?php else: ?> <?php echo e(Helper::translation(2860,$translate,'')); ?> <?php endif; ?></title>
    <?php echo $__env->make('meta', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('style', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</head>
<body>
<?php echo $__env->make('header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php if($addition_settings->subscription_mode == 0): ?>
    <?php echo $__env->make('service.edit-my-service', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php else: ?>
    <?php if(Auth::user()->user_type == 'vendor'): ?>
        <?php if(Auth::user()->user_subscr_date >= date('Y-m-d')): ?>
            <?php echo $__env->make('service.edit-my-service', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <?php else: ?>
            <?php echo $__env->make('expired', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <?php endif; ?>
    <?php else: ?>
        <?php echo $__env->make('not-found', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php endif; ?>
<?php endif; ?>
<?php echo $__env->make('footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php echo $__env->make('script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
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
<?php echo $__env->make('upload-size', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</body>
</html>
<?php else: ?>
    <?php echo $__env->make('503', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php endif; ?><?php /**PATH /var/www/html/doptor/resources/views/service/edit-service.blade.php ENDPATH**/ ?>