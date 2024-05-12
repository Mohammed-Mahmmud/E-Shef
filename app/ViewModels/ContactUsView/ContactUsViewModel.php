<?php
namespace App\ViewModels\ContactUsView;
use App\Models\ContactUs;
use App\Models\Page;
use App\Models\TranslationKey;
use Spatie\ViewModels\ViewModel;

class ContactUsViewModel extends ViewModel
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
    public $ContactUs;
    public $parent;
// -------name CmsPage--------
    public function __construct($ContactUs = null)
    {
        // -------name CmsPage--------
        $this->nameView='ContactUs';
        $this->IndexView='Index ContactUs';
        $this->CreateView='Create ContactUs';
        $this->RouteIndex=route('admin.contact-us.index');
        $this->RouteCreate=route('admin.contact-us.create');
        $this->RouteEdit='admin.contact-us.edit';
        $this->RouteDestroy='admin.contact-us.destroy';
        // -------name ContactUs--------
        $this->ContactUs = is_null($ContactUs) ? new ContactUs(old()) : $ContactUs;
        $this->type = is_null($ContactUs)?'Create':'Edit' ;
        $this->translation = TranslationKey::get();
        $this->parent      = Page::get();
    }

    public function action(): string
    {
        return is_null($this->ContactUs->id)
            ? route('admin.contact-us.store')
            : route('admin.contact-us.update', $this->ContactUs->id);
    }

    public function method(): string
    {
        return is_null($this->ContactUs->id) ? 'POST' : 'PUT';
    }
}
