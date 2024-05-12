<?php

namespace App\View\Components\Website\Layouts;

use App\Models\Page;
use App\Models\Setting;
use Illuminate\Support\Facades\App;
use Illuminate\View\Component;

class Breadcumb extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $image;
    public $banner;
    public $subSlug;
    public function __construct($subSlug)
    {   
        $this->subSlug = $subSlug;
        $this->image = Setting::where('key', 'HeaderImage')->first();
        $this->banner = Page::where('slug->'.App::getLocale(),strtolower($subSlug))->first();
        
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.website.layouts.breadcumb',['image' => $this->image,'banner' => $this->banner,
        'subSlug'=>$this->subSlug
    ]);
    }
}
