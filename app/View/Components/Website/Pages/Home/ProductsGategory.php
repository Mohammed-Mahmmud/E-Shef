<?php

namespace App\View\Components\Website\Pages\Home;

use App\Models\Page;
use Illuminate\View\Component;

class ProductsGategory extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $products;
    public function __construct()
    {
        $this->products = Page::where('parent_id',9)->get();
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components..website.pages.home.products-gategory',['products'=> $this->products]);
    }
}
