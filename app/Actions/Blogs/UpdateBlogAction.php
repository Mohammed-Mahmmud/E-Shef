<?php
namespace App\Actions\Blogs;
use App\Helper\ImageHelper;
use App\Models\Blogs;
use Illuminate\Support\Arr;

class UpdateBlogAction
{
    use ImageHelper;
    public function handle(Blogs $Blogs,array $data):Blogs
    {
        $Blogs->update(Arr::except($data,[ 'image']));

        if(isset($data['image'])){
        $this->UpdateImage($data,$Blogs,'Blogs');
        }
        return $Blogs;
    }
}