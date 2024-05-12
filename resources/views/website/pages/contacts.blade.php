@extends('website.layouts.master')
@section('frontTitle',ucwords('Contact Us'))
@section('frontMeta')
    <x-website.layouts.meta :slug="'contacts'"></x-website.layouts.meta>
@endsection
@section('frontStyle')
@endsection

@section('frontContent')

<x-website.layouts.breadcumb :subSlug="'contacts'" slug="E-SHEF" subSlug2="contacts" route="{{route('home')}}" />
<x-website.pages.contacts />
@endsection

@section('frontScript')
@endsection
