<?php

namespace App\View\Components\Website\Pages;

use App\Models\Page;
use App\Models\Products;
use Illuminate\Support\Facades\App;
use Illuminate\View\Component;

class ProductsCategory extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $products;
    public $subSlug;
    public function __construct($subSlug)
    {
        $this->subSlug =$subSlug;
        $id = Page::where('slug->'.App::getLocale(),strtolower($subSlug))->value('id');
       $this->products = Products::where('status','Active')->where('page_id',$id)->paginate(15);
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.website.pages.productsCategory',['products'=>$this->products, 'subSlug'=>$this->subSlug]);
    }
}
