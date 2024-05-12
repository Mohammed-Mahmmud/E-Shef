@extends('admin.layouts.master')

@section('titleadmin')
{{ str_replace("-"," ",ucfirst(TranslationHelper::translate($nameView))) }}
@endsection
@section('cssadmin')
@endsection

@section('contentadmin')

<div class="content-body">
    <x-admin.route :route="$RouteCreate" name="{{ TranslationHelper::translate($CreateView) }}">
    </x-admin.route>
    <!-- container starts -->
    <div class="container-fluid">
        <!-- row -->
        <div class="">
            <div class="demo-view">
                <div class="container-fluid pt-0 ps-0 pe-lg-4 pe-0">
                    <div class="row">
                        <!-- Column starts -->
                        <div class="col-xl-12">
                            <div class="card dz-card" id="accordion-one">
                                <div class="card-header flex-wrap">
                                    <x-admin.basic name="{{ TranslationHelper::translate($nameView) }}"></x-admin.basic>
                                    <x-admin.search :route="$RouteIndex"></x-admin.search>
                                </div>
                                <ul class="nav nav-tabs dzm-tabs" id="myTab" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <a href="{{ $RouteCreate }}" class="nav-link active"
                                            id="home-tab" data-bs-target="#BadgesSize" type="button" role="tab"
                                            aria-selected="true">{{ TranslationHelper::translate($type) }}</a>
                                    </li>
                                </ul>
                                <!--tab-content-->
                                <div class="tab-content" id="myTabContent">
                                    <div class="tab-pane fade show active" id="Preview" role="tabpanel"
                                        aria-labelledby="home-tab">
                                        <div class="card-body pt-0">
                                            <div class="table-responsive ">
                                                <table id="example5" class="display table dataTable no-footer"
                                                    style="min-width: 845px" role="grid">
                                                    <thead>
                                                        <tr style="background-color: #F0F4F9;">
                                                            <x-admin.table th1='#'
                                                                th2="{{ TranslationHelper::translate('Name') }}"
                                                                th3="{{ TranslationHelper::translate('Slug') }}"
                                                                th4="{{ TranslationHelper::translate('Banner') }}"
                                                                {{--  th5="{{ TranslationHelper::translate('description') }}"  --}}
                                                                th6="{{ TranslationHelper::translate('Created at') }}"
                                                                th7="{{ TranslationHelper::translate('Nav') }}"
                                                                th8="{{ TranslationHelper::translate('Footer') }}"
                                                                th9="{{ TranslationHelper::translate('Status') }}"
                                                                th10="{{ TranslationHelper::translate('Parent') }}"
                                                                th11="{{ TranslationHelper::translate('processes') }}">
                                                                >
                                                            </x-admin.table>
                                                        </tr>
                                                    </thead>
                                                    <tbody>

                                                        @foreach ($data as $key => $item)
                                                     
                                                        <tr>
                                                            <td>{{++$key}}</td>
                                                            <td>{{ $item->name }}</td>
                                                            <td>{{ $item->slug }}</td>
                                                            <td>

                                                           <x-admin.form.image-view :model="$item" width="100"
                                                                    height="100" name="banner">
                                                                </x-admin.form.image-view>
                                                          </td>
                                                            {{--  <td>{{ $item->description }}</td>  --}}
                                                            <td>{{ $item->created_at->toFormattedDateString('Y-m-d') }}</td>

                                                            <td>
                                                                <x-admin.status :status="$item->nave">
                                                                </x-admin.status>
                                                            </td>
                                                            
                                                            <td>
                                                                <x-admin.status :status="$item->footer">
                                                                </x-admin.status>
                                                            </td>
                                                            
                                                            <td>
                                                                <x-admin.status :status="$item->status">
                                                                </x-admin.status>
                                                            </td>

                                                            <td>{{ $item->parent->name ?? '' }}</td>

                                                            <td>
                                                                <x-admin.edit
                                                                    :route="route($RouteEdit, $item->id)">
                                                                </x-admin.edit>
                                                                <x-admin.delete-model :id="$item->id"
                                                                    :name="$item->name"
                                                                    :route="route($RouteDestroy, $item->id)">
                                                                </x-admin.delete-model>
                                                            </td>

                                                        </tr>
                                                        @endforeach
                                                    </tbody>
                                                    <tfoot>
                                                        <tr style="background-color: #F0F4F9;">
                                                            <x-admin.table th1='#'
                                                                th2="{{ TranslationHelper::translate('Name') }}"
                                                                th3="{{ TranslationHelper::translate('Slug') }}"
                                                                th4="{{ TranslationHelper::translate('Banner') }}"
                                                                {{--  th5="{{ TranslationHelper::translate('description') }}"  --}}
                                                                th6="{{ TranslationHelper::translate('Created at') }}"
                                                                th7="{{ TranslationHelper::translate('Nav') }}"
                                                                th8="{{ TranslationHelper::translate('Footer') }}"
                                                                th9="{{ TranslationHelper::translate('Status') }}"
                                                                th10="{{ TranslationHelper::translate('Parent') }}"
                                                                th11="{{ TranslationHelper::translate('processes') }}">
                                                                
                                                            </x-admin.table>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                                {{$data->links()}}
                                            </div>
                                        </div>
                                        <!-- /Default accordion -->
                                    </div>
                                </div>
                                <!--/tab-content-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection


@section('jsadmin')
@endsection
