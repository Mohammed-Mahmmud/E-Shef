<?php
namespace App\ViewModels\CmsPageView;
use App\Models\CmsPage;
use App\Models\Page;
use App\Models\TranslationKey;
use Spatie\ViewModels\ViewModel;

class CmsPageViewModel extends ViewModel
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
    public $CmsPage;
    public $parent;
// -------name CmsPage--------
    public function __construct($CmsPage = null)
    {
        // -------name CmsPage--------
        $this->nameView='CmsPage';
        $this->IndexView='Index CmsPage';
        $this->CreateView='Create CmsPage';
        $this->RouteIndex=route('admin.cms-pages.index');
        $this->RouteCreate=route('admin.cms-pages.create');
        $this->RouteEdit='admin.cms-pages.edit';
        $this->RouteDestroy='admin.cms-pages.destroy';
        // -------name CmsPage--------
        $this->CmsPage = is_null($CmsPage) ? new CmsPage(old()) : $CmsPage;
        $this->type = is_null($CmsPage)?'Create':'Edit' ;
        $this->translation = TranslationKey::get();
        $this->parent      = Page::get();
    }

    public function action(): string
    {
        return is_null($this->CmsPage->id)
            ? route('admin.cms-pages.store')
            : route('admin.cms-pages.update', $this->CmsPage->id);
    }

    public function method(): string
    {
        return is_null($this->CmsPage->id) ? 'POST' : 'PUT';
    }
}
