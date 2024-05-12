
        <textarea id="<?php echo e($id??''); ?>" class="form-control" placeholder="<?php echo e($placeholder??''); ?>"  <?php echo e($required ?? ''); ?> style="white-space: pre-line;" name="<?php echo e(($name)??''); ?>" rows ="<?php echo e($rows ??''); ?>"><?php echo e(isset($value) ? $value : old($old??'')); ?></textarea>

<?php /**PATH /home/mohamed-khater/Documents/projects/eshef/resources/views/components/admin/form/text.blade.php ENDPATH**/ ?>