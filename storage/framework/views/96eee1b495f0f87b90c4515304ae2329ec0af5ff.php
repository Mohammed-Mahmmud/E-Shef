 <!--==============================
     Preloader
    ==============================-->
<!--    <?php if (! (Request::is('/'))): ?>-->
<!-- <div class="preloader " style="background-color:black">-->
<!--     <div class="preloader-inner" >-->
<!--         <img  src="<?php echo e(asset($model->getFirstMediaUrl('Logo'))); ?>" alt="e-shef-logo">-->
<!--         <span class="loader"></span>-->
<!--     </div>-->
<!-- </div>-->
<!--<?php endif; ?>-->
 <!--==============================
    Mobile Menu
    ============================== -->
 <div class="mobile-menu-wrapper">
     <div class="mobile-menu-area text-center">
         <button class="menu-toggle"><i class="fas fa-times"></i></button>
         <div class="mobile-logo">
             <a href="<?php echo e(route('home')); ?>"><img src="<?php echo e(asset($model->getFirstMediaUrl('Logo') )); ?>" alt="e-shef"></a>
         </div>
         <div class="mobile-menu">
             <ul>
                 <?php $__currentLoopData = $pages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $page): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                 <li class="menu-item-has-children">
                     <?php if($page->childes->count() > 0): ?>
                     <a style="<?php echo e(strpos(request()->url(), $page->slug) !== false ? 'color:#4baf47' : ''); ?>" href="#" data-text="<?php echo e($page->name); ?>"><?php echo e($page->name); ?></a>
                     <?php else: ?>
                     <a style="<?php echo e(Request::is($page->slug) ? 'color:#4baf47' : ''); ?>" href="<?php echo e(route('home',$page->slug)); ?>" data-text="<?php echo e($page->name); ?>"><?php echo e($page->name); ?></a>
                     <?php endif; ?>
                     <?php if(isset($page->childes)): ?>
                     <ul class="sub-menu">
                         <?php $__currentLoopData = $page->childes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $childe): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php if($childe->status == 'Active'): ?>
                         <li><a style="<?php echo e(Request::is($page->slug.'/'.$childe->slug) ? 'color:red' : ''); ?>" href="<?php echo e(route('home',[$page->slug,$childe->slug])); ?>"><?php echo e($childe->name); ?></a></li>
                        <?php endif; ?>
                         <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                     </ul>
                     <?php endif; ?>
                 </li>
                 <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
             </ul>

         </div>
     </div>
 </div>




 <!--==============================
	Header Area
    ==============================-->
 <header class="nav-header header-layout1">
     <div class="header-top">
         <div class="container">
             <div class="row justify-content-center justify-content-lg-between align-items-center gy-2">
                 <div class="col-auto d-none d-lg-block">
                     <div class="header-links" >
                         <ul>
                             <li><?php echo e(SettingHelper::settings('Street')); ?></li>
                             <li>Hot Link:<a href="tel:<?php echo e(SettingHelper::settings('Phone')); ?>"><?php echo e(SettingHelper::settings('Phone')); ?></a></li>
                         </ul>
                     </div>
                 </div>
                 <div class="col-auto">
                     <div class="header-links">
                         <ul>
                             <li>
                                 <div class="social-links">
                                     <span class="social-title">Follow On :</span>
                                     <a href="https://<?php echo e(SettingHelper::settings('Facebook','facebook.com')); ?>"><i class="fab fa-facebook-f"></i></a>
                                     <a href="https://<?php echo e(SettingHelper::settings('Twitter','twitter.com')); ?>"><i class="fab fa-twitter"></i></a>
                                     <a href="https://<?php echo e(SettingHelper::settings('LinkedIn')); ?>" target="_blank"><i class="fab fa-linkedin-in"></i></a>
                                     <a href="https://<?php echo e(SettingHelper::settings('Instagram','Instagram.com')); ?>"><i class="fab fa-instagram"></i></a>
                                 </div>
                             </li>
                         </ul>
                     </div>
                 </div>
             </div>
         </div>
     </div>
     <div class="sticky-wrapper">
         <!-- Main Menu Area -->
         <div class="menu-area">
             <div class="container">
                 <div class="row align-items-center justify-content-between">
                     <div class="col-auto">
                         <div class="header-logo">
                             <a href="<?php echo e(route('home')); ?>"><img src="<?php echo e(asset('website/assets')); ?>/img/logo.svg" alt="logo" height="55px" width="300px"></a>
                         </div>
                     </div>
                     <div class="col-auto">
                         <nav class="main-menu d-none d-lg-inline-block">
                             <ul>
                                 <?php $__currentLoopData = $pages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $page): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                 <li class="menu-item-has-children">
                                     <?php if($page->childes->count() > 0): ?>
                                     <a style="<?php echo e(strpos(request()->url(), $page->slug) !== false ? 'color:#4baf47' : ''); ?>" href="#" data-text="<?php echo e($page->name); ?>"><?php echo e($page->name); ?></a>
                                     <?php else: ?>
                                     <a style="<?php echo e(Request::is($page->slug) ? 'color:#4baf47' : ''); ?>" href="<?php echo e(route('home',$page->slug)); ?>" data-text="<?php echo e($page->name); ?>"><?php echo e($page->name); ?></a>
                                     <?php endif; ?>
                                     <?php if(isset($page->childes)): ?>
                                     <ul class="sub-menu">
                                         <?php $__currentLoopData = $page->childes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $childe): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                             <?php if($childe->status == 'Active'): ?>
                                         <li><a style="<?php echo e(Request::is($page->slug.'/'.$childe->slug) ? 'color:red' : ''); ?>" href="<?php echo e(route('home',[$page->slug,$childe->slug])); ?>"><?php echo e($childe->name); ?></a></li>
                                         <?php endif; ?>
                                         <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                     </ul>
                                     <?php endif; ?>
                                 </li>
                                 <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                             </ul>
                         </nav>
                         <div class="navbar-right d-inline-flex d-lg-none">
                             <button type="button" class="menu-toggle icon-btn"><i class="fas fa-bars"></i></button>
                         </div>
                     </div>

                     <div class="col-auto d-none d-xl-block">
                         <div class="header-button">
                             <a href="<?php echo e(route('home',['slug' =>'contacts'])); ?>" class="btn">
                                 Get A Quote
                                 <i class="fas fa-angle-double-right"></i>
                             </a>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </header>
<?php /**PATH /home/f1qsj68b8fja/public_html/resources/views/components/website/layouts/header.blade.php ENDPATH**/ ?>