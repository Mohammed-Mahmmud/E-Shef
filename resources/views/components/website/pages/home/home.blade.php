<!--==============================
    Hero Area
    ==============================-->
<div class="hero-wrapper hero-7" id="hero">
    <div class="global-carousel" id="heroSlider7" data-fade="true" data-slide-show="1" data-adaptive-height="true">
        @isset($products)
            @foreach ($products as $product )
                <div class="hero-slider">
                    <div class="container">
                        <div class="row align-items-center flex-row-reverse">
                            <div class="col-lg-6 text-lg-end text-center">
                                <div class="hero-thumb">
                                    @if (!empty($product->getFirstMediaUrl('products')))
                                        <img src="{{ asset($product->getFirstMediaUrl('products') )}}" alt="{{$product->name}}-img"  style="height:350px">
                                    @else
                                        <img  src="{{ asset('admin/images/noimage.jpg') }}" class="w-100" width="50" style="height:350px"
                                             alt="unfound-img">
                                    @endif
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="hero-style7 text-lg-start text-center">
                                    <span class="hero-subtitle" data-ani="slideinup"
                                          data-ani-delay="0.1s">{{ $product->getPage->name }}</span>
                                    <h1 class="hero-title" data-ani="slideinup" data-ani-delay="0.2s">
                                    <span class="text-theme" style="text-transform: capitalize;"> {{$product->name}} </span>
                                    </h1>
                                    <div class="slider-line" data-ani="slideinup" data-ani-delay="0.5s">
                                          <div class="ball"></div> 
                                          <div class="ball"></div> 
                                          <div class="ball"></div> 
                   
                                    </div>

                                    <div class="btn-wrap" data-ani="slideinup" data-ani-delay="0.5s">
                                        <a href="{{ route('home',['slug'=>'products','subSlug'=>$product->getPage->slug,'subSlug2'=>$product->name ]) }}"
                                           class="btn">Read More<i class="fas fa-angle-double-right"></i></a>

                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="line1"></div>
                    <div class="line2"></div>
                    <div class="line3"></div>
                </div>
            @endforeach
        @endisset
    </div>
    <button data-slick-prev="#heroSlider7" class="slick-arrow slick-prev">PREV</button>
    <button data-slick-next="#heroSlider7" class="slick-arrow slick-next">NEXT</button>
</div>
<!--======== / Hero Section ========-->

<x-website.pages.home.products-gategory />
<x-website.pages.home.testimonial-area />
   <!--==============================
        Products Area
    ==============================-->
   <div class="donation-area-4 space-bottom overflow-hidden">
       <div class="container space">
           <div class="row justify-content-between align-items-center ">
               <div class="col-lg-6">
                   <div class="title-area text-lg-start text-center">
                       <span class="sub-title">Raised</span>
                       <h2 class="sec-title">Our Recently Products <span class="text-theme">E-SHEF</span></h2>
                   </div>
               </div>
               <div class="col-lg-auto d-lg-block d-none">
                   <div class="sec-btn mb-0">
                       <div class="icon-box arrow-style2">
                           <button data-slick-prev=".donation-slider4" class="slick-arrow default"><i class="fas fa-arrow-left"></i></button>
                           <button data-slick-next=".donation-slider4" class="slick-arrow default"><i class="fas fa-arrow-right"></i></button>
                       </div>
                   </div>
               </div>
           </div>
           <div class="row justify-content-center global-carousel donation-slider4 space" data-slide-show="3" data-md-slide-show="2">
                           @isset($products)
               @foreach ($products as $product )
               <div class="col-lg-4 col-md-6">
                   <div class="donation-card style4">
                       <div class="donation-card-img">
                           @if (!empty($product->getFirstMediaUrl('products')))
                           <img class="resizeImage" loading="lazy" src="{{ asset($product->getFirstMediaUrl('products') )}}" alt="{{ $product->name }}-image" style="height: 300px;">
                           @endif
                       </div>
                       <div class="donation-card-content">
                           <div class="date">{{ $product->getPage->name }}</div>
                           <h3 class="donation-card-title">
                               <a href="{{ route('home',['slug'=>'products','subSlug'=>$product->getPage->slug,'subSlug2'=>$product->name ]) }}">{{ $product->name }}</a>
                           </h3>
                           <div class="skill-feature">
                               <div class="progress">
                                   <div class="progress-bar" style="width: 78%;">
                                   </div>
                               </div>
                           </div>
                           <div class="donate-price-area">
                               <div class="donate-price-innter">
                                   <div class="donate-status">
                                       @if($product->latin_name)
                                       <span>{{ $product->latin_name  }}</span>
                                       @elseif ($product->scientific_name )
                                       <span>{{ $product->scientific_name  }}</span>
                                       @endif
                                   </div>
                                   <div class="donate-status">
                                       @if($product->HS_code)
                                       <span class="counter-numbers" style="color:#4baf47">{{ $product->HS_code }}</span>
                                       @endif
                                   </div>
                               </div>
                           </div>
                           <a href="{{ route('home',['slug'=>'products','subSlug'=>$product->getPage->slug,'subSlug2'=>$product->name ]) }}" class="btn style4">Read More <i class="fas fa-angle-double-right"></i></a>
                       </div>
                   </div>
               </div>
               @endforeach
                       @endisset
           </div>
       </div>
   </div>

