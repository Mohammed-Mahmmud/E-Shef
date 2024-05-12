@extends('website.layouts.master')
@section('frontTitle',ucwords($subSlug))
@section('frontMeta')
    <x-website.layouts.meta :slug="$slug" :subSlug="$subSlug"></x-website.layouts.meta>
@endsection
@section('frontStyle')
<style>
.black{
    color:black; 
}
</style>
@endsection

@section('frontContent')

<x-website.layouts.breadcumb :subSlug="$subSlug" slug="{{ $slug ??'' }}" subSlug2="{{ $subSlug ??''}}" :route="route('home',['slug'=>$slug,'subSlug'=>$subSlug])"/>

    <!--==============================
    Project Area  
    ==============================-->
  <x-website.pages.productsCategory slug="{{ $slug }}" :subSlug="$subSlug" />
@endsection

@section('frontScript')
@endsection
