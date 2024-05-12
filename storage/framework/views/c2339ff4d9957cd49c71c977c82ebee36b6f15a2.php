<div class="d-flex align-items-center">
    <?php if(!empty($model->getFirstMediaUrl($name))): ?>
    <img src="<?php echo e(asset($model->getFirstMediaUrl($name) )); ?>" class="rounded-lg me-2"  width="100"  height="90" alt="">
    <?php else: ?>
    <img src="<?php echo e(asset('admin/images/noimage.jpg')); ?>" class="rounded-lg me-2" width="50" alt="">
    <?php endif; ?>
</div><?php /**PATH /home/mohamed-khater/Documents/projects/eshef/resources/views/components/admin/form/image-view.blade.php ENDPATH**/ ?>