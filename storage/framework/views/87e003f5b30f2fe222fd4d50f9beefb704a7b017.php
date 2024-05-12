<!--==============================
        Contact Area  
    ==============================-->
<div class="contact-area space">
    <div class="container container2">
        <div class="row gy-4 justify-content-center">
            <div class="col-lg-4 col-md-6">
                <div class="">
                    <div class="contact-info_icon">
                        <img src="<?php echo e(asset('website/assets')); ?>/img/icon/contact-envelope.svg" alt="icon">
                    </div>
                    <div class="media-body">
                        <h4 class="contact-info_title">Contacts Info</h4>
                        <span class="contact-info_text"><a Phone href="https://wa.me/<?php echo e($phone); ?>">Phone Number:<?php echo e($phone); ?></a></span><br>
                        <span class="contact-info_text"><a href="mailto:<?php echo e($email); ?>, <?php echo e($email); ?>">Send Email To : <?php echo e($email); ?></a></span>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="">
                    <div class="contact-info_icon">
                        <img src="<?php echo e(asset('website/assets')); ?>/img/icon/contact-calendar.svg" alt="icon">
                    </div>
                    <div class="media-body">
                        <h4 class="contact-info_title">Opening Hour</h4>
                        <span class="contact-info_text"><?php echo e($activeFrom); ?></span>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="">
                    <div class="contact-info_icon">
                        <img src="<?php echo e(asset('website/assets')); ?>/img/icon/contact-home.svg" alt="icon">
                    </div>
                    <div class="media-body">
                        <h4 class="contact-info_title">Service Center</h4>
                        <span class="contact-info_text"><?php echo e($street); ?></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="space-bottom">
    <div class="container container2">
        <div class="row">
            <div class="col-lg-6">
                <div class="contact-map-sec">
                <iframe src="<?php echo e($map); ?>" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
            <div class="col-lg-6">
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
<?php /**PATH /home/f1qsj68b8fja/public_html/resources/views/components/website/pages/contacts.blade.php ENDPATH**/ ?>