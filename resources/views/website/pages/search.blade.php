@extends('website.layouts.master')
@section('frontTitle',ucwords('Search'))
@section('frontMeta')
    <x-website.layouts.meta :slug="'search'"></x-website.layouts.meta>
@endsection
@section('frontStyle')
<style>
.black{
    color:black; 
   
}
</style>
@endsection

@section('frontContent')

<x-website.layouts.breadcumb subSlug="Search Items" slug="Products" subSlug2="Search" route='#'/>

    <!--==============================
    Project Area  
    ==============================-->
   <div class="space overflow-hidden">
        <div class="container">
            <div class="row gy-4 justify-content-center">
                @foreach ( $products as $item )
                <div class="col-lg-3 col-md-6">
                    <div class="service-card style7">
                        @foreach ($item->getMedia('products') as $image )
                        <div class="service-card_img">
                           <img src="{{ $image->getUrl() }}" alt="{{ $image->name }}-search" loading="lazy" style="height:250px">
                        </div>
                        @endforeach
                       
                        <div class="service-card-hover">
                            <h3 class="service-card_title"><a href="{{ route('home',['slug'=>'products','subSlug'=>$item->getPage->slug,'subSlug2'=>$item->name]) }}">{{ $item->name }}</a></h3>
                            <p class="service-card_text">{{ ucfirst($item->getPage->slug) }}</p>
                            <a href="{{ route('home',['slug'=>'products','subSlug'=>$item->getPage->slug,'subSlug2'=>$item->name ]) }}" class="btn style9">Read More <i class="fas fa-angle-double-right"></i></a>
                        </div>                      
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
    <div class="pagination justify-content-center">
       <ul>
           <li><a href="project.html">1</a></li>
           <li><a href="project.html">2</a></li>
           <li><a href="project.html">3</a></li>
           <li><a href="project.html"><i class="fas fa-arrow-right"></i></a></li>
       </ul>
   </div>
@endsection

@section('frontScript')
@endsection
