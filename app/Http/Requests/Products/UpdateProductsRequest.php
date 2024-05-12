<?php

namespace App\Http\Requests\Products;

use Illuminate\Foundation\Http\FormRequest;

class UpdateProductsRequest extends FormRequest {
    /**
    * Determine if the user is authorized to make this request.
    *
    * @return bool
    */

    public function authorize() {
        return true;
    }

    /**
    * Get the validation rules that apply to the request.
    *
    * @return array<string, mixed>
    */

    public function rules() {
        return [
            'name' => [ 'required', 'max:255' ],
            'description' => [ 'nullable', 'max:9000' ],
            'scientific_name' => [ 'nullable', 'max:255' ],
            'HS_code' => [ 'nullable', 'max:255' ],
            'twentyFT' => [ 'nullable', 'max:255' ],
            'fortyFT' => [ 'nullable', 'max:255' ],            
            'status' => [ 'required', 'max:255' ],
            'page_id' => [ 'required', 'max:255' ],
            'image'  =>'nullable|image |mimes:jpeg,jpg,png,webp,svg',
            'image2'  =>'nullable|image |mimes:jpeg,jpg,png,webp,svg',
        ];
    }
}
