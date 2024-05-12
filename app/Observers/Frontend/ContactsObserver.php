<?php

namespace App\Observers\Frontend;

use App\Events\Frontend\ContactsEvent;
use App\Models\ContactUs;

class ContactsObserver
{
    /**
     * Handle the ContactUs "created" event.
     *
     * @param  \App\Models\ContactUs  $contactUs
     * @return void
     */
    public function created(ContactUs $contactUs)
    {
        event(new ContactsEvent($contactUs));
    }

    /**
     * Handle the ContactUs "updated" event.
     *
     * @param  \App\Models\ContactUs  $contactUs
     * @return void
     */
    public function updated(ContactUs $contactUs)
    {
        //
    }

    /**
     * Handle the ContactUs "deleted" event.
     *
     * @param  \App\Models\ContactUs  $contactUs
     * @return void
     */
    public function deleted(ContactUs $contactUs)
    {
        //
    }

    /**
     * Handle the ContactUs "restored" event.
     *
     * @param  \App\Models\ContactUs  $contactUs
     * @return void
     */
    public function restored(ContactUs $contactUs)
    {
        //
    }

    /**
     * Handle the ContactUs "force deleted" event.
     *
     * @param  \App\Models\ContactUs  $contactUs
     * @return void
     */
    public function forceDeleted(ContactUs $contactUs)
    {
        //
    }
}
