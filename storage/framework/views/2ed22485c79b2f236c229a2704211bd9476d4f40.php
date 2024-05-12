<!DOCTYPE html>
<html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>">
<head>
    
    <?php if (isset($component)) { $__componentOriginal31371099e20e210603f6f28175a13c386956fb46 = $component; } ?>
<?php $component = App\View\Components\Meta\Meta::resolve([] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('Meta.Meta'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Meta\Meta::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal31371099e20e210603f6f28175a13c386956fb46)): ?>
<?php $component = $__componentOriginal31371099e20e210603f6f28175a13c386956fb46; ?>
<?php unset($__componentOriginal31371099e20e210603f6f28175a13c386956fb46); ?>
<?php endif; ?>
    <!-- title-->
    <title><?php echo $__env->yieldContent('titleadmin'); ?></title>
        <!-- css-->
    <?php echo $__env->make('admin.layouts.css.css', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php echo \Livewire\Livewire::styles(); ?>

</head>
<body data-typography="poppins" data-theme-version="light" data-layout="vertical" data-nav-headerbg="black" data-headerbg="color_1">
        
    <?php echo $__env->make('admin.layouts.main.preloader', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <!-- start content-->
    <div id="main-wrapper">
            
        <?php echo $__env->make('admin.layouts.head.nav', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                
            <?php echo $__env->make('admin.layouts.head.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                
                
            <?php echo $__env->make('admin.layouts.sidebar.sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                
                    
                    <?php echo $__env->yieldContent('contentadmin'); ?>
                    
            
         <?php echo $__env->make('admin.layouts.footer.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            
    </div>
    <!-- end content-->

    <!-- Scripts-->
    <?php echo $__env->make('admin.layouts.js.js', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

</body>
<?php echo \Livewire\Livewire::scripts(); ?>

</html>
<?php /**PATH /home/mohamed-khater/Documents/projects/eshef/resources/views/admin/layouts/master.blade.php ENDPATH**/ ?>