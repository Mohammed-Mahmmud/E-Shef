  <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title><?php echo $__env->yieldContent('frontTitle'); ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="sitemap" content="<?php echo e(asset('sitemap.xml')); ?>">
    <meta name="description" content="<?php echo $__env->yieldContent('frontTitle'); ?> E-Shef - Egyptian Herbs & Food">
    <meta name="keywords" content="<?php echo $__env->yieldContent('frontTitle'); ?> E-Shef - Egyptian Herbs & Food">
    <meta name="robots" content="index, follow">
    <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>" />
    <meta name="author" content="E-SHEF">
    
    
    <meta name="format-detection" content="telephone=no">
    <link rel="icon" type="image/png" sizes="200x200" href="<?php echo e(asset('website/assets')); ?>/img/favicons/android.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="<?php echo e(asset('website/assets')); ?>/img/favicons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <!-- Mobile Specific Metas -->
    <!--<link rel="manifest" href="<?php echo e(asset('website')); ?>/vebder/livewire/manifest.json">-->
    <?php echo $__env->yieldContent('frontMeta'); ?>
    <!--==============================
      Google Fonts
    ============================== -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="<?php echo e(asset('website/assets')); ?>/css2?family=Manrope:wght@200;300;400;500;600;700;800&display=swap" rel="stylesheet">
    
    <?php echo $__env->make('website.layouts.partials.style', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    

  <?php /**PATH /home/mohamed-khater/Documents/projects/eshef/www/resources/views/website/layouts/partials/head.blade.php ENDPATH**/ ?>