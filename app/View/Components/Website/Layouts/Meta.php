<?php

namespace App\View\Components\Website\Layouts;

use App\Models\Blogs;
use App\Models\Page;
use App\Models\Products;
use App\Models\Setting;
use App\View\Components\Website\Pages\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\View\Component;

class Meta extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $requestUri;
    public $image;
    public $title;
    public $description;
    public function __construct(Request $request, $slug = null, $subSlug=null, $subSlug2=null)
    {
      
        $this->requestUri = $request->path();
        if($slug =='products' && !empty($subSlug) && !empty($subSlug2)){
            $product =  Products::where('status', 'Active')->where('name', strtolower($subSlug2))->first();
            $this->image = $product->getFirstMediaUrl('products');
            $this->title = $product->name;
            $this->description = $product->description;
        }elseif($slug =='products' && !empty($subSlug) && empty($subSlug2)){
            $page = Page::where('slug->'.App::getLocale(),strtolower($subSlug))->first();
            
            $desc1 = "Explore our extensive collection of premium seeds, carefully selected to inspire your gardening journey and yield bountiful harvests of fresh, flavorful ingredients. From vibrant vegetables to fragrant herbs and heirloom spices, our seeds are sourced from trusted growers and producers, ensuring quality and authenticity in every plant you cultivate.";
            $desc2 = "
               Enhance your dishes with our aromatic herbs, including basil, cilantro, mint, parsley, and more, each adding a burst of freshness and complexity to your recipes. Our exotic spices, such as cumin, turmeric, paprika, and cinnamon, bring depth and richness to your culinary creations, transporting your taste buds to far-off lands with each sprinkle.";
               $desc3=
               "At e-shef, we prioritize sustainability, freshness, and flavor, offering seeds, herbs, and spices free from additives and pesticides, preserving their natural essence and health benefits. Whether you're a seasoned chef, avid gardener, or culinary enthusiast, e-shef provides the tools and ingredients to transform your kitchen and garden into vibrant centers of creativity and nourishment.";
           $this->title = $page->name;
           $this->description = $page->description.' - '. $desc1.' '.$desc2.' '.$desc3;
           $this->image = $page->getFirstMediaUrl('banner');          
        }elseif($slug =="blogDetails" && !empty($subSlug)){
            $this->title = $subSlug->title;
            $this->description = $subSlug->title;
            $this->image = $subSlug->getFirstMediaUrl('Blogs');
        }elseif(!empty($slug) && empty($subSlug) && empty($subSlug2)){
            if($slug!='search'){
            $page = Page::where('slug->'.App::getLocale(),strtolower($slug))->first();
            $this->title = $page->name;
            $this->description = $page->name . ' - Egyptian Herbs & Food';
            $this->image= $page->getFirstMediaUrl('banner');
            }else{
            $this->title = 'Search Results';
            $this->description = ' - Egyptian Herbs & Food you can search using search bar for any of e-shef products using any of the product keywords'; 
            $this->image= Setting::where('key', 'HeaderImage')->first()->getFirstMediaUrl('Logo');
            }
        }
   }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.website.layouts.meta');
    }
}
