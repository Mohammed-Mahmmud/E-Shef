<?php
namespace App\Actions\Blogs;
use App\Helper\ImageHelper;
use App\Models\Blogs;
use Illuminate\Support\Arr;

class StoreBlogAction
{
    use ImageHelper;
    public function handle(array $data): Blogs
    {
        $Blogs = Blogs::create((Arr::except($data,['image'])));

        if(isset($data['image'])){
        $this->UpdateImage($data,$Blogs,'Blogs');
        }
        return $Blogs;
    }
}