    <!--==============================
    Blog Area  
    ==============================-->
    <section class="blog-area space-top space-extra-bottom">
        <div class="container container2">
            <div class="row gy-4 justify-content-center">
               <?php $__currentLoopData = $blogs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $blog): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="col-lg-4 col-md-6">
                    <div class="blog-card style5">
                        <div class="blog-img">
                            <a href="<?php echo e(route('blog.front',[ 'slug'=> $blog->title])); ?>">
                                <img src="<?php echo e($blog->getFirstMediaUrl('Blogs')); ?>" alt="<?php echo e($blog->title); ?>-image"
                                style="height: 200px; width: 100%; object-fit: cover;"
                                >
                                <div class="blog-date" style="width:150px"><?php echo e($blog->created_at->format('Y-m-d')); ?></div>
                            </a>
                        </div>
                        <div class="blog-content">
                            <div class="blog-meta">
                                <a href="<?php echo e(route('home',['slug'=>"products","subSlug"=>strtolower($blog->getPage->name)])); ?>"><i class="fas fa-at"></i><?php echo e(ucfirst($blog->getPage->name)); ?></a>
                            </div>
                            <h3 class="blog-title"><a href="<?php echo e(route('blog.front',[ 'slug'=> $blog->title])); ?>"><?php echo e(ucwords($blog->title)); ?></a></h3>
                        </div>
                    </div>
                </div> 
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>     
            </div>
            <div class="pagination justify-content-center">
                <?php echo e($blogs->links()); ?>

            </div>
        </div>
    </section>  
<?php /**PATH /home/f1qsj68b8fja/public_html/resources/views/components/website/pages/blogs/view-blogs.blade.php ENDPATH**/ ?>