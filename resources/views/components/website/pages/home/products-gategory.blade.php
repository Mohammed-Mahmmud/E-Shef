   <!--==============================
    Service Area 05
    ==============================-->
    <div class="service-area-7 space-bottom overflow-hidden">
        <div class="container">
            <div class="row gy-4 justify-content-center">
                @isset($products)
                @foreach($products as $item)
                <div class="col-lg-4 col-md-6">
                    <div class="service-card style5">
                        @if (!empty($item->getFirstMediaUrl('banner')))
                         <a href="{{route('home',["products",$item->slug])}}">
                        <div class="service-card_img">
                            <img src="{{ asset($item->getFirstMediaUrl('banner') )}}" alt="img-banner" style="height:250px">
                        </div>
                        </a>
                       @endif
                        <div class="service-card-hover">
                            <a href="{{route('home',["products",$item->slug])}}" class="btn style9">Read More About {{$item->name}} <i
                                    class="fas fa-angle-double-right"></i></a>
                        </div>
                    </div>
                </div>
               @endforeach
                @endisset
            </div>
        </div>
    </div>      