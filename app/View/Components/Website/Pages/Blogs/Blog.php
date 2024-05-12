<?php

namespace App\View\Components\Website\Pages\Blogs;

use App\Models\Blogs;
use Illuminate\View\Component;

class Blog extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $blog;
    public $prevBlog;
    public $nextBlog;
    public function __construct(Blogs $blog)
    {
        $this->blog = $blog;
        $allBlogs = Blogs::where('status','Active')->OrderBy('id','asc')->get('id')->toArray();  
        $ids = collect($allBlogs)->pluck('id')->toArray();

        $currentIdx = array_search($this->blog->id, $ids);
        if ($currentIdx !== false) {
            $prevId = $currentIdx > 0 ? $ids[$currentIdx - 1] : null;
            $nextId = $currentIdx < count($ids) - 1 ? $ids[$currentIdx + 1] : null;
            
            try {
                $this->nextBlog = Blogs::findOrFail($nextId);
            } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $exception) {
                $this->nextBlog = null;
            }
            
            try {
                $this->prevBlog = Blogs::findOrFail($prevId);
            } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $exception) {
                $this->prevBlog = null;
            }
                }

        // dd($this->prevBlog,$this->nextBlog);
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.website.pages.blogs.blog');
    }
}
