<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <?php echo $__env->make('website.layouts.partials.head', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</head>
<body>
    <!--********************************
   		Code Start From Here 
	******************************** -->

    <?php if (isset($component)) { $__componentOriginald4134587cf08db2874877aab4e68b7cf4aa16838 = $component; } ?>
<?php $component = App\View\Components\Website\Layouts\Header::resolve([] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('website.layouts.header'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Website\Layouts\Header::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?> <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginald4134587cf08db2874877aab4e68b7cf4aa16838)): ?>
<?php $component = $__componentOriginald4134587cf08db2874877aab4e68b7cf4aa16838; ?>
<?php unset($__componentOriginald4134587cf08db2874877aab4e68b7cf4aa16838); ?>
<?php endif; ?>
    <?php echo $__env->yieldContent('frontContent'); ?>
    <?php if (isset($component)) { $__componentOriginald5ece3f4c9e4dc9110fbe5179d35cd04bdf1dc7d = $component; } ?>
<?php $component = App\View\Components\Website\Layouts\Footer::resolve([] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('website.layouts.footer'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Website\Layouts\Footer::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?> <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginald5ece3f4c9e4dc9110fbe5179d35cd04bdf1dc7d)): ?>
<?php $component = $__componentOriginald5ece3f4c9e4dc9110fbe5179d35cd04bdf1dc7d; ?>
<?php unset($__componentOriginald5ece3f4c9e4dc9110fbe5179d35cd04bdf1dc7d); ?>
<?php endif; ?>
    
     <!-- Scroll To Top -->
    <div class="scroll-top">
        <svg class="progress-circle svg-content" width="100%" height="100%" viewbox="-1 -1 102 102">
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" style="transition: stroke-dashoffset 10ms linear 0s; stroke-dasharray: 307.919, 307.919; stroke-dashoffset: 307.919;"></path>
        </svg>
    </div>
    <?php echo $__env->make('website.layouts.partials.script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</body>
</html>
<?php /**PATH /home/f1qsj68b8fja/public_html/resources/views/website/layouts/master.blade.php ENDPATH**/ ?>