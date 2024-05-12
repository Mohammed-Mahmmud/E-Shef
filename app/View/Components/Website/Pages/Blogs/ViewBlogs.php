<?php

namespace App\View\Components\Website\Pages\Blogs;

use App\Models\Blogs;
use Illuminate\View\Component;

class ViewBlogs extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $blogs;
    public function __construct()
    {
        $this->blogs = Blogs::where('status','Active')->paginate(9);
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.website.pages.blogs.view-blogs');
    }
}
