<?php $__env->startSection('frontTitle',ucwords($subSlug2)); ?>
<?php $__env->startSection('frontStyle'); ?>
<style>
    .meta {
        text-transform: capitalize;
        font-weight: bold;
    }

    .meta a {
        display: inline
    }
    #newImage{
        display:none;
    }
    .img-fluid {
    max-width: 100%;
    height: auto;
}

</style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('frontContent'); ?>

<?php if (isset($component)) { $__componentOriginalfcd9a6bd0fd2db6ab59fc2bb73c9598110190a0f = $component; } ?>
<?php $component = App\View\Components\Website\Layouts\Breadcumb::resolve(['subSlug' => $subSlug] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('website.layouts.breadcumb'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Website\Layouts\Breadcumb::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['slug' => ''.e($slug ??'').'','subSlug2' => ''.e($subSlug2 ??'').'','route' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(route('home',['slug'=>$slug,'subSlug'=>$subSlug]))]); ?> <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalfcd9a6bd0fd2db6ab59fc2bb73c9598110190a0f)): ?>
<?php $component = $__componentOriginalfcd9a6bd0fd2db6ab59fc2bb73c9598110190a0f; ?>
<?php unset($__componentOriginalfcd9a6bd0fd2db6ab59fc2bb73c9598110190a0f); ?>
<?php endif; ?>

<?php if (isset($component)) { $__componentOriginalb0333b8e6d699b5967741d3d499c4af15ad858b3 = $component; } ?>
<?php $component = App\View\Components\Website\Pages\Product::resolve([] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('website.pages.product'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Website\Pages\Product::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['product' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($product),'subSlug' => ''.e($subSlug ??'').'','slug' => ''.e($slug ??'').'','subSlug2' => ''.e($subSlug2 ??'').'','route' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(route('home',['slug'=>$slug,'subSlug'=>$subSlug]))]); ?> <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalb0333b8e6d699b5967741d3d499c4af15ad858b3)): ?>
<?php $component = $__componentOriginalb0333b8e6d699b5967741d3d499c4af15ad858b3; ?>
<?php unset($__componentOriginalb0333b8e6d699b5967741d3d499c4af15ad858b3); ?>
<?php endif; ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('frontScript'); ?>
<script src="<?php echo e(asset('website/pages/products/script.js')); ?>"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('website.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/f1qsj68b8fja/public_html/resources/views/website/pages/viewProduct.blade.php ENDPATH**/ ?>