@extends('website.layouts.master')
@section('frontTitle',ucwords('e-shef Egyptian Herbs & Food'))
@section('frontMeta')
    <x-website.layouts.meta :slug="'home'"></x-website.layouts.meta>
@endsection
@section('frontStyle')
@endsection
@section('frontContent')
 <x-website.pages.home.home />
<x-website.pages.home.contact-us />
@endsection

@section('frontScript')
    <!-- Circle Progress -->
    <script src="{{asset('website')}}/assets/js/circle-progress.js"></script>
@endsection
