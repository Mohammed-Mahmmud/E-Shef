<?php
namespace App\ViewModels\BlogsView;
use App\Models\Blogs;
use App\Models\Page;
use App\Models\TranslationKey;
use Spatie\ViewModels\ViewModel;

class BlogsViewModel extends ViewModel
{
    public  $type;
    public  $translation;

// -------name CmsPage--------
    public $nameView;
    public $IndexView;
    public $CreateView;
    public $RouteIndex;
    public $RouteCreate;
    public $RouteEdit;
    public $RouteDestroy;
    public $Blogs;
// -------name CmsPage--------
    public function __construct($Blogs = null)
    {
        // -------name CmsPage--------
        $this->nameView='Blogs';
        $this->IndexView='Index Blogs';
        $this->CreateView='Create Blogs';
        $this->RouteIndex=route('admin.blogs.index');
        $this->RouteCreate=route('admin.blogs.create');
        $this->RouteEdit='admin.blogs.edit';
        $this->RouteDestroy='admin.blogs.destroy';
        // -------name CmsPage--------
        $this->Blogs = is_null($Blogs) ? new Blogs(old()) : $Blogs;
        $this->type = is_null($Blogs)?'Create':'Edit' ;
        $this->translation = TranslationKey::get();
    }

    public function action(): string
    {
        return is_null($this->Blogs->id)
            ? route('admin.blogs.store')
            : route('admin.blogs.update', $this->Blogs->id);
    }

    public function method(): string
    {
        return is_null($this->Blogs->id) ? 'POST' : 'PUT';
    }
    public function pages(){
        $pages =Page::where('parent_id',9)->where('status','Active')->get(); 
    return $pages ;
    }
}
