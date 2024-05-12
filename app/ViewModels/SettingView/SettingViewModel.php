<?php
namespace App\ViewModels\SettingView;
use App\Models\Setting;
use Spatie\ViewModels\ViewModel;

class SettingViewModel extends ViewModel
{
    // Setting
    public  $Setting;
    public  $type;

// -------name country--------
    public $nameView;
    public $IndexView;
    public $CreateView;
    public $RouteIndex;
    public $RouteCreate;
    public $RouteEdit;
    public $RouteDestroy;
    public $data;
    public $RouteEditsettings;
// -------name country--------
    public function __construct($Setting = null)
    {
        // -------name country--------
        $this->data     = Setting::Search();
        $this->nameView='Setting';
        $this->IndexView='Index Setting';
        $this->CreateView='Create Setting';
        $this->RouteEditSetting='Edit Setting';
        $this->RouteIndex=route('admin.settings.index');
        $this->RouteCreate=route('admin.settings.create');
        $this->RouteEdit='admin.settings.edit';
        $this->RouteDestroy='admin.settings.destroy';
        // -------name country--------
        $this->Setting = is_null($Setting) ? new Setting(old()) : $Setting;
        $this->type = is_null($Setting)?'Create':'Edit' ;
    }

    public function action(): string
    {
        return is_null($this->Setting->id)
            ? route('admin.settings.store')
            : route('admin.settings.update', $this->Setting->id);
    }

    public function method(): string
    {
        return is_null($this->Setting->id) ? 'POST' : 'PUT';
    }
}
