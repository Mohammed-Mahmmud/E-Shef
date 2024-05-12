<?php
namespace App\Actions\Page;

use App\Helper\ImageHelper;
use App\Models\Page;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;

class UpdatePageAction
{
    use ImageHelper;
    public function handle(Page $Page,array $data):Page
    {
        $Page->update(Arr::except( $data,['image'] )+['slug'=>[
            'en' => Str::slug($data['name']['en']),
            'ar' => Str::slug($data['name']['ar']),
        ]]);
        if ( isset( $data[ 'image' ] ) ) {
            $this->UpdateImage( $data, $Page, 'banner' );
        }
        return $Page;
    }
}
