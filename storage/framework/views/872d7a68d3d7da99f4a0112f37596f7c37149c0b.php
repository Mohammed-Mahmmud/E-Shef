  <div class="container container2 space" >
        <div class="contact-area-1 z-index-common bg-smoke" data-pos-for=".counter-area-2" data-sec-pos="top-half">
            <div class="row gy-40">
                <div class="col-lg-6">
                    <div class="contact-thumb">
                        <img loading="lazy" src="<?php echo e(asset('website')); ?>/assets/img/normal/contact-1.jpg" alt="contacts">
                    </div>
                </div>
                <div class="col-lg-6 align-self-center">
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
    </div><?php /**PATH /home/f1qsj68b8fja/public_html/resources/views/components/website/pages/home/contact-us.blade.php ENDPATH**/ ?>