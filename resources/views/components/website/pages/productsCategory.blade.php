   @props([
   'subSlug',
   'slug',
   ])
    <div class="space overflow-hidden">
        <div class="container">
            <div class="row gy-4 justify-content-center">
                @foreach ( $products as $item )
                <div class="col-lg-4 col-md-6">
                    <div class="service-card style7">
                        @foreach ($item->getMedia('products') as $image )
                        <div class="service-card_img">
                           <img src="{{ $image->getUrl() }}" alt="{{ $image->name }}-category" style="height: 300px;">
                        </div>
                        @endforeach
                        <div class="service-card-hover">
                            <h3 class="service-card_title"><a href="{{ route('home',['slug'=>$slug,'subSlug'=>$subSlug,'subSlug2'=>$item->name]) }}">{{ $item->name }}</a></h3>
                            <p class="service-card_text">{{ ucwords($subSlug) }}</p>
                            <a href="{{ route('home',['slug'=>$slug,'subSlug'=>$subSlug,'subSlug2'=>$item->name ]) }}" class="btn style9">Read More <i class="fas fa-angle-double-right"></i></a>
                        </div>                      
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
    <div class="pagination justify-content-center">
       {{ $products->links() }}
   </div>