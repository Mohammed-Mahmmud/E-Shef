<!doctype html>
<html class="no-js" lang="en">
<head>
    @include('website.layouts.partials.head')
</head>
<body>
    <!--********************************
   		Code Start From Here 
	******************************** -->

    <x-website.layouts.header></x-website.layouts.header>
    @yield('frontContent')
    <x-website.layouts.footer></x-website.layouts.footer>
    
     <!-- Scroll To Top -->
    <div class="scroll-top">
        <svg class="progress-circle svg-content" width="100%" height="100%" viewbox="-1 -1 102 102">
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" style="transition: stroke-dashoffset 10ms linear 0s; stroke-dasharray: 307.919, 307.919; stroke-dashoffset: 307.919;"></path>
        </svg>
    </div>
    @include('website.layouts.partials.script')
</body>
</html>
