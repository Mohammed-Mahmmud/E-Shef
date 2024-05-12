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
                                        <img src="<?php echo e(asset($product->getFirstMediaUrl('products') )); ?>" alt="<?php echo e($product->name); ?>-img"  style="height:350px">
                                    <?php else: ?>
                                        <img  src="<?php echo e(asset('admin/images/noimage.jpg')); ?>" class="w-100" width="50" style="height:350px"
                                             alt="unfound-img">
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
                                    <div class="slider-line" data-ani="slideinup" data-ani-delay="0.5s">
                                          <div class="ball"></div> 
                                          <div class="ball"></div> 
                                          <div class="ball"></div> 
                   
                                    </div>

                                    <div class="btn-wrap" data-ani="slideinup" data-ani-delay="0.5s">
                                        <a href="<?php echo e(route('home',['slug'=>'products','subSlug'=>$product->getPage->slug,'subSlug2'=>$product->name ])); ?>"
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

<?php if (isset($component)) { $__componentOriginal7b5d913627ae4d57f05b9a293c9b4538425e5e49 = $component; } ?>
<?php $component = App\View\Components\Website\Pages\Home\ProductsGategory::resolve([] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('website.pages.home.products-gategory'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Website\Pages\Home\ProductsGategory::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal7b5d913627ae4d57f05b9a293c9b4538425e5e49)): ?>
<?php $component = $__componentOriginal7b5d913627ae4d57f05b9a293c9b4538425e5e49; ?>
<?php unset($__componentOriginal7b5d913627ae4d57f05b9a293c9b4538425e5e49); ?>
<?php endif; ?>
<?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.website.pages.home.testimonial-area','data' => []] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('website.pages.home.testimonial-area'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
   <!--==============================
        Products Area
    ==============================-->
   <div class="donation-area-4 space-bottom overflow-hidden">
       <div class="container space">
           <div class="row justify-content-between align-items-center ">
               <div class="col-lg-6">
                   <div class="title-area text-lg-start text-center">
                       <span class="sub-title">Raised</span>
                       <h2 class="sec-title">Our Recently Products <span class="text-theme">E-SHEF</span></h2>
                   </div>
               </div>
               <div class="col-lg-auto d-lg-block d-none">
                   <div class="sec-btn mb-0">
                       <div class="icon-box arrow-style2">
                           <button data-slick-prev=".donation-slider4" class="slick-arrow default"><i class="fas fa-arrow-left"></i></button>
                           <button data-slick-next=".donation-slider4" class="slick-arrow default"><i class="fas fa-arrow-right"></i></button>
                       </div>
                   </div>
               </div>
           </div>
           <div class="row justify-content-center global-carousel donation-slider4 space" data-slide-show="3" data-md-slide-show="2">
                           <?php if(isset($products)): ?>
               <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
               <div class="col-lg-4 col-md-6">
                   <div class="donation-card style4">
                       <div class="donation-card-img">
                           <?php if(!empty($product->getFirstMediaUrl('products'))): ?>
                           <img class="resizeImage" loading="lazy" src="<?php echo e(asset($product->getFirstMediaUrl('products') )); ?>" alt="<?php echo e($product->name); ?>-image" style="height: 300px;">
                           <?php endif; ?>
                       </div>
                       <div class="donation-card-content">
                           <div class="date"><?php echo e($product->getPage->name); ?></div>
                           <h3 class="donation-card-title">
                               <a href="<?php echo e(route('home',['slug'=>'products','subSlug'=>$product->getPage->slug,'subSlug2'=>$product->name ])); ?>"><?php echo e($product->name); ?></a>
                           </h3>
                           <div class="skill-feature">
                               <div class="progress">
                                   <div class="progress-bar" style="width: 78%;">
                                   </div>
                               </div>
                           </div>
                           <div class="donate-price-area">
                               <div class="donate-price-innter">
                                   <div class="donate-status">
                                       <?php if($product->latin_name): ?>
                                       <span><?php echo e($product->latin_name); ?></span>
                                       <?php elseif($product->scientific_name ): ?>
                                       <span><?php echo e($product->scientific_name); ?></span>
                                       <?php endif; ?>
                                   </div>
                                   <div class="donate-status">
                                       <?php if($product->HS_code): ?>
                                       <span class="counter-numbers" style="color:#4baf47"><?php echo e($product->HS_code); ?></span>
                                       <?php endif; ?>
                                   </div>
                               </div>
                           </div>
                           <a href="<?php echo e(route('home',['slug'=>'products','subSlug'=>$product->getPage->slug,'subSlug2'=>$product->name ])); ?>" class="btn style4">Read More <i class="fas fa-angle-double-right"></i></a>
                       </div>
                   </div>
               </div>
               <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                       <?php endif; ?>
           </div>
       </div>
   </div>

<?php /**PATH /home/mohamed-khater/Documents/projects/eshef/www/resources/views/components/website/pages/home/home.blade.php ENDPATH**/ ?>