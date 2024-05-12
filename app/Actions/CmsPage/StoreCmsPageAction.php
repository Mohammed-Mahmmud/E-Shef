<?php
namespace App\Actions\CmsPage;
use App\Helper\ImageHelper;
use App\Models\CmsPage;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;

class StoreCmsPageAction
{
    use ImageHelper;
    public function handle(array $data): CmsPage
    {
        $CmsPage = CmsPage::create((Arr::except($data,'image','image2')));
        if(isset($data['image'])){
        $this->StoreImage($data,$CmsPage,'Page');
        }
        if(isset($data['image2'])){
        $this->StoreImage2($data,$CmsPage,'Page2');
        }
        return $CmsPage;
    }
}