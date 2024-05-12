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

                            <div class="mb-3 col-md-6">
                                <x-admin.form.label-first
                                    name="{{ TranslationHelper::translate('Default file input Image') }}">
                                </x-admin.form.label-first>
                                <x-admin.form.image star="*" name="image" oldname="image" type="file"
                                    placeholder="{{ TranslationHelper::translate('Default file input Image') }}">
                                </x-admin.form.image>
                                <x-admin.form.label-end
                                    name="{{ TranslationHelper::translate('Please Upload file Image') }}">
                                </x-admin.form.label-end>
                                <img src="" id="mainThmb">
                            </div>

                            <div class="mb-3 col-md-6">
                                <x-admin.form.image-view :model="$Setting" width="100" height="100" name="Logo">
                                </x-admin.form.image-view>
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