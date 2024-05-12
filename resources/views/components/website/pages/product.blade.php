@props([
'slug'=>false,
'subSlug'=>false,
'subSlug2'=>false,
'route'=>false,
'product'
])

<!--==============================
    Donation Details 02
    ==============================-->
<div class="donation-details-area space-top space-extra-bottom overflow-hidden">
    <div class="container">
        <div class="row gx-40">
            <div class="col-lg-7 col-xl-8">
                <div class="donation-page-single">
                    <div class="page-img mb-45">
                        @if (!empty($product->getFirstMediaUrl('products')))
                        <img src="{{ asset($product->getFirstMediaUrl('products') )}}" class="w-100 img-fluid" id="baseImage" width="100" height="90" alt="e-shef products">
                        @else
                        <img src="{{ asset('admin/images/noimage.jpg') }}" class="w-100" width="50" alt="e-not found products">
                        @endif
                    </div>


                    <div class="project-page-single">
                        <div class="page-content">
                            <h2 class="page-title mb-35">{{$product->name}}</h2>

                            <div class="warning-notice">
                                <div class="icon"><i class="fas fa-exclamation-triangle"></i></div>

                                <strong>Notice:</strong>
                                You can Search for Products using name, Latin Name, Scientific Name or HS Code .

                            </div>
                            <p  style="text-align:left; white-space: pre-line   ;">
                                {{$product->description}}
                            </p>
                            {{-- contacts form  --}}
                            <div class="col-lg-12 mt-5">
                              <x-website.layouts.contact-form/>
                            </div>
                            {{-- end contacts form  --}}
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-4 col-lg-5">
                <aside class="sidebar-area">
                    <div class="widget widget_search">
                        <x-website.layouts.search :route="route('search')"></x-website.layouts.search>
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
                            @foreach ($pages as $page )
                            <li>
                                <a href="{{ route('home',['slug'=>$slug,'subSlug'=>$page->slug]) }}"><span @if($subSlug==$page->slug) style="color:green" @endif>{{ $page->name }}</span></a>
                            </li>
                            @endforeach
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
                            @if($product->latin_name )
                            <li>
                                <p class="info-card_text meta">latin name : <a href="#">{{ $product->latin_name }}</a></p>
                            </li>
                            @endif
                            @if($product->scientific_name )
                            <li>
                                <p class="info-card_text meta">scientific name : <a href="#">{{ $product->scientific_name }}</a></p>
                            </li>
                            @endif
                            @if($product->HS_code )
                            <li>
                                <p class="info-card_text meta">HS code : <a href="#">{{ $product->HS_code }}</a></p>
                            </li>
                            @endif
                            @if($product->twentyFT )
                            <li>
                                <p class="info-card_text meta">20 ft container : <a href="#">{{ $product->twentyFT }} Ton</a></p>
                            </li>
                            @endif
                            @if($product->fortyFT )
                            <li>
                                <p class="info-card_text meta">40 ft container : <a href="#">{{ $product->fortyFT }} Ton</a></p>
                            </li>
                            @endif
                        </ul>
                    </div>
                    <div class="widget widget_gallery">
                            <h3 class="widget_title">{{$product->name}} Gallery</h3>
                            <div class="insta-feed">
                                 @if (!empty($product->getFirstMediaUrl('products')))
                                <a href="#" class="viewImage"><img src="{{ asset($product->getFirstMediaUrl('products') )}}" alt="{{$product->name}}-img">
                                <i class="fab fa-instagram"></i></a>
                                @endif
                                 @if (!empty($product->getFirstMediaUrl('products2')))
                                <a href="#" class="viewImage">
                                <img src="{{ asset($product->getFirstMediaUrl('products2') )}}" alt="{{$product->name}}-img2">
                                <i class="fab fa-instagram"></i></a>
                               @endif
                            </div>
                        </div>
                </aside>
            </div>
        </div>
    </div>
</div>
