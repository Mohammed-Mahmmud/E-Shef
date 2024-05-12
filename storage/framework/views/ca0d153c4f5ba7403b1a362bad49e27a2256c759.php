   <!--==============================
    Blog Area  
    ==============================-->
    <section class="blog-details-area space-top space-extra-bottom">
        <div class="container">
            <div class="row gx-40">
                <div class="col-xxl-12">
                    <div class="blog-card">
                        <div class="blog-img" style="text-align: center;">
                            <img class="img-fluid" src="<?php echo e($blog->getFirstMediaUrl('Blogs') ?? ''); ?>" alt="<?php echo e($blog->title ?? ''); ?>-details-image" style="max-width: 100%; height: 500px; display: inline-block;">
                        </div>
                        
                        
                        <div class="blog-content">
                            <div class="blog-meta">
                                <a href="<?php echo e(route('home',['slug'=>'blogs'])); ?>"><i class="fas fa-at"></i> <?php echo e(ucwords($blog->title) ??''); ?></a>
                                <a href="#"><i class="fas fa-calendar-alt"></i><?php echo e($blog->created_at->format('Y-m-d') ??''); ?></a>
                                <a href="<?php echo e(route('home',['slug'=>"products","subSlug"=>strtolower($blog->getPage->name)])); ?>"><i class="fas fa-folder"></i><?php echo e(ucfirst($blog->getPage->name) ??''); ?></a>
                               
                            </div>
                            <blockquote>
                                <p><?php echo e(ucwords($blog->title) ?? ""); ?></p>
                            </blockquote>
                            <p class="mb-20" style="white-space: pre-line;"><?php echo e(ucwords($blog->description) ?? ''); ?></p>
                         
                            <div class="post-content-tags mt-40">
                                <div class="post-tag-social">
                                    <div class="post-tag">
                                        <a href="<?php echo e(route('home',['slug'=>"products","subSlug"=>strtolower($blog->getPage->name)])); ?>"><?php echo e($blog->getPage->name  ?? ''); ?></a>
                                    </div>
                                    <div class="post-share">
                                        <label>Share:</label>
                                        <div class="social-btn">
                                            <a href="https://<?php echo e(SettingHelper::settings('Facebook')); ?>" target="_blank"><i class="fab fa-facebook-f"></i></a>
                                            <a href="https://<?php echo e(SettingHelper::settings('LinkedIn')); ?>" target="_blank"><i class="fab fa-linkedin"></i></a>
                                           
                                           
                                        </div>    
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="nav-links">
                        <?php if(!empty($prevBlog)): ?>
                        <div class="nav-previous post-thum-nav">
                            <a class="nav-label" href="<?php echo e(route('blog.front',[ 'slug'=> $prevBlog->title])); ?>">
                                <span class="nav-subtitle"><i class="fas fa-angle-double-left"></i>Previous Blog</span>
                            </a>
                            <div class="nav-holder">
                                <div class="nav-thumb">
                                    <a href="<?php echo e(route('blog.front',[ 'slug'=> $prevBlog->title])); ?>">
                                        <img src="<?php echo e($prevBlog->getFirstMediaUrl('Blogs')); ?>" alt="<?php echo e(ucwords($prevBlog->title) ?? ''); ?>-prevImage">
                                    </a>
                                </div>
                                <div class="nav-title">
                                    <a href="<?php echo e(route('blog.front',[ 'slug'=> $prevBlog->title])); ?>">
                                        <span class="nav-title"><?php echo e(ucwords($prevBlog->title) ?? ''); ?></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <?php else: ?>
                        <div class="nav-previous post-thum-nav">
                            <a class="nav-label" href="#">
                                <span class="nav-subtitle"></span>
                            </a>
                            <div class="nav-holder">
                                <div class="nav-thumb">
                                    <a href="#">
                                    </a>
                                </div>
                                <div class="nav-title">
                                    <a href="">
                                        <span class="nav-title"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <?php endif; ?>
                        <?php if(!empty($nextBlog)): ?>
                        <div class="nav-next post-thum-nav">
                            <a class="nav-label" href="<?php echo e(route('blog.front',[ 'slug'=> $nextBlog->title])); ?>">
                                <span class="nav-subtitle">Next Blog <i class="fas fa-angle-double-right"></i></span>
                            </a>
                            <div class="nav-holder">
                                <div class="nav-thumb">
                                    <a href="<?php echo e(route('blog.front',[ 'slug'=> $nextBlog->title])); ?>">
                                        <img src="<?php echo e($nextBlog->getFirstMediaUrl('Blogs')); ?>" alt="<?php echo e(ucwords($nextBlog->title) ?? ''); ?>-nextImage">
                                    </a>
                                </div>
                                <div class="nav-title">
                                    <a href="<?php echo e(route('blog.front',[ 'slug'=> $nextBlog->title])); ?>">
                                        <span class="nav-title"><?php echo e(ucwords($nextBlog->title) ?? ''); ?></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <?php endif; ?>
                    </div>
                    <!-- Comment Form -->
                    <div class="comment-form bg-smoke mb-30">
                        <div class="form-title">
                            <h4 class="blog-inner-title mb-2"> Leave A Comment</h4>
                        </div>
                       <?php if (isset($component)) { $__componentOriginal1bc3b4c0d6444c52069aa73cc027ce776dc7e37f = $component; } ?>
<?php $component = App\View\Components\Website\Layouts\ContactForm::resolve([] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('website.layouts.contact-form'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Website\Layouts\ContactForm::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal1bc3b4c0d6444c52069aa73cc027ce776dc7e37f)): ?>
<?php $component = $__componentOriginal1bc3b4c0d6444c52069aa73cc027ce776dc7e37f; ?>
<?php unset($__componentOriginal1bc3b4c0d6444c52069aa73cc027ce776dc7e37f); ?>
<?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </section>   <?php /**PATH /home/mohamed-khater/Documents/projects/eshef/www/resources/views/components/website/pages/blogs/blog.blade.php ENDPATH**/ ?>