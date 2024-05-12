@extends('website.layouts.master')
@section('frontTitle',ucwords('blogs'))
@section('frontMeta')
    <x-website.layouts.meta :slug="'blogs'"></x-website.layouts.meta>
@endsection
@section('frontStyle')
@endsection

@section('frontContent')

<x-website.layouts.breadcumb :subSlug="'blogs'" slug="E-SHEF" subSlug2="blogs" route="{{route('home')}}"/>

<x-website.pages.blogs.view-blogs/> 
@endsection

@section('frontScript')
@endsection
