
@component('mail::message')
First Name: {{ $event['firstname'] }}
<br><br>
Last Name: {{ $event['lastname'] }}
<br><br>
Email: {{ $event['email'] }}
<br><br>
Phone: {{ $event['phone'] }}
<br><br><br>
Message: {{ $event['message'] }}
<br><br><br>
Created_at: {{ $event['created_at'] }}
<br><br>
Thanks,<br>
{{ config('app.name') }}
@endcomponent