
<?php $__env->startComponent('mail::message'); ?>
First Name: <?php echo e($event['firstname']); ?>

<br><br>
Last Name: <?php echo e($event['lastname']); ?>

<br><br>
Email: <?php echo e($event['email']); ?>

<br><br>
Phone: <?php echo e($event['phone']); ?>

<br><br><br>
Message: <?php echo e($event['message']); ?>

<br><br><br>
Created_at: <?php echo e($event['created_at']); ?>

<br><br>
Thanks,<br>
<?php echo e(config('app.name')); ?>

<?php echo $__env->renderComponent(); ?><?php /**PATH /home/f1qsj68b8fja/public_html/resources/views/mail/frontend/adminMessage.blade.php ENDPATH**/ ?>