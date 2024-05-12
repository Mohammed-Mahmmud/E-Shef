<?php $__env->startSection('frontTitle',ucwords($subSlug)); ?>
<?php $__env->startSection('frontMeta'); ?>
    <?php if (isset($component)) { $__componentOriginal04abfa91c21ff069dbe26265c1f361a6ceff1525 = $component; } ?>
<?php $component = App\View\Components\Website\Layouts\Meta::resolve(['slug' => $slug,'subSlug' => $subSlug] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('website.layouts.meta'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Website\Layouts\Meta::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?> <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal04abfa91c21ff069dbe26265c1f361a6ceff1525)): ?>
<?php $component = $__componentOriginal04abfa91c21ff069dbe26265c1f361a6ceff1525; ?>
<?php unset($__componentOriginal04abfa91c21ff069dbe26265c1f361a6ceff1525); ?>
<?php endif; ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('frontStyle'); ?>
<style>
.black{
    color:black; 
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
<?php $component->withAttributes(['slug' => ''.e($slug ??'').'','subSlug2' => ''.e($subSlug ??'').'','route' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(route('home',['slug'=>$slug,'subSlug'=>$subSlug]))]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalfcd9a6bd0fd2db6ab59fc2bb73c9598110190a0f)): ?>
<?php $component = $__componentOriginalfcd9a6bd0fd2db6ab59fc2bb73c9598110190a0f; ?>
<?php unset($__componentOriginalfcd9a6bd0fd2db6ab59fc2bb73c9598110190a0f); ?>
<?php endif; ?>

    <!--==============================
    Project Area  
    ==============================-->
  <?php if (isset($component)) { $__componentOriginala4470d530ac5ac3b479345c6adbb90a75a407b93 = $component; } ?>
<?php $component = App\View\Components\Website\Pages\ProductsCategory::resolve(['subSlug' => $subSlug] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('website.pages.productsCategory'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Website\Pages\ProductsCategory::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['slug' => ''.e($slug).'']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginala4470d530ac5ac3b479345c6adbb90a75a407b93)): ?>
<?php $component = $__componentOriginala4470d530ac5ac3b479345c6adbb90a75a407b93; ?>
<?php unset($__componentOriginala4470d530ac5ac3b479345c6adbb90a75a407b93); ?>
<?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('frontScript'); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('website.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/mohamed-khater/Documents/projects/eshef/www/resources/views/website/pages/products.blade.php ENDPATH**/ ?>