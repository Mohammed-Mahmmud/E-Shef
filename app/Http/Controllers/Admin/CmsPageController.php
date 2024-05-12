<?php

namespace App\Http\Controllers\Admin;


use App\Actions\CmsPage\StoreCmsPageAction;
use App\Actions\CmsPage\UpdateCmsPageAction;
use App\Http\Controllers\Controller;
use App\Http\Requests\CmsPage\StoreCmsPageRequest;
use App\Http\Requests\CmsPage\UpdateCmsPageRequest;
use App\Models\CmsCmsPage;
use App\Models\CmsPage;
use App\ViewModels\CmsPageView\CmsPageViewModel;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;

class CmsPageController extends Controller
{
    protected $nameViewCrud;
    protected $messageStore;
    protected $messageUpdate;
    protected $messageDelete;
    protected $route;
    protected $Model;
    protected $StoreAction;
    protected $UpdateAction;

    public function __construct(CmsPage $CmsPage){
        $this->Model=$CmsPage;
        $this->messageStore='Success Add CmsPage';
        $this->messageUpdate='Update Cms Page';
        $this->messageDelete='Success  Delete CmsPage';
        $this->route='admin.cms-pages.index';
        $this->nameViewCrud='admin.CmsPage';
        $this->StoreAction=StoreCmsPageAction::class;
        $this->UpdateAction=UpdateCmsPageAction::class;
    }

    public function ViewModel($data=null): CmsPageViewModel
    {
       $ViewMode = new CmsPageViewModel($data);
       return $ViewMode;
    }

    public function index():View
    {
        $data = $this->Model::Search();
        return view($this->nameViewCrud.'.view',$this->ViewModel(),compact('data'));
    }
    public function create():View
    {
        return view($this->nameViewCrud.'.crud',$this->ViewModel());
    }
    public function store(StoreCmsPageRequest $request):RedirectResponse
    {
        app($this->StoreAction)->handle($request->validated());
        return redirect()->route($this->route)->with('add',$this->messageStore);
    }
    public function edit($id):View
    {   
        $data = $this->Model::findOrFail($id);
        return view($this->nameViewCrud.'.crud',$this->ViewModel($data));
    }
    public function update(UpdateCmsPageRequest $request, $id):RedirectResponse
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
