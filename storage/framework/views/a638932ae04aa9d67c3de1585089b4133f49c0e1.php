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
                           <img class="resizeImage" loading="lazy" src="<?php echo e(asset($product->getFirstMediaUrl('products') )); ?>" alt="img" style="height: 300px;">
                           <?php endif; ?>
                       </div>
                       <div class="donation-card-content">
                           <div class="date"><?php echo e($product->getPage->name); ?></div>
                           <h3 class="donation-card-title">
                               <a href="<?php echo e(route('home',['slug'=>'products','subSlug'=>$product->getPage->slug,'subSlug2'=>$product->name , 'id'=>$product->id])); ?>"><?php echo e($product->name); ?></a>
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
                           <a href="<?php echo e(route('home',['slug'=>'products','subSlug'=>$product->getPage->slug,'subSlug2'=>$product->name , 'id'=>$product->id])); ?>" class="btn style4">Read More <i class="fas fa-angle-double-right"></i></a>
                       </div>
                   </div>
               </div>
               <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                       <?php endif; ?>
           </div>
       </div>
   </div>
<?php /**PATH /home/f1qsj68b8fja/public_html/resources/views/components/website/pages/home/products-slider.blade.php ENDPATH**/ ?>