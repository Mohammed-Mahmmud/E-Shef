<?php

namespace App\View\Components\Website\Pages;

use App\Models\Page;
use Illuminate\View\Component;

class Product extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $pages;

    public function __construct()
    {
        $this->pages = Page::where('parent_id',9)->where('status','Active')->get();
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {   
       
        return view('components.website.pages.product',['pages'=>$this->pages]);
    }
}
