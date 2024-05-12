<?php

namespace App\Http\Requests\Setting;

use Illuminate\Foundation\Http\FormRequest;

class UpdateSettingRequest extends FormRequest
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
        $id = Request()->segment(4);

        return [
            'key'   =>'string|unique:settings,key,'.$id,
            'value' =>'string|unique:settings,value,'.$id,
            'image' =>'nullable|image'
        ];
    }
}
