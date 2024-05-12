@extends('website.layouts.master')
@section('frontTitle',ucwords($subSlug2))
@section('frontMeta')
    <x-website.layouts.meta :slug="$slug" :subSlug="$subSlug" :subSlug2="$subSlug2"></x-website.layouts.meta>
@endsection
@section('frontStyle')
<style>
    .meta {
        text-transform: capitalize;
        font-weight: bold;
    }

    .meta a {
        display: inline
    }
    #newImage{
        display:none;
    }
    .img-fluid {
    max-width: 100%;
    height: auto;
}

</style>
@endsection
@section('frontContent')

<x-website.layouts.breadcumb :subSlug="$subSlug" slug="{{ $slug ??'' }}" subSlug2="{{ $subSlug2 ??''}}" :route="route('home',['slug'=>$slug,'subSlug'=>$subSlug])"></x-website.layouts.breadcumb>

<x-website.pages.product :product="$product" subSlug="{{ $subSlug ??'' }}" slug="{{ $slug ??'' }}" subSlug2="{{ $subSlug2 ??''}}" :route="route('home',['slug'=>$slug,'subSlug'=>$subSlug])"></x-website.pages.product>

@endsection
@section('frontScript')
<script src="{{asset('website/pages/products/script.js')}}"></script>
@endsection
