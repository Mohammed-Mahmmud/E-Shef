<?php $__env->startSection('titleadmin'); ?>
        <?php echo e(str_replace("-"," ",ucfirst('dashboard'))); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('cssadmin'); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('contentadmin'); ?>


        <!--**********************************
            Content body start
        ***********************************-->
        
        <?php echo $__env->make('admin.layouts.content.content_start', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <!--**********************************
            Content body end
        ***********************************-->
        <?php echo $__env->make('admin.layouts.content.content_end', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        
<?php $__env->stopSection(); ?>


<?php $__env->startSection('jsadmin'); ?>
   <script src="<?php echo e(asset('admin/vendor/apexchart/apexchart.js')); ?>"></script>
    <script src="<?php echo e(asset('admin/js/dashboard/dashboard-1.js')); ?>"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/mohamed-khater/Documents/projects/eshef/resources/views/admin/dashboard.blade.php ENDPATH**/ ?>