<!--==============================
        Contact Area  
    ==============================-->
<div class="contact-area space">
    <div class="container container2">
        <div class="row gy-4 justify-content-center">
            <div class="col-lg-4 col-md-6">
                <div class="">
                    <div class="contact-info_icon">
                        <img src="{{asset('website/assets')}}/img/icon/contact-envelope.svg" alt="icon">
                    </div>
                    <div class="media-body">
                        <h4 class="contact-info_title">Contacts Info</h4>
                        <span class="contact-info_text"><a Phone href="https://wa.me/{{ $phone }}">Phone Number:{{ $phone }}</a></span><br>
                        <span class="contact-info_text"><a href="mailto:{{ $email }}, {{ $email }}">Send Email To : {{ $email }}</a></span>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="">
                    <div class="contact-info_icon">
                        <img src="{{asset('website/assets')}}/img/icon/contact-calendar.svg" alt="icon">
                    </div>
                    <div class="media-body">
                        <h4 class="contact-info_title">Opening Hour</h4>
                        <span class="contact-info_text">{{ $activeFrom }}</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="">
                    <div class="contact-info_icon">
                        <img src="{{asset('website/assets')}}/img/icon/contact-home.svg" alt="icon">
                    </div>
                    <div class="media-body">
                        <h4 class="contact-info_title">Service Center</h4>
                        <span class="contact-info_text">{{ $street }}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="space-bottom">
    <div class="container container2">
        <div class="row">
            <div class="col-lg-6">
                <div class="contact-map-sec">
                <iframe src="{{ $map }}" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
            <div class="col-lg-6">
                <x-website.layouts.contact-form />
            </div>
        </div>
    </div>
</div>
{{--  end contacts   --}}