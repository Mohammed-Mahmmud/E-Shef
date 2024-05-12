<?php

namespace App\Http\Requests\Blogs;

use Illuminate\Foundation\Http\FormRequest;

class StoreBlogRequest extends FormRequest
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
            'title' => [ 'required', 'max:255' ],
            'description' => [ 'required', 'max:9000' ],
            'status' => [ 'required', 'max:255' ],
            'page_id' => [ 'required', 'max:255' ],
            'image'  =>'required|image | mimes:jpeg,jpg,png,webp,svg',
        ];
    }
}