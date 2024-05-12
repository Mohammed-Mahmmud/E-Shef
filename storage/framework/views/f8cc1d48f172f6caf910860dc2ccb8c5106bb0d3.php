<?php $__env->startSection('frontTitle',ucfirst('Search')); ?>
<?php $__env->startSection('frontStyle'); ?>
<style>
.black{
    color:black; 
   
}
</style>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('frontContent'); ?>

<?php if (isset($component)) { $__componentOriginalfcd9a6bd0fd2db6ab59fc2bb73c9598110190a0f = $component; } ?>
<?php $component = App\View\Components\Website\Layouts\Breadcumb::resolve(['subSlug' => 'Search Items'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('website.layouts.breadcumb'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Website\Layouts\Breadcumb::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['slug' => 'Products','subSlug2' => 'Search','route' => '#']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalfcd9a6bd0fd2db6ab59fc2bb73c9598110190a0f)): ?>
<?php $component = $__componentOriginalfcd9a6bd0fd2db6ab59fc2bb73c9598110190a0f; ?>
<?php unset($__componentOriginalfcd9a6bd0fd2db6ab59fc2bb73c9598110190a0f); ?>
<?php endif; ?>

    <!--==============================
    Project Area  
    ==============================-->
   <div class="space overflow-hidden">
        <div class="container">
            <div class="row gy-4 justify-content-center">
                <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="col-lg-3 col-md-6">
                    <div class="service-card style7">
                        <?php $__currentLoopData = $item->getMedia('products'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="service-card_img">
                           <img src="<?php echo e($image->getUrl()); ?>" alt="<?php echo e($image->name); ?>-search" loading="lazy" style="height:250px">
                        </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                       
                        <div class="service-card-hover">
                            <h3 class="service-card_title"><a href="<?php echo e(route('home',['slug'=>'products','subSlug'=>$item->getPage->slug,'subSlug2'=>$item->name])); ?>"><?php echo e($item->name); ?></a></h3>
                            <p class="service-card_text"><?php echo e(ucfirst($item->getPage->slug)); ?></p>
                            <a href="<?php echo e(route('home',['slug'=>'products','subSlug'=>$item->getPage->slug,'subSlug2'=>$item->name ])); ?>" class="btn style9">Read More <i class="fas fa-angle-double-right"></i></a>
                        </div>                      
                    </div>
                </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
    </div>
    <div class="pagination justify-content-center">
       <ul>
           <li><a href="project.html">1</a></li>
           <li><a href="project.html">2</a></li>
           <li><a href="project.html">3</a></li>
           <li><a href="project.html"><i class="fas fa-arrow-right"></i></a></li>
       </ul>
   </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('frontScript'); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('website.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/f1qsj68b8fja/public_html/resources/views/website/pages/search.blade.php ENDPATH**/ ?>