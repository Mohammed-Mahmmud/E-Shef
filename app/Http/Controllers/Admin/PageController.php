<?php
namespace App\Http\Controllers\Admin;

use App\Actions\Page\StorePageAction;
use App\Actions\Page\UpdatePageAction;
use App\Models\Page;
use App\ViewModels\PageView\PageViewModel;
use Illuminate\Http\RedirectResponse;
use App\Http\Requests\Page\StorePageRequest;
use App\Http\Requests\Page\UpdatePageRequest;
use App\Http\Controllers\Controller;
use Illuminate\Contracts\View\View;


class PageController extends Controller
{
    protected $nameViewCrud;
    protected $messageStore;
    protected $messageUpdate;
    protected $messageDelete;
    protected $route;
    protected $Model;
    protected $StoreAction;
    protected $UpdateAction;

    public function __construct(Page $Page){
        $this->Model=$Page;
        $this->messageStore='Success Add Page';
        $this->messageUpdate='Update Page';
        $this->messageDelete='Success  Delete Page';
        $this->route='admin.pages.index';
        $this->nameViewCrud='admin.Page';
        $this->StoreAction=StorePageAction::class;
        $this->UpdateAction=UpdatePageAction::class;
    }

    public function ViewModel($data=null): PageViewModel
    {
       $ViewMode = new PageViewModel($data);
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
    public function store(StorePageRequest $request):RedirectResponse
    {
        app($this->StoreAction)->handle($request->validated());
        return redirect()->route($this->route)->with('add',$this->messageStore);
    }
    public function edit($id):View
    {   
        $data = $this->Model::findOrFail($id);
        return view($this->nameViewCrud.'.crud',$this->ViewModel($data));
    }
    public function update(UpdatePageRequest $request, $id):RedirectResponse
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
