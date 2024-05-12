<?php

namespace App\Http\Requests\ContactUs;

use Illuminate\Foundation\Http\FormRequest;

class StoreContactUsRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'first_name'=>['required'],
            'lastname'=>['required'],
            'email' => ['required','max:255','min:2','email','unique:contact_us,email'],
            'message'=>['required'],
            'phone'=>['nullable'],
        ];
    }
}
