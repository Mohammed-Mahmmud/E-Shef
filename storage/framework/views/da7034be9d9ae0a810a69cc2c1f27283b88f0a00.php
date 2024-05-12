<?php $attributes ??= new \Illuminate\View\ComponentAttributeBag; ?>
<?php foreach($attributes->onlyProps([
    'route'=>false,
]) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $attributes = $attributes->exceptProps([
    'route'=>false,
]); ?>
<?php foreach (array_filter(([
    'route'=>false,
]), 'is_string', ARRAY_FILTER_USE_KEY) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $__defined_vars = get_defined_vars(); ?>
<?php foreach ($attributes as $__key => $__value) {
    if (array_key_exists($__key, $__defined_vars)) unset($$__key);
} ?>
<?php unset($__defined_vars); ?>
     <h3 class="widget_title">Search</h3>
     <form class="search-form" action="<?php echo e($route??''); ?>" method="POST">
     <?php echo csrf_field(); ?>
         <input type="text" placeholder="Enter Keyword" name="search" value="<?php echo e(Request()->query('name')??''); ?>">
         <button type="submit"><i class="fas fa-search"></i></button>
     </form>
<?php /**PATH /home/mohamed-khater/Documents/projects/eshef/resources/views/components/website/layouts/search.blade.php ENDPATH**/ ?>