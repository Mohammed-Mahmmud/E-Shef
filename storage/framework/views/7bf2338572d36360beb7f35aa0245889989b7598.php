   <!--==============================
    Service Area 05
    ==============================-->
    <div class="service-area-7 space-bottom overflow-hidden">
        <div class="container">
            <div class="row gy-4 justify-content-center">
                <?php if(isset($products)): ?>
                <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="col-lg-4 col-md-6">
                    <div class="service-card style5">
                        <?php if(!empty($item->getFirstMediaUrl('banner'))): ?>
                         <a href="<?php echo e(route('home',["products",$item->slug])); ?>">
                        <div class="service-card_img">
                            <img src="<?php echo e(asset($item->getFirstMediaUrl('banner') )); ?>" alt="img-banner" style="height:250px">
                        </div>
                        </a>
                       <?php endif; ?>
                        <div class="service-card-hover">
                            <a href="<?php echo e(route('home',["products",$item->slug])); ?>" class="btn style9">Read More About <?php echo e($item->name); ?> <i
                                    class="fas fa-angle-double-right"></i></a>
                        </div>
                    </div>
                </div>
               <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php endif; ?>
            </div>
        </div>
    </div>      <?php /**PATH /home/f1qsj68b8fja/public_html/resources/views/components//website/pages/home/products-gategory.blade.php ENDPATH**/ ?>