    <?php if($status=='Active'): ?>
    <span class="badge badge-success light border-0"><?php echo e(App\Models\StaticConst::STATUS[0]); ?></span>
    <?php else: ?>
    <span class="badge badge-danger light border-0"><?php echo e(App\Models\StaticConst::STATUS[1]); ?></span>
    <?php endif; ?>
<?php /**PATH /home/f1qsj68b8fja/public_html/resources/views/components/admin/status.blade.php ENDPATH**/ ?>