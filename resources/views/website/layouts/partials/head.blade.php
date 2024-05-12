  <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>@yield('frontTitle')</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="sitemap" content="{{asset('sitemap.xml')}}">
    <meta name="description" content="@yield('frontTitle') E-Shef - Egyptian Herbs & Food">
    <meta name="keywords" content="@yield('frontTitle') E-Shef - Egyptian Herbs & Food">
    <meta name="robots" content="index, follow">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <meta name="author" content="E-SHEF">
    {{-- <meta property="og:title" content="e-shef"> --}}
    {{-- <meta property="og:description" content="E-Shef - Egyptian Herbs & Food"> --}}
    <meta name="format-detection" content="telephone=no">
    <link rel="icon" type="image/png" sizes="200x200" href="{{asset('website/assets')}}/img/favicons/android.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="{{asset('website/assets')}}/img/favicons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <!-- Mobile Specific Metas -->
    <!--<link rel="manifest" href="{{asset('website')}}/vebder/livewire/manifest.json">-->
    @yield('frontMeta')
    <!--==============================
      Google Fonts
    ============================== -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="{{ asset('website/assets') }}/css2?family=Manrope:wght@200;300;400;500;600;700;800&display=swap" rel="stylesheet">
    {{--  website style  --}}
    @include('website.layouts.partials.style')
    

  