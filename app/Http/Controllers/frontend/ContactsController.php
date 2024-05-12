<?php

namespace App\Http\Controllers\frontend;

use App\Actions\ContactUs\StoreContactUsAction;
use App\Events\MailEvent;
use App\Http\Controllers\Controller;
use App\Http\Requests\ContactUs\StoreContactUsRequest;
use App\Http\Requests\website\contacts\ContactsStoreRequest;
use Illuminate\Http\Request;

class ContactsController extends Controller
{
    //
    public function contactsStore(ContactsStoreRequest $request){
        // dd($request->all());
        $AllData = app(StoreContactUsAction::class)->handle($request->validated());
        return redirect()->back()->with('add','Success Add ContactUs');
        // event(new MailEvent($AllData));
    }
    // public function store(StoreContactUsRequest $request){
    //     dd('welcome');
    //     $AllData = app(StoreContactUsAction::class)->handle($request->validated());
    //     event(new MailEvent($AllData));
    //     return redirect()->back()->with('add','Success Add ContactUs');
    // }
}
