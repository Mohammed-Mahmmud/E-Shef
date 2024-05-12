<?php $attributes ??= new \Illuminate\View\ComponentAttributeBag; ?>
<?php foreach($attributes->onlyProps([
    'slug'=>false,
    'subSlug'=>false,
    'subSlug2'=>false,
    'route'=>false,
]) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $attributes = $attributes->exceptProps([
    'slug'=>false,
    'subSlug'=>false,
    'subSlug2'=>false,
    'route'=>false,
]); ?>
<?php foreach (array_filter(([
    'slug'=>false,
    'subSlug'=>false,
    'subSlug2'=>false,
    'route'=>false,
]), 'is_string', ARRAY_FILTER_USE_KEY) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $__defined_vars = get_defined_vars(); ?>
<?php foreach ($attributes as $__key => $__value) {
    if (array_key_exists($__key, $__defined_vars)) unset($$__key);
} ?>
<?php unset($__defined_vars); ?>
    <style>
         .blur {
        backdrop-filter: brightness(25%);
        border-radius: 10px;
        overflow: hidden;
        display: inline-flex; /* Display as inline-flex to adjust width automatically */
        align-items: center; /* Center the content vertically */
        padding: 5px; /* Add some padding for spacing */
    }

    .blur li {
        border-radius: 10px;
        overflow: hidden;
        margin-right: 10px; /* Add space between li elements */
        white-space: nowrap; /* Prevent li elements from wrapping */
    }
    .black{
        color:#F5F5F5;
    }
    </style>

    <div class="breadcumb-wrapper" 
<?php if(!empty($banner) ): ?>
    data-bg-src="<?php echo e(asset($banner->getFirstMediaUrl('banner'))); ?>"
    <?php else: ?>
    data-bg-src="<?php echo e(asset($image->getFirstMediaUrl('Logo'))); ?>"
    <?php endif; ?>
    >
        <!-- bg animated image/ -->   
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcumb-content">
                        <h1 class="breadcumb-title black"> <?php echo e(ucfirst($subSlug)); ?></h1>
                        <ul class="breadcumb-menu blur">
                            <li><a href="<?php echo e($route); ?>"><?php echo e(ucfirst($slug)); ?></a></li>
                            <li class="active"><?php echo e(ucfirst($subSlug2)); ?></li>
                        </ul>
                    </div>
                </div>
            </div>
            
        </div>
    </div><?php /**PATH /home/mohamed-khater/Documents/projects/eshef/www/resources/views/components/website/layouts/breadcumb.blade.php ENDPATH**/ ?>