<?php $__env->startSection('frontTitle',ucwords('about')); ?>
<?php $__env->startSection('frontStyle'); ?>
<style>
    .faqDesc {
        color: black;
        /*  background-color:#64be61; */
    }

    .accordion-button {
        color: red;
    }

</style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('frontContent'); ?>

<?php if (isset($component)) { $__componentOriginalfcd9a6bd0fd2db6ab59fc2bb73c9598110190a0f = $component; } ?>
<?php $component = App\View\Components\Website\Layouts\Breadcumb::resolve(['subSlug' => 'About'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('website.layouts.breadcumb'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Website\Layouts\Breadcumb::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['slug' => 'E-SHEF','subSlug2' => 'About','route' => ''.e(route('home')).'']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalfcd9a6bd0fd2db6ab59fc2bb73c9598110190a0f)): ?>
<?php $component = $__componentOriginalfcd9a6bd0fd2db6ab59fc2bb73c9598110190a0f; ?>
<?php unset($__componentOriginalfcd9a6bd0fd2db6ab59fc2bb73c9598110190a0f); ?>
<?php endif; ?>

<!--==============================
            About Area
        ==============================-->
<div class="space bg-smoke" id="aboutArea2">
    <div class="container container2">
        <div class="row align-items-center justify-content-between">
            <div class="col-lg-6">
                <div class="about-thumb mb-50 mb-lg-0">
                    <div class="about-img-1">
                        <img src="<?php echo e(asset('website')); ?>/assets/img/normal/about_1-1.jpg" alt="img">
                    </div>
                    <div class="about-img-2">
                        <img src="<?php echo e(asset('website')); ?>/assets/img/normal/about_1-2.jpg" alt="img">
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="about-content-wrap">
                    <div class="title-area mb-35">
                        <span class="sub-title">ABOUT WITH US</span>
                        <h2 class="sec-title">Building a greener future together Forever</h2>
                        <div class="skill-feature">
                            <h3 class="skill-feature_title">Problem Solving</h3>
                            <div class="progress">
                                <div class="progress-bar" style="width: 80%;">
                                </div>
                                <div class="progress-value"><span class="counter-number">80</span>%</div>
                            </div>
                        </div>
                        <div class="faq-area-2" data-bg-src="<?php echo e(asset('website/assets')); ?>/img/update/bg/faq2-bg.png">
                            <div class="container">
                                <div class="faq-content-wrap2 ">
                                    <div class="row">
                                        <div class="col-xl-12">
                                            <div class="accordion-area style4 accordion" id="faqAccordion">

                                                <div class="accordion-card active ">
                                                    <div class="accordion-header" id="collapse-item-1 ">
                                                        <button class="accordion-button faqTitle" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-1" aria-expanded="true" aria-controls="collapse-1"><i class="fas fa-comment-dots"></i>E-SHEF Brand
                                                            Story?
                                                        </button>
                                                    </div>
                                                    <div id="collapse-1" class="accordion-collapse collapse show faqDesc" aria-labelledby="collapse-item-1" data-bs-parent="#faqAccordion">
                                                        <div class="accordion-body">
                                                            <p class="faqText">
                                                                E-SHEF Company is your best source for high-quality, healthy herbs, spices,
                                                                and foods straight from Egypt. Founded in 2018 by Egyptian native, E-SHEF is
                                                                dedicated to bringing the unique flavors and health benefits of Egyptian
                                                                cuisine to customers around the world. The company works directly with small
                                                                farms across Egypt to source premium ingredients like aromatic spices,
                                                                nutrient-dense ancient grains, and healing herbs that have been used in
                                                                Egyptian cooking for centuries.
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>


                                                <div class="accordion-card ">
                                                    <div class="accordion-header" id="collapse-item-2">
                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-2" aria-expanded="false" aria-controls="collapse-2"><i class="fas fa-comment-dots"></i> What makes
                                                            your company unique?
                                                        </button>
                                                    </div>
                                                    <div id="collapse-2" class="accordion-collapse collapse " aria-labelledby="collapse-item-2" data-bs-parent="#faqAccordion">
                                                        <div class="accordion-body">
                                                            <p class="faq-text">
                                                                Every E-SHEF product is carefully hand-selected and packaged to maintain
                                                                freshness and potency. Their expansive catalog includes hard-to-find spices
                                                                like Nigella sativa, known as black cumin, which contains antioxidants and
                                                                anti-inflammatory compounds. You’ll also find organic, sustainably grown
                                                                staples like fava beans, a good source of protein, fiber, and vitamins. Or
                                                                try their fragrant dried hibiscus, which can be brewed into a tart, vitamin
                                                                C-rich tea.
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="accordion-card ">
                                                    <div class="accordion-header" id="collapse-item-3">
                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-3" aria-expanded="false" aria-controls="collapse-3" style="color:black"><i class="fas fa-comment-dots"></i> What impact does E-SHEF aim to create in
                                                            promoting Egyptian culinary traditions globally?
                                                        </button>
                                                    </div>
                                                    <div id="collapse-3" class="accordion-collapse collapse " aria-labelledby="collapse-item-3" data-bs-parent="#faqAccordion">
                                                        <div class="accordion-body">
                                                            <p class="faq-text">
                                                                E-SHEF aims to create a significant impact in promoting Egyptian culinary
                                                                traditions globally by:

                                                                Cultural Appreciation: By showcasing the unique flavors and health benefits
                                                                of Egyptian cuisine, E-SHEF fosters a deeper appreciation for the rich
                                                                culinary traditions of Egypt among people worldwide.
                                                                Culinary Education: Through their products, recipes, and cooking tips,
                                                                E-SHEF educates and encourages individuals to incorporate authentic Egyptian
                                                                ingredients and cooking techniques into their own kitchens, thus preserving
                                                                and spreading knowledge about Egyptian culinary heritage.
                                                                Global Accessibility: E-SHEF's direct sourcing from small farms in Egypt and
                                                                their online platform make authentic Egyptian herbs, spices, and foods
                                                                accessible to a global audience, allowing people from diverse backgrounds to
                                                                experience the flavors of Egypt.
                                                                Sustainability: By working with small farms and promoting sustainable
                                                                sourcing practices, E-SHEF contributes to the preservation of traditional
                                                                farming methods and supports local communities in Egypt, creating a positive
                                                                impact on both cultural and environmental sustainability. </p>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <?php $__env->stopSection(); ?>

    <?php $__env->startSection('frontScript'); ?>
    <?php $__env->stopSection(); ?>

<?php echo $__env->make('website.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/f1qsj68b8fja/public_html/resources/views/website/pages/about.blade.php ENDPATH**/ ?>