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
                                    <x-admin.form.label-first star="*" name="Name">
                                    </x-admin.form.label-first>
                                    <x-admin.form.input old="{{ 'name'}}" name="{{ 'name' }}" type="text" placeholder="Name " :value="$products->name"></x-admin.form.input>
                                    <x-admin.form.label-end name="Please Enter Admin Name">
                                    </x-admin.form.label-end>
                                </div>
                                <div class="mb-3 col-md-6">
                                    <x-admin.form.label-first star="*" name="Latin Name">
                                    </x-admin.form.label-first>
                                    <x-admin.form.input old="{{ 'latin_name'}}" name="{{ 'latin_name' }}" type="text" placeholder="latin name " :value="$products->latin_name"></x-admin.form.input>
                                    <x-admin.form.label-end name="Please Enter latin Name">
                                    </x-admin.form.label-end>
                                </div>

                                 <div class="mb-3 col-md-6">
                                    <x-admin.form.label-first star="*" name="scientific name">
                                    </x-admin.form.label-first>
                                    <x-admin.form.input old="{{ 'scientific_name'}}" name="{{ 'scientific_name' }}" type="text" placeholder="scientific name " :value="$products->scientific_name"></x-admin.form.input>
                                    <x-admin.form.label-end name="Please Enter scientific Name">
                                    </x-admin.form.label-end>
                                </div>

                                 <div class="mb-3 col-md-6">
                                    <x-admin.form.label-first star="*" name="HS code">
                                    </x-admin.form.label-first>
                                    <x-admin.form.input old="{{ 'HS_code'}}" name="{{ 'HS_code' }}" type="text" placeholder="HS code " :value="$products->HS_code"></x-admin.form.input>
                                    <x-admin.form.label-end name="Please Enter HS code">
                                    </x-admin.form.label-end>
                                </div>

                                 <div class="mb-3 col-md-6">
                                    <x-admin.form.label-first star="*" name="20 ft container">
                                    </x-admin.form.label-first>
                                    <x-admin.form.input old="{{ 'twentyFT'}}" name="{{ 'twentyFT' }}" type="text" placeholder="20 ft container" :value="$products->twentyFT"></x-admin.form.input>
                                    <x-admin.form.label-end name="Please Enter 20 ft container">
                                    </x-admin.form.label-end>
                                </div>

                                 <div class="mb-3 col-md-6">
                                    <x-admin.form.label-first star="*" name="40 ft container">
                                    </x-admin.form.label-first>
                                    <x-admin.form.input old="{{ 'fortyFT'}}" name="{{ 'fortyFT' }}" type="text" placeholder="40 ft container " :value="$products->fortyFT"></x-admin.form.input>
                                    <x-admin.form.label-end name="Please Enter 40 ft container">
                                    </x-admin.form.label-end>
                                </div>

                                <div class="mb-3 col-md-6">
                                    <x-admin.form.label-first name="Default Product input Image">
                                    </x-admin.form.label-first>
                                    <x-admin.form.image name="image" oldname="image" type="file" placeholder="Default Product input Image">
                                    </x-admin.form.image>
                                    <x-admin.form.label-end name="Please Upload Product Image">
                                    </x-admin.form.label-end>
                                    <img src="{{ $products->getFirstMediaUrl('products') ??'' }}" id="mainThmb"
                                    style="height: 100px"
                                    >
                                </div>
                                <div class="mb-3 col-md-6">
                                    <x-admin.form.label-first name="Second Product input Image">
                                    </x-admin.form.label-first>
                                    <x-admin.form.image name="image2" oldname="image" type="file" placeholder="Second Product input Image">
                                    </x-admin.form.image>
                                    <x-admin.form.label-end name="Please Upload Product Image">
                                    </x-admin.form.label-end>
                                     <img src="{{ $products->getFirstMediaUrl('products2') ??'' }}" id="mainThmb"
                                    style="height: 100px"
                                    >
                                </div>

                                <div class="mb-3 col-md-12">
                                    <x-admin.form.label-first star="*" name="Description ">
                                    </x-admin.form.label-first>
                                    <x-admin.form.text old="{{ 'description'}}" rows='8' name="{{ 'description' }}" type="text" placeholder="Description " :value="$products->description"></x-admin.form.text>
                                    <x-admin.form.label-end name="Please Enter Description">
                                    </x-admin.form.label-end>
                                </div>

                                <div class="mb-3 col-md-6">
                                    <x-admin.form.label-first star="*" name="{{ 'State' }}"></x-admin.form.label-first>
                                    <x-admin.form.state :foreach="App\Models\StaticConst::STATUS" :model="$products" name="status"></x-admin.form.state>
                                    <x-admin.form.label-end name="Please Choose State"> </x-admin.form.label-end>
                                </div>

                                <div class="mb-3 col-md-6">
                                    <x-admin.form.label-first star="*" name="Page"></x-admin.form.label-first>
                                    <x-admin.form.dropdown disabled="disabled" :model="$products" :foreach="$pages" name="page_id" nameselect="Page">
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
