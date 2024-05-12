 <!--==============================
     Preloader
    ==============================-->
<!--    @unless(Request::is('/'))-->
<!-- <div class="preloader " style="background-color:black">-->
<!--     <div class="preloader-inner" >-->
<!--         <img  src="{{asset($model->getFirstMediaUrl('Logo'))}}" alt="e-shef-logo">-->
<!--         <span class="loader"></span>-->
<!--     </div>-->
<!-- </div>-->
<!--@endunless-->
 <!--==============================
    Mobile Menu
    ============================== -->
 <div class="mobile-menu-wrapper">
     <div class="mobile-menu-area text-center">
         <button class="menu-toggle"><i class="fas fa-times"></i></button>
         <div class="mobile-logo">
             <a href="{{route('home')}}"><img src="{{ asset($model->getFirstMediaUrl('Logo') )}}" alt="e-shef"></a>
         </div>
         <div class="mobile-menu">
             <ul>
                 @foreach($pages as $page)
                 <li class="menu-item-has-children">
                     @if($page->childes->count() > 0)
                     <a style="{{ strpos(request()->url(), $page->slug) !== false ? 'color:#4baf47' : '' }}" href="#" data-text="{{$page->name}}">{{$page->name}}</a>
                     @else
                     <a style="{{ Request::is($page->slug) ? 'color:#4baf47' : '' }}" href="{{route('home',$page->slug)}}" data-text="{{$page->name}}">{{$page->name}}</a>
                     @endif
                     @if(isset($page->childes))
                     <ul class="sub-menu">
                         @foreach($page->childes as $childe)
                        @if($childe->status == 'Active')
                         <li><a style="{{ Request::is($page->slug.'/'.$childe->slug) ? 'color:red' : '' }}" href="{{route('home',[$page->slug,$childe->slug])}}">{{$childe->name}}</a></li>
                        @endif
                         @endforeach
                     </ul>
                     @endif
                 </li>
                 @endforeach
             </ul>

         </div>
     </div>
 </div>




 <!--==============================
	Header Area
    ==============================-->
 <header class="nav-header header-layout1">
     <div class="header-top">
         <div class="container">
             <div class="row justify-content-center justify-content-lg-between align-items-center gy-2">
                 <div class="col-auto d-none d-lg-block">
                     <div class="header-links" >
                         <ul>
                             <li>{{SettingHelper::settings('Street')}}</li>
                             <li>Hot Link:<a href="tel:{{SettingHelper::settings('Phone')}}">{{SettingHelper::settings('Phone')}}</a></li>
                         </ul>
                     </div>
                 </div>
                 <div class="col-auto">
                     <div class="header-links">
                         <ul>
                             <li>
                                 <div class="social-links">
                                     <span class="social-title">Follow On :</span>
                                     <a href="https://{{SettingHelper::settings('Facebook','facebook.com')}}"><i class="fab fa-facebook-f"></i></a>
                                     <a href="https://{{SettingHelper::settings('Twitter','twitter.com')}}"><i class="fab fa-twitter"></i></a>
                                     <a href="https://{{SettingHelper::settings('LinkedIn')}}" target="_blank"><i class="fab fa-linkedin-in"></i></a>
                                     <a href="https://{{SettingHelper::settings('Instagram','Instagram.com')}}"><i class="fab fa-instagram"></i></a>
                                 </div>
                             </li>
                         </ul>
                     </div>
                 </div>
             </div>
         </div>
     </div>
     <div class="sticky-wrapper">
         <!-- Main Menu Area -->
         <div class="menu-area">
             <div class="container">
                 <div class="row align-items-center justify-content-between">
                     <div class="col-auto">
                         <div class="header-logo">
                             <a href="{{route('home')}}"><img src="{{asset('website/assets')}}/img/logo.svg" alt="logo" height="55px" width="300px"></a>
                         </div>
                     </div>
                     <div class="col-auto">
                         <nav class="main-menu d-none d-lg-inline-block">
                             <ul>
                                 @foreach($pages as $page)
                                 <li class="menu-item-has-children">
                                     @if($page->childes->count() > 0)
                                     <a style="{{ strpos(request()->url(), $page->slug) !== false ? 'color:#4baf47' : '' }}" href="#" data-text="{{$page->name}}">{{$page->name}}</a>
                                     @else
                                     <a style="{{ Request::is($page->slug) ? 'color:#4baf47' : '' }}" href="{{route('home',$page->slug)}}" data-text="{{$page->name}}">{{$page->name}}</a>
                                     @endif
                                     @if(isset($page->childes))
                                     <ul class="sub-menu">
                                         @foreach($page->childes as $childe)
                                             @if($childe->status == 'Active')
                                         <li><a style="{{ Request::is($page->slug.'/'.$childe->slug) ? 'color:red' : '' }}" href="{{route('home',[$page->slug,$childe->slug])}}">{{$childe->name}}</a></li>
                                         @endif
                                         @endforeach
                                     </ul>
                                     @endif
                                 </li>
                                 @endforeach
                             </ul>
                         </nav>
                         <div class="navbar-right d-inline-flex d-lg-none">
                             <button type="button" class="menu-toggle icon-btn"><i class="fas fa-bars"></i></button>
                         </div>
                     </div>

                     <div class="col-auto d-none d-xl-block">
                         <div class="header-button">
                             <a href="{{route('home',['slug' =>'contacts'])}}" class="btn">
                                 Get A Quote
                                 <i class="fas fa-angle-double-right"></i>
                             </a>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </header>
