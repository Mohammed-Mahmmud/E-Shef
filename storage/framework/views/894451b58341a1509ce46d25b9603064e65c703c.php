<footer class="footer-wrapper footer-layout1 overflow-hidden background-image" style="background-image: url('website/assets/img/footer/footer-top4-bg.png');">
    <div class="container">
        <div class="footer-top">
            <div class="row gy-4 align-items-center justify-content-center">
                <div class="col-lg-4 col-md-6">
                    <div class="info-card">
                        <div class="info-card_icon">
                            <i class="fas fa-map-marker-alt"></i>
                        </div>
                        <div class="info-card_content">
                            <h4 class="info-card_title">Our Location</h4>
                            <p class="info-card_text"><?php echo e(SettingHelper::settings('Street')); ?></p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="info-card">
                        <div class="info-card_icon">
                            <i class="fas fa-phone-alt"></i>
                        </div>
                        <div class="info-card_content">
                            <h4 class="info-card_title">Call us</h4>
                            <p class="info-card_text">Telephone : <a href="tel:<?php echo e(SettingHelper::settings('Phone')); ?>"><?php echo e(SettingHelper::settings('Phone')); ?></a></p>
                           
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="info-card">
                        <div class="info-card_icon">
                            <i class="fas fa-envelope"></i>
                        </div>
                        <div class="info-card_content">
                            <h4 class="info-card_title">Our Email</h4>
                            <p class="info-card_text">Main Email : <a href="mailto:<?php echo e(SettingHelper::settings('Email')); ?>"><?php echo e(SettingHelper::settings('Email')); ?></a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="widget-area">
            <div class="row justify-content-between">
                <div class="col-md-6 col-xl-3 col-lg-6">
                    <div class="widget footer-widget">
                        <div class="widget-about">
                            <div class="footer-logo">
                                <a href="/"><img src="<?php echo e(asset('website/assets')); ?>/img/whiteLogo.png" alt="e-shef"></a>
                            </div>
                            <p class="about-text" style="font-size: 15px;">
                                Discover a world of flavor with our curated selection of premium-quality Products and promote wellness, and join a vibrant community of food enthusiasts. Explore our extensive catalog and embark on a flavorful journey that transcends borders.
                            </p>
                            <div class="social-btn style2">
                                <a href="https://<?php echo e(SettingHelper::settings('Facebook')); ?>" target="_blank" tabindex="0"><i class="fab fa-facebook-f"></i></a>
                                <a href="https://<?php echo e(SettingHelper::settings('Twitter')); ?>" target="_blank" tabindex="0"><i class="fab fa-twitter"></i></a>
                                <a href="https://<?php echo e(SettingHelper::settings('Instagram')); ?>" target="_blank" tabindex="0"><i class="fab fa-instagram"></i></a>
                                <a href="https://<?php echo e(SettingHelper::settings('LinkedIn')); ?>" target="_blank" tabindex="0"><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-xl-auto col-lg-2">
                    <div class="widget widget_nav_menu footer-widget">
                        <h3 class="widget_title">Quick Link</h3>
                        <div class="menu-all-pages-container">
                            <ul class="menu">

                                <?php $__currentLoopData = $pagesFooter; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $footer): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li>
                                    <a style="<?php echo e(Request::is($footer->slug) ? 'color:#4baf47' : ''); ?>" <?php if($footer->slug !="products"): ?>
                                        href="<?php echo e(route('home',$footer->slug)); ?>"
                                        <?php endif; ?>
                                        data-text="<?php echo e($footer->name); ?>"><?php echo e($footer->name); ?></a>

                                </li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="widget footer-widget">
                        <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.website.layouts.search','data' => ['route' => route('search')]] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('website.layouts.search'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['route' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(route('search'))]); ?> <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <?php echo $__env->make('website.layouts.partials.copywrite', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</footer>
<?php /**PATH /home/mohamed-khater/Documents/projects/eshef/resources/views/components/website/layouts/footer.blade.php ENDPATH**/ ?>