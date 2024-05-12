@component('mail::message')
<h4 style="text-align:center">Thanks {{ $event['email'] }}  For Sending Details </h4>
<h2 style="text-align:center">we will communicate with you soon! </h2>
<br><br>
Thanks, You <br>
{{ config('app.name') }}
@endcomponent