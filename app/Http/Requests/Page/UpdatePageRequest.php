<?php

namespace App\Http\Requests\Page;

use Illuminate\Foundation\Http\FormRequest;

class UpdatePageRequest extends FormRequest
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
                'name.*'        => 'required|string|min:3',
                'description.*' => 'nullable|string',
                'nave'          => 'string|in:Active,Not Active',
                'footer'        => 'string|in:Active,Not Active',
                'status'        => 'string|in:Active,Not Active',
                'parent_id'     => 'integer|exists:pages,id',
                'image'  =>'nullable|image | mimes:jpeg,jpg,png,webp,svg',
            ];
    }
}
