<?php
namespace App\Actions\ContactUs;
use App\Models\ContactUs;
class StoreContactUsAction
{
    public function handle(array $data): ContactUs
    {
        $ContactUs = ContactUs::create($data);
        return $ContactUs;
    }
}


