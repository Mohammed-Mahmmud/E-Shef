<?php
namespace App\Actions\Page;
use App\Helper\ImageHelper;
use App\Models\Page;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;

class StorePageAction
{
    use ImageHelper;
    public function handle(array $data): Page
    {
        $pages = Page::create(Arr::except( $data,['image'] )+['slug'=>[
            'en' => Str::slug($data['name']['en']),
            'ar' => Str::slug($data['name']['ar']),
        ]]);
        if ( isset( $data[ 'image' ] ) ) {
            $this->StoreImage( $data, $pages, 'banner' );
        }
        return $pages;
    }
}