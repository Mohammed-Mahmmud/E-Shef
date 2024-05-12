    <!-- Required vendors -->

    <script src="<?php echo e(asset('admin/vendor/global/global.min.js')); ?>"></script>
    <script src="<?php echo e(asset('admin/vendor/chart.js/Chart.bundle.min.js')); ?>"></script>
    <script src="<?php echo e(asset('admin/vendor/bootstrap-select/dist/js/bootstrap-select.min.js')); ?>"></script>

    <script src="<?php echo e(asset('admin/vendor/draggable/draggable.js')); ?>"></script>


    <!-- tagify -->
    <script src="<?php echo e(asset('admin/vendor/tagify/dist/tagify.js')); ?>"></script>

    <script src="<?php echo e(asset('admin/vendor/datatables/js/jquery.dataTables.min.js')); ?>"></script>
    <script src="<?php echo e(asset('admin/vendor/datatables/js/dataTables.buttons.min.js')); ?>"></script>
    <script src="<?php echo e(asset('admin/vendor/datatables/js/buttons.html5.min.js')); ?>"></script>
    <script src="<?php echo e(asset('admin/vendor/datatables/js/jszip.min.js')); ?>"></script>
    <script src="<?php echo e(asset('admin/js/plugins-init/datatables.init.js')); ?>"></script>

    <!-- Apex Chart -->

    <script src="<?php echo e(asset('admin/vendor/bootstrap-datetimepicker/js/moment.js')); ?>"></script>
    <script src="<?php echo e(asset('admin/vendor/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js')); ?>"></script>


    <!-- Vectormap -->
    <script src="<?php echo e(asset('admin/vendor/jqvmap/js/jquery.vmap.min.js')); ?>"></script>
    <script src="<?php echo e(asset('admin/vendor/jqvmap/js/jquery.vmap.world.js')); ?>"></script>
    <script src="<?php echo e(asset('admin/vendor/jqvmap/js/jquery.vmap.usa.js')); ?>"></script>
    <script src="<?php echo e(asset('admin/js/custom.js')); ?>"></script>
    <script src="<?php echo e(asset('admin/js/deznav-init.js')); ?>"></script>
    <script src="<?php echo e(asset('admin/js/demo.js')); ?>"></script>
    <script src="<?php echo e(asset('admin/js/styleSwitcher.js')); ?>"></script>
    <script src="<?php echo e(asset('admin/js/toastr/js/toastr.min.js')); ?>"></script>
    <script src="<?php echo e(asset('admin/js/ckeditor/ckeditor.js')); ?>"></script>
    <?php echo $__env->make('admin.layouts.Validation.errorValidation', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <?php echo $__env->yieldContent('jsadmin'); ?>

    <script type="text/javascript">
        $(document).ready(function(){
            $('#image').change(function(e){
                var reader = new FileReader();
                reader.onload = function(e){
                    $('#mainThmb').attr('src',e.target.result);
                    $("#mainThmb").css("width", "10%");
                }
                reader.readAsDataURL(e.target.files['0']);
            });
        });
    </script>

        <script type="text/javascript">
        $(document).ready(function(){
            $('#image2').change(function(e){
                var reader = new FileReader();
                reader.onload = function(e){
                    $('#mainThmb2').attr('src',e.target.result);
                    $("#mainThmb2").css("width", "10%");
                }
                reader.readAsDataURL(e.target.files['0']);
            });
        });
    </script><?php /**PATH /home/f1qsj68b8fja/public_html/resources/views/admin/layouts/js/js.blade.php ENDPATH**/ ?>