<?php
namespace App\Actions\Setting;

use App\Models\Setting;
use Illuminate\Support\Str;
use App\Helper\ImageHelper;
use Illuminate\Support\Arr;

class UpdateSettingAction
{
    use ImageHelper;

    public function handle(Setting $Setting,array $data): Setting
    {
        $Setting->update(Arr::except($data,'image'));
        $this->UpdateImage($data,$Setting,'Logo');
        return $Setting;
    }
}
