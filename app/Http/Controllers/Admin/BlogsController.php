<?php
namespace App\Http\Controllers\Admin;

use App\Actions\Blogs\StoreBlogAction;
use App\Actions\Blogs\StoreBlogPageAction;
use App\Actions\Blogs\UpdateBlogAction;
use App\Actions\Blogs\UpdateBlogPageAction;
use App\Actions\CmsPage\StoreCmsPageAction;
use App\Actions\CmsPage\UpdateCmsPageAction;
use App\Http\Controllers\Controller;
use App\Http\Requests\Blogs\StoreBlogRequest;
use App\Http\Requests\Blogs\UpdateBlogRequest;
use App\Http\Requests\CmsPage\StoreCmsPageRequest;
use App\Http\Requests\CmsPage\UpdateCmsPageRequest;
use App\Models\Blogs;
use App\Models\CmsCmsPage;
use App\Models\CmsPage;
use App\ViewModels\BlogsView\BlogsViewModel;
use App\ViewModels\CmsPageView\CmsPageViewModel;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;

class BlogsController extends Controller
{
    protected $nameViewCrud;
    protected $messageStore;
    protected $messageUpdate;
    protected $messageDelete;
    protected $route;
    protected $Model;
    protected $StoreAction;
    protected $UpdateAction;

    public function __construct(Blogs $Blogs){
        $this->Model=$Blogs;
        $this->messageStore='Success Add Blogs';
        $this->messageUpdate='Update Blogs';
        $this->messageDelete='Success  Delete Blogs';
        $this->route='admin.blogs.index';
        $this->nameViewCrud='admin.blogs';
        $this->StoreAction=StoreBlogAction::class;
        $this->UpdateAction=UpdateBlogAction::class;
    }

    public function ViewModel($data=null): BlogsViewModel
    {
       $ViewMode = new BlogsViewModel($data);
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
    public function store(StoreBlogRequest $request):RedirectResponse
    {
        app($this->StoreAction)->handle($request->validated());
        return redirect()->route($this->route)->with('add',$this->messageStore);
    }
    public function edit($id):View
    {   
        $data = $this->Model::findOrFail($id);
        return view($this->nameViewCrud.'.crud',$this->ViewModel($data));
    }
    public function update(UpdateBlogRequest $request, $id):RedirectResponse
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