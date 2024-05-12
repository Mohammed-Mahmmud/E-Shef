@extends('admin.layouts.master')

@section('titleadmin')
{{ str_replace("-"," ",ucfirst($type.' '.$nameView)) }}
@endsection

@section('cssadmin')
@endsection

@section('contentadmin')

<div class="content-body">
    <x-admin.route :route="$RouteIndex" name="{{ $IndexView }}"></x-admin.route>
    <!-- container starts -->
    <div class="container-fluid">
        <!-- row -->
        <div class="col-xl-12 col-lg-12">
            <div class="card">
                <x-admin.crud name="{{ $type??'' }} {{ 'Form '.$nameView }}"></x-admin.crud>
                <div class="card-body">
                    <div class="basic-form">
                        <form method="post" action="{{$action}}" enctype="multipart/form-data">
                            @include('components.admin.csrf')
                            <div class="row">
                                <div class="mb-3 col-md-6">
                                    <x-admin.form.label-first star="*" name="Title">
                                    </x-admin.form.label-first>
                                    <x-admin.form.input old="{{ 'title'}}" name="{{ 'title' }}" type="text" placeholder="Name " :value="$Blogs->title"></x-admin.form.input>
                                    <x-admin.form.label-end name="Please Enter Blog Title">
                                    </x-admin.form.label-end>
                                </div>
                             

                                <div class="mb-3 col-md-6">
                                    <x-admin.form.label-first name="Default Blog input Image">
                                    </x-admin.form.label-first>
                                    <x-admin.form.image name="image" oldname="image" type="file" placeholder="Default Blog input Image">
                                    </x-admin.form.image>
                                    <x-admin.form.label-end name="Please Upload Blog Image">
                                    </x-admin.form.label-end>
                                    <img src="{{ $Blogs->getFirstMediaUrl('Blogs') ??'' }}" id="mainThmb"
                                    style="height: 100px"
                                    >
                                </div>

                                <div class="mb-3 col-md-12">
                                    <x-admin.form.label-first star="*" name="Description ">
                                    </x-admin.form.label-first>
                                    <x-admin.form.text old="{{ 'description'}}" rows='10' name="{{ 'description' }}" type="text" placeholder="Description " :value="$Blogs->description"></x-admin.form.text>
                                    <x-admin.form.label-end name="Please Enter Description">
                                    </x-admin.form.label-end>
                                </div>

                                <div class="mb-3 col-md-6">
                                    <x-admin.form.label-first star="*" name="{{ 'State' }}"></x-admin.form.label-first>
                                    <x-admin.form.state :foreach="App\Models\StaticConst::STATUS" :model="$Blogs" name="status"></x-admin.form.state>
                                    <x-admin.form.label-end name="Please Choose State"> </x-admin.form.label-end>
                                </div>

                                <div class="mb-3 col-md-6">
                                    <x-admin.form.label-first star="*" name="Page"></x-admin.form.label-first>
                                    <x-admin.form.dropdown disabled="disabled" :model="$Blogs" :foreach="$pages" name="page_id" nameselect="Page">
                                    </x-admin.form.dropdown>
                                    <x-admin.form.label-end name="Page">
                                    </x-admin.form.label-end>
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