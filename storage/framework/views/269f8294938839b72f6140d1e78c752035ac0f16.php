   <?php $attributes ??= new \Illuminate\View\ComponentAttributeBag; ?>
<?php foreach($attributes->onlyProps([
   'subSlug',
   'slug',
   ]) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $attributes = $attributes->exceptProps([
   'subSlug',
   'slug',
   ]); ?>
<?php foreach (array_filter(([
   'subSlug',
   'slug',
   ]), 'is_string', ARRAY_FILTER_USE_KEY) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $__defined_vars = get_defined_vars(); ?>
<?php foreach ($attributes as $__key => $__value) {
    if (array_key_exists($__key, $__defined_vars)) unset($$__key);
} ?>
<?php unset($__defined_vars); ?>
    <div class="space overflow-hidden">
        <div class="container">
            <div class="row gy-4 justify-content-center">
                <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="col-lg-4 col-md-6">
                    <div class="service-card style7">
                        <?php $__currentLoopData = $item->getMedia('products'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="service-card_img">
                           <img src="<?php echo e($image->getUrl()); ?>" alt="<?php echo e($image->name); ?>-category" style="height: 300px;">
                        </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <div class="service-card-hover">
                            <h3 class="service-card_title"><a href="<?php echo e(route('home',['slug'=>$slug,'subSlug'=>$subSlug,'subSlug2'=>$item->name])); ?>"><?php echo e($item->name); ?></a></h3>
                            <p class="service-card_text"><?php echo e(ucwords($subSlug)); ?></p>
                            <a href="<?php echo e(route('home',['slug'=>$slug,'subSlug'=>$subSlug,'subSlug2'=>$item->name ])); ?>" class="btn style9">Read More <i class="fas fa-angle-double-right"></i></a>
                        </div>                      
                    </div>
                </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
    </div>
    <div class="pagination justify-content-center">
       <?php echo e($products->links()); ?>

   </div><?php /**PATH /home/f1qsj68b8fja/public_html/resources/views/components/website/pages/productsCategory.blade.php ENDPATH**/ ?>