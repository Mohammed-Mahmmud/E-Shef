@extends('admin.layouts.master')

@section('titleadmin')
{{ str_replace("-"," ",ucfirst($type.' '.$nameView)) }}
@endsection

@section('cssadmin')
@endsection

@section('contentadmin')

<div class="content-body">
    <x-admin.route :route="$RouteIndex" name="{{ TranslationHelper::translate($IndexView) }}"></x-admin.route>
    <!-- container starts -->
    <div class="container-fluid">
        <!-- row -->
        <div class="col-xl-12 col-lg-12">
            <div class="card">
                <x-admin.crud name="{{ $type??'' }} {{ TranslationHelper::translate('Form '.$nameView) }}">
                </x-admin.crud>
                <div class="card-body">
                    <div class="basic-form">
                        <form method="post" action="{{$action}}" enctype="multipart/form-data">
                            @include('components.admin.csrf')
                            <div class="row">
                            
                            
                                <div class="mb-3 col-md-6">
                                    <x-admin.form.label-first  name="First Name"></x-admin.form.label-first>
                                    <x-admin.form.input old="firstname" :value="$ContactUs->firstname" name="firstname" type="text"
                                        placeholder="First Name"></x-admin.form.input>
                                    <x-admin.form.label-end name="Please Enter First Name">
                                    </x-admin.form.label-end>
                                </div>
                                
                                <div class="mb-3 col-md-6">
                                    <x-admin.form.label-first  name="Last Name"></x-admin.form.label-first>
                                    <x-admin.form.input old="lastname" :value="$ContactUs->lastname" name="lastname" type="text"
                                        placeholder="Last Name"></x-admin.form.input>
                                    <x-admin.form.label-end name="Please Enter Last Name">
                                    </x-admin.form.label-end>
                                </div>
                            
                                <div class="mb-3 col-md-6">
                                    <x-admin.form.label-first  name="Email"></x-admin.form.label-first>
                                    <x-admin.form.input old="email" :value="$ContactUs->email" name="email" type="text"
                                        placeholder="Email"></x-admin.form.input>
                                    <x-admin.form.label-end name="Please Enter Email">
                                    </x-admin.form.label-end>
                                </div>
                                
                                <div class="mb-3 col-md-6">
                                    <x-admin.form.label-first  name="Message"></x-admin.form.label-first>
                                    <textarea class="form-control" name="message" id="" cols="30" rows="10">{!! $ContactUs->message !!}</textarea>
                                </div>
                            </div>
                            <x-admin.form.submit :route="$RouteIndex"></x-admin.form.submit>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


@section('jsadmin')
@endsection