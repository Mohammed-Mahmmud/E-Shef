<?php $__env->startSection('frontTitle',ucwords('Contact Us')); ?>
<?php $__env->startSection('frontStyle'); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('frontContent'); ?>

<?php if (isset($component)) { $__componentOriginalfcd9a6bd0fd2db6ab59fc2bb73c9598110190a0f = $component; } ?>
<?php $component = App\View\Components\Website\Layouts\Breadcumb::resolve(['subSlug' => 'contacts'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('website.layouts.breadcumb'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Website\Layouts\Breadcumb::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['slug' => 'E-SHEF','subSlug2' => 'contacts','route' => ''.e(route('home')).'']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalfcd9a6bd0fd2db6ab59fc2bb73c9598110190a0f)): ?>
<?php $component = $__componentOriginalfcd9a6bd0fd2db6ab59fc2bb73c9598110190a0f; ?>
<?php unset($__componentOriginalfcd9a6bd0fd2db6ab59fc2bb73c9598110190a0f); ?>
<?php endif; ?>
<?php if (isset($component)) { $__componentOriginal0abe14525326c523506bab24b906372d6e833486 = $component; } ?>
<?php $component = App\View\Components\Website\Pages\Contacts::resolve([] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('website.pages.contacts'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Website\Pages\Contacts::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal0abe14525326c523506bab24b906372d6e833486)): ?>
<?php $component = $__componentOriginal0abe14525326c523506bab24b906372d6e833486; ?>
<?php unset($__componentOriginal0abe14525326c523506bab24b906372d6e833486); ?>
<?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('frontScript'); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('website.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/mohamed-khater/Documents/projects/eshef/www/resources/views/website/pages/contacts.blade.php ENDPATH**/ ?>