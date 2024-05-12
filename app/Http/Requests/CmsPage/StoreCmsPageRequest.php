<?php

namespace App\Http\Requests\CmsPage;

use Illuminate\Foundation\Http\FormRequest;

class StoreCmsPageRequest extends FormRequest
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
             'title.*'  =>'nullable',
             'sub_title.*'  =>'nullable',
             'title_tow'     =>'nullable',
             'sub_title_tow'     =>'nullable',
             'title_three'     =>'nullable',
             'sub_title_three'     =>'nullable',
             'title_four'     =>'nullable',
             'sub_title_four'     =>'nullable',
             'description.*'  =>'nullable',
             'sub_description.*'  =>'nullable',
             'page'  =>'required',
             'section'  =>'required',
             'sort'     =>'nullable',
             'button'  =>'nullable',
             'sub_button'  =>'nullable',
             'route'     =>'nullable',
             'status'   => 'in:Active,Not Active',
             'image'  =>'nullable|image',
             'image2'  =>'nullable|image',
        ];
    }
}