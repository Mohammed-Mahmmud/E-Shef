@extends('website.layouts.master')
@section('frontTitle',ucwords('blog details'))
@section('frontMeta')
    <x-website.layouts.meta :slug="'blogDetails'" :subSlug="$blog"></x-website.layouts.meta>
@endsection
@section('frontStyle')
@endsection

@section('frontContent')

<x-website.layouts.breadcumb :subSlug="'blogs details'" slug="E-SHEF" subSlug2="{{ $blog->title }}" route="{{route('home')}}"/>

<x-website.pages.blogs.blog :blog="$blog"/> 

@endsection

@section('frontScript')
@endsection
