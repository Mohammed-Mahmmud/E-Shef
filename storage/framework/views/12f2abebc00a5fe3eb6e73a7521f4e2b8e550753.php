<!--==============================
    Hero Area
    ==============================-->
<div class="hero-wrapper hero-7" id="hero">
    <div class="global-carousel" id="heroSlider7" data-fade="true" data-slide-show="1" data-adaptive-height="true">
        <?php if(isset($products)): ?>
            <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="hero-slider">
                    <div class="container">
                        <div class="row align-items-center flex-row-reverse">
                            <div class="col-lg-6 text-lg-end text-center">
                                <div class="hero-thumb">
                                    <?php if(!empty($product->getFirstMediaUrl('products'))): ?>
                                        <img loading="lazy" src="<?php echo e(asset($product->getFirstMediaUrl('products') )); ?>" alt="img" style="height:350px">
                                    <?php else: ?>
                                        <img loading="lazy" src="<?php echo e(asset('admin/images/noimage.jpg')); ?>" class="w-100" width="50" style="height:350px"
                                             alt="Unfound">
                                    <?php endif; ?>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="hero-style7 text-lg-start text-center">
                                    <span class="hero-subtitle" data-ani="slideinup"
                                          data-ani-delay="0.1s"><?php echo e($product->getPage->name); ?></span>
                                    <h1 class="hero-title" data-ani="slideinup" data-ani-delay="0.2s">
                                    <span class="text-theme" style="text-transform: capitalize;"> <?php echo e($product->name); ?> </span>
                                    </h1>
                                    <div class="slider-line" data-ani="slideinup" data-ani-delay="0.2s">
                                        <div class="ball"></div>
                                        <div class="ball"></div>
                                        <div class="ball"></div>
                                        <div class="ball"></div>
                                        <div class="ball"></div>
                                    </div>

                                    <div class="btn-wrap" data-ani="slideinup" data-ani-delay="0.5s">
                                        <a href="<?php echo e(route('home',['slug'=>'products','subSlug'=>$product->getPage->slug,'subSlug2'=>$product->name , 'id'=>$product->id])); ?>"
                                           class="btn">Read More<i class="fas fa-angle-double-right"></i></a>

                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="line1"></div>
                    <div class="line2"></div>
                    <div class="line3"></div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <?php endif; ?>
    </div>
    <button data-slick-prev="#heroSlider7" class="slick-arrow slick-prev">PREV</button>
    <button data-slick-next="#heroSlider7" class="slick-arrow slick-next">NEXT</button>
</div>
<!--======== / Hero Section ========-->
<?php /**PATH /home/f1qsj68b8fja/public_html/resources/views/components/website/pages/home/hero.blade.php ENDPATH**/ ?>