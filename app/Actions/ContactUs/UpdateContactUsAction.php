<?php
namespace App\Actions\ContactUs;
use App\Models\ContactUs;

class UpdateContactUsAction
{
    public function handle(ContactUs $ContactUs,array $data):ContactUs
    {
        $ContactUs->update($data);
        return $ContactUs;
    }
}