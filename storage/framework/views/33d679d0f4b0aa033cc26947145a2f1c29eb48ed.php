<!DOCTYPE html>
<html lang="en">
<head>
	<title>log in Admin</title>
	<?php if (isset($component)) { $__componentOriginal31371099e20e210603f6f28175a13c386956fb46 = $component; } ?>
<?php $component = App\View\Components\Meta\Meta::resolve([] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('meta.meta'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Meta\Meta::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?> <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal31371099e20e210603f6f28175a13c386956fb46)): ?>
<?php $component = $__componentOriginal31371099e20e210603f6f28175a13c386956fb46; ?>
<?php unset($__componentOriginal31371099e20e210603f6f28175a13c386956fb46); ?>
<?php endif; ?>
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="<?php echo e(asset('auth/images/icons/favicon.ico')); ?>"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo e(asset('auth/fonts/font-awesome-4.7.0/css/font-awesome.min.css')); ?>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo e(asset('auth/fonts/iconic/css/material-design-iconic-font.min.css')); ?>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo e(asset('auth/css/util.css')); ?>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo e(asset('auth/css/main.css')); ?>">
<!--===============================================================================================-->


</head>
<body>

	<div class="limiter">
		<div class="container-login100" style="background-image:url(<?php echo e(url('/auth/images/bg-01.jpg')); ?>)" >
			<div class="wrap-login100">
                <?php if($errors->any()): ?>
                    <div class="alert alert-danger">
                        <ul>
                            <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li><?php echo e($error); ?></li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>
                    </div>
                <?php endif; ?>
                <form method="POST" class="login100-form validate-form" action="<?php echo e(route('admin.login')); ?>">
                    <?php echo csrf_field(); ?>
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>

					<span class="login100-form-title p-b-34 p-t-27">
						log in Admin
					</span>


					<div class="wrap-input100 validate-input" >
						<input class="input100" type="email" value="<?php echo e(old('email')); ?>" value="<?php echo e(old('email')); ?>" name="email" autocomplete="username" placeholder="email">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input">
						<input class="input100" id="password" type="password" value="__('Password')" name="password" placeholder="Password" required autocomplete="new-password" >
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>


					<div class="container-login100-form-btn">
                        <button type="submit" class="login100-form-btn"><?php echo e(__('Log in')); ?></button>
					</div>

				</form>
			</div>
		</div>
	</div>


</body>
</html>
<?php /**PATH /home/mohamed-khater/Documents/projects/eshef/resources/views/AdminAuth/login.blade.php ENDPATH**/ ?>