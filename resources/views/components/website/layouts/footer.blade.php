<footer class="footer-wrapper footer-layout1 overflow-hidden background-image" style="background-image: asset('website/assets/img/footer/footer-top4-bg.png');">
    <div class="container">
        <div class="footer-top">
            <div class="row gy-4 align-items-center justify-content-center">
                <div class="col-lg-4 col-md-6">
                    <div class="info-card">
                        <div class="info-card_icon">
                            <i class="fas fa-map-marker-alt"></i>
                        </div>
                        <div class="info-card_content">
                            <h4 class="info-card_title">Our Location</h4>
                            <p class="info-card_text">{{SettingHelper::settings('Street')}}</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="info-card">
                        <div class="info-card_icon">
                            <i class="fas fa-phone-alt"></i>
                        </div>
                        <div class="info-card_content">
                            <h4 class="info-card_title">Call us</h4>
                            <p class="info-card_text">Telephone : <a href="tel:{{SettingHelper::settings('Phone')}}">{{SettingHelper::settings('Phone')}}</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="info-card">
                        <div class="info-card_icon">
                            <i class="fas fa-envelope"></i>
                        </div>
                        <div class="info-card_content">
                            <h4 class="info-card_title">Our Email</h4>
                            <p class="info-card_text">Main Email : <a href="mailto:{{SettingHelper::settings('Email')}}">{{SettingHelper::settings('Email')}}</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="widget-area">
            <div class="row justify-content-between">
                <div class="col-md-6 col-xl-3 col-lg-6">
                    <div class="widget footer-widget">
                        <div class="widget-about">
                            <div class="footer-logo">
                                <a href="/"><img src="{{asset('website/assets')}}/img/whiteLogo.png" alt="e-shef"></a>
                            </div>
                            <p class="about-text" style="font-size: 15px;">
                                Discover a world of flavor with our curated selection of premium-quality Products and promote wellness, and join a vibrant community of food enthusiasts. Explore our extensive catalog and embark on a flavorful journey that transcends borders.
                            </p>
                            <div class="social-btn style2">
                                <a href="https://{{SettingHelper::settings('Facebook')}}" target="_blank" tabindex="0"><i class="fab fa-facebook-f"></i></a>
                                <a href="https://{{SettingHelper::settings('Twitter')}}" target="_blank" tabindex="0"><i class="fab fa-twitter"></i></a>
                                <a href="https://{{SettingHelper::settings('Instagram')}}" target="_blank" tabindex="0"><i class="fab fa-instagram"></i></a>
                                <a href="https://{{SettingHelper::settings('LinkedIn')}}" target="_blank" tabindex="0"><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-xl-auto col-lg-2">
                    <div class="widget widget_nav_menu footer-widget">
                        <h3 class="widget_title">Quick Link</h3>
                        <div class="menu-all-pages-container">
                            <ul class="menu">

                                @foreach($pagesFooter as $footer)
                                <li>
                                    <a style="{{ Request::is($footer->slug) ? 'color:#4baf47' : '' }}" @if($footer->slug !="products")
                                        href="{{route('home',$footer->slug)}}"
                                        @endif
                                        data-text="{{$footer->name}}">{{$footer->name}}</a>

                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
                {{--  <div class="col-md-6 col-xl-3 col-lg-4">
                    <div class="widget footer-widget">
                        <h3 class="widget_title">Recent News</h3>
                        <div class="recent-post-wrap">
                            <div class="recent-post">
                                <div class="media-img">
                                    <a href="blog-details.html"><img src="assets/img/widget/recent-post1-1.jpg" alt="Blog Image"></a>
                                </div>
                                <div class="media-body">
                                    <h4 class="post-title"><a class="text-inherit" href="blog-details.html">Go green and reduce your carbon…</a></h4>
                                    <div class="recent-post-meta">
                                        <a href="blog.html"><i class="fas fa-calendar"></i> April 3, 2024</a>
                                    </div>
                                </div>
                            </div>
                            <div class="recent-post">
                                <div class="media-img">
                                    <a href="blog-details.html"><img src="assets/img/widget/recent-post1-2.jpg" alt="Blog Image"></a>
                                </div>
                                <div class="media-body">
                                    <h4 class="post-title"><a class="text-inherit" href="blog-details.html">Make a statement support of the…</a></h4>
                                    <div class="recent-post-meta">
                                        <a href="blog.html"><i class="fas fa-calendar"></i> April 3, 2024</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>  --}}
                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="widget footer-widget">
                        <x-website.layouts.search :route="route('search')"></x-website.layouts.search>
                    </div>

                </div>
            </div>
        </div>
    </div>
    @include('website.layouts.partials.copywrite')
</footer>
