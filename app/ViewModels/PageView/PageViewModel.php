<?php
namespace App\ViewModels\PageView;
use App\Models\Page;
use Spatie\ViewModels\ViewModel;
use App\Models\TranslationKey;

class PageViewModel extends ViewModel
{
    public  $type;
    public  $translation;

// -------name Page--------
    public $nameView;
    public $IndexView;
    public $CreateView;
    public $RouteIndex;
    public $RouteCreate;
    public $RouteEdit;
    public $RouteDestroy;
    public $Page;
    public $parent;
// -------name Page--------
    public function __construct($Page = null)
    {
        // -------name Page--------
        $this->nameView='Page';
        $this->IndexView='Index Page';
        $this->CreateView='Create Page';
        $this->RouteIndex=route('admin.pages.index');
        $this->RouteCreate=route('admin.pages.create');
        $this->RouteEdit='admin.pages.edit';
        $this->RouteDestroy='admin.pages.destroy';
        // -------name Page--------
        $this->Page = is_null($Page) ? new Page(old()) : $Page;
        $this->type = is_null($Page)?'Create':'Edit' ;
        $this->translation = TranslationKey::get();
        $this->parent      = Page::get();
    }

    public function action(): string
    {
        return is_null($this->Page->id)
            ? route('admin.pages.store')
            : route('admin.pages.update', $this->Page->id);
    }

    public function method(): string
    {
        return is_null($this->Page->id) ? 'POST' : 'PUT';
    }
}
