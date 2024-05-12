<?php

namespace App\View\Components\Portfolio;

use App\Models\CmsPage;
use Illuminate\View\Component;

class Slider extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        $data = CmsPage::where('status','Active')->where('section','slider_contact')->orderBy('sort','asc')->first();
        return view('components.portfolio.slider',compact('data'));
    }
}
