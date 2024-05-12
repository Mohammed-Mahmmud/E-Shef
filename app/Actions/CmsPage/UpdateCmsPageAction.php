<?php
namespace App\Actions\CmsPage;

use App\Helper\ImageHelper;
use App\Models\CmsPage;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;

class UpdateCmsPageAction
{
    use ImageHelper;
    public function handle(CmsPage $CmsPage,array $data):CmsPage
    {
        $CmsPage->update((Arr::except($data,'image')));
        if(isset($data['image'])){
        $this->UpdateImage($data,$CmsPage,'Page');
        }
        if(isset($data['image2'])){
        $this->UpdateImage2($data,$CmsPage,'Page2');
        }
        return $CmsPage;
    }
}