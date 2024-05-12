<?php

namespace App\Listeners\Frontend;

use App\Events\Frontend\ContactsEvent;
use App\Mail\Frontend\Contacts\AdminMail;
use App\Mail\Frontend\Contacts\UserMail;
use App\Models\ContactUs;
use App\Models\Setting;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Mail;

class ContactsListner
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public $adminMail;
    public function __construct()
    {
        $this->adminMail = Setting::where('key',"Email")->value('value');
       
    }

    /**
     * Handle the event.
     *
     * @param  \App\Events\Frontend\ContactsEvent  $event
     * @return void
     */
    public function handle(ContactsEvent $event)
    {   
        Mail::to('e.shef2000@gmail.com')->send( new AdminMail($event->contactUs,$this->adminMail) );
        //originl admin
        // Mail::to($this->adminMail)->send( new AdminMail($event->contactUs,$this->adminMail) );
        Mail::to($event->contactUs['email'])->send( new UserMail($event->contactUs,$this->adminMail) );
       
    }
}
