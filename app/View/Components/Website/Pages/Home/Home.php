<?php

namespace App\View\Components\Website\Pages\Home;

use App\Models\Products;
use Illuminate\View\Component;

class Home extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $products;
    public function __construct()
    {
        $this->products = Products::whereIn('id',[17,26,39,40,61,56])->get();
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.website.pages.home.home',['products'=> $this->products]);
    }
}
