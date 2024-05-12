<?php

namespace App\Http\Controllers\Admin;


use App\Actions\CmsPage\StoreCmsPageAction;
use App\Actions\CmsPage\UpdateCmsPageAction;
use App\Actions\ContactUs\UpdateContactUsAction;
use App\Http\Controllers\Controller;
use App\Http\Requests\CmsPage\StoreCmsPageRequest;
use App\Http\Requests\CmsPage\UpdateCmsPageRequest;
use App\Http\Requests\ContactUs\StoreContactUsRequest;
use App\Models\CmsCmsPage;
use App\Models\CmsPage;
use App\Models\ContactUs;
use App\ViewModels\CmsPageView\CmsPageViewModel;
use App\ViewModels\ContactUsView\ContactUsViewModel;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;

class ContactUsController extends Controller
{
    protected $nameViewCrud;
    protected $messageStore;
    protected $messageUpdate;
    protected $messageDelete;
    protected $route;
    protected $Model;
    protected $StoreAction;
    protected $UpdateAction;

    public function __construct(ContactUs $ContactUs){
        $this->Model=$ContactUs;
        $this->messageStore='Success Add ContactUs';
        $this->messageUpdate='Update ContactUs';
        $this->messageDelete='Success  Delete ContactUs';
        $this->route='admin.contact-us.index';
        $this->nameViewCrud='admin.ContactUs';
        $this->UpdateAction=UpdateContactUsAction::class;
    }

    public function ViewModel($data=null): ContactUsViewModel
    {
       $ViewMode = new ContactUsViewModel($data);
       return $ViewMode;
    }

    public function index():View
    {
        $data = $this->Model::Search();
        return view($this->nameViewCrud.'.view',$this->ViewModel(),compact('data'));
    }
    public function edit($id):View
    {   
        $data = $this->Model::findOrFail($id);
        return view($this->nameViewCrud.'.crud',$this->ViewModel($data));
    }
    public function update(StoreContactUsRequest $request, $id):RedirectResponse
    {
        $data = $this->Model::findOrFail($id);
        app($this->UpdateAction)->handle($data,$request->validated());
        return redirect()->route($this->route)->with('edit',$this->messageUpdate);
    }
    public function destroy($id):RedirectResponse
    {
        $data = $this->Model::find($id);
        $data->delete();
        return redirect()->route($this->route)->with('delete',$this->messageDelete);
    }
}
