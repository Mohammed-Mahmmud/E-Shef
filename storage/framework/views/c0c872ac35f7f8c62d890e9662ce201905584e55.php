<?php $attributes ??= new \Illuminate\View\ComponentAttributeBag; ?>
<?php foreach($attributes->onlyProps([
'slug'=>false,
'subSlug'=>false,
'subSlug2'=>false,
'route'=>false,
'product'
]) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $attributes = $attributes->exceptProps([
'slug'=>false,
'subSlug'=>false,
'subSlug2'=>false,
'route'=>false,
'product'
]); ?>
<?php foreach (array_filter(([
'slug'=>false,
'subSlug'=>false,
'subSlug2'=>false,
'route'=>false,
'product'
]), 'is_string', ARRAY_FILTER_USE_KEY) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $__defined_vars = get_defined_vars(); ?>
<?php foreach ($attributes as $__key => $__value) {
    if (array_key_exists($__key, $__defined_vars)) unset($$__key);
} ?>
<?php unset($__defined_vars); ?>

<!--==============================
    Donation Details 02
    ==============================-->
<div class="donation-details-area space-top space-extra-bottom overflow-hidden">
    <div class="container">
        <div class="row gx-40">
            <div class="col-lg-7 col-xl-8">
                <div class="donation-page-single">
                    <div class="page-img mb-45">
                        <?php if(!empty($product->getFirstMediaUrl('products'))): ?>
                        <img src="<?php echo e(asset($product->getFirstMediaUrl('products') )); ?>" class="w-100 img-fluid" id="baseImage" width="100" height="90" alt="e-shef products">
                        <?php else: ?>
                        <img src="<?php echo e(asset('admin/images/noimage.jpg')); ?>" class="w-100" width="50" alt="e-not found products">
                        <?php endif; ?>
                    </div>


                    <div class="project-page-single">
                        <div class="page-content">
                            <h2 class="page-title mb-35"><?php echo e($product->name); ?></h2>

                            <div class="warning-notice">
                                <div class="icon"><i class="fas fa-exclamation-triangle"></i></div>

                                <strong>Notice:</strong>
                                You can Search for Products using name, Latin Name, Scientific Name or HS Code .

                            </div>
                            <p  style="text-align:left; white-space: pre-line   ;">
                                <?php echo e($product->description); ?>

                            </p>
                            
                            <div class="col-lg-12 mt-5">
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
            </div>

            <div class="col-xl-4 col-lg-5">
                <aside class="sidebar-area">
                    <div class="widget widget_search">
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
                    <div class="widget widget_categories">
                        <h3 class="widget_title">Categories</h3>
                        <div class="skill-feature mb-30">
                            <div class="progress">
                                <div class="progress-bar" style="width: 100%;">
                                </div>
                            </div>
                        </div>
                        <ul>
                            <?php $__currentLoopData = $pages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $page): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li>
                                <a href="<?php echo e(route('home',['slug'=>$slug,'subSlug'=>$page->slug])); ?>"><span <?php if($subSlug==$page->slug): ?> style="color:green" <?php endif; ?>><?php echo e($page->name); ?></span></a>
                            </li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>
                    </div>
                    <div class="widget widget_meta">
                        <h3 class="widget_title">Meta</h3>
                        <div class="skill-feature mb-30">
                            <div class="progress">
                                <div class="progress-bar" style="width: 100%;">
                                </div>
                            </div>
                        </div>
                        <ul>
                            <?php if($product->latin_name ): ?>
                            <li>
                                <p class="info-card_text meta">latin name : <a href="#"><?php echo e($product->latin_name); ?></a></p>
                            </li>
                            <?php endif; ?>
                            <?php if($product->scientific_name ): ?>
                            <li>
                                <p class="info-card_text meta">scientific name : <a href="#"><?php echo e($product->scientific_name); ?></a></p>
                            </li>
                            <?php endif; ?>
                            <?php if($product->HS_code ): ?>
                            <li>
                                <p class="info-card_text meta">HS code : <a href="#"><?php echo e($product->HS_code); ?></a></p>
                            </li>
                            <?php endif; ?>
                            <?php if($product->twentyFT ): ?>
                            <li>
                                <p class="info-card_text meta">20 ft container : <a href="#"><?php echo e($product->twentyFT); ?> Ton</a></p>
                            </li>
                            <?php endif; ?>
                            <?php if($product->fortyFT ): ?>
                            <li>
                                <p class="info-card_text meta">40 ft container : <a href="#"><?php echo e($product->fortyFT); ?> Ton</a></p>
                            </li>
                            <?php endif; ?>
                        </ul>
                    </div>
                    <div class="widget widget_gallery">
                            <h3 class="widget_title"><?php echo e($product->name); ?> Gallery</h3>
                            <div class="insta-feed">
                                 <?php if(!empty($product->getFirstMediaUrl('products'))): ?>
                                <a href="#" class="viewImage"><img src="<?php echo e(asset($product->getFirstMediaUrl('products') )); ?>" alt="<?php echo e($product->name); ?>-img">
                                <i class="fab fa-instagram"></i></a>
                                <?php endif; ?>
                                 <?php if(!empty($product->getFirstMediaUrl('products2'))): ?>
                                <a href="#" class="viewImage">
                                <img src="<?php echo e(asset($product->getFirstMediaUrl('products2') )); ?>" alt="<?php echo e($product->name); ?>-img2">
                                <i class="fab fa-instagram"></i></a>
                               <?php endif; ?>
                            </div>
                        </div>
                </aside>
            </div>
        </div>
    </div>
</div>
<?php /**PATH /home/mohamed-khater/Documents/projects/eshef/www/resources/views/components/website/pages/product.blade.php ENDPATH**/ ?>