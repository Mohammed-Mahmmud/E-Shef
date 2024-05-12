@props([
    'slug'=>false,
    'subSlug'=>false,
    'subSlug2'=>false,
    'route'=>false,
])
    <style>
         .blur {
        backdrop-filter: brightness(25%);
        border-radius: 10px;
        overflow: hidden;
        display: inline-flex; /* Display as inline-flex to adjust width automatically */
        align-items: center; /* Center the content vertically */
        padding: 5px; /* Add some padding for spacing */
    }

    .blur li {
        border-radius: 10px;
        overflow: hidden;
        margin-right: 10px; /* Add space between li elements */
        white-space: nowrap; /* Prevent li elements from wrapping */
    }
    .black{
        color:#F5F5F5;
    }
    </style>

    <div class="breadcumb-wrapper" 
@if (!empty($banner) )
    data-bg-src="{{asset($banner->getFirstMediaUrl('banner'))}}"
    @else
    data-bg-src="{{ asset($image->getFirstMediaUrl('Logo')) }}"
    @endif
    >
        <!-- bg animated image/ -->   
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcumb-content">
                        <h1 class="breadcumb-title black"> {{ ucfirst($subSlug) }}</h1>
                        <ul class="breadcumb-menu blur">
                            <li><a href="{{ $route }}">{{ ucfirst($slug) }}</a></li>
                            <li class="active">{{ ucfirst($subSlug2)}}</li>
                        </ul>
                    </div>
                </div>
            </div>
            
        </div>
    </div>