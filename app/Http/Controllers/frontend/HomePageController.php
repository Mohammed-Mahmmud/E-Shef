<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use App\Models\Page;
use App\Models\Products;
use Illuminate\Http\Request;

class HomePageController extends Controller {
    public function index( $slug = null, $subSlug = null, $subSlug2 = null, $id = null ) {
        $parentPage=Page::whereNull('parent_id')->where('status','Active')->pluck('slug')->toArray();
        $childPage=Page::where('parent_id','9')->where('status','Active')->pluck('slug')->toArray();
        
            if($slug=='products' && !empty($subSlug2)){
                $product = Products::where('name',$subSlug2)->first();
            return view( 'website.pages.viewProduct' ,compact('subSlug2','subSlug','slug','product') );
            }elseif ($slug=='products' && in_array($subSlug,$childPage) ) {
            return view( "website.pages.$slug" ,compact('subSlug','slug') );
            }elseif (in_array($slug,$parentPage)  ) {
                return view( 'website.pages.'.$slug );
            }else{
                return view( 'website.pages.home' );
            }
    }
    
     public function search(Request $request){
        $searchTerm = $request->input('search');
        $products = Products::where('status', 'Active')
            ->where(function ($query) use ($searchTerm) {
                $query->where('name', 'LIKE', "%$searchTerm%")
                    ->orWhere('scientific_name', 'LIKE', "%$searchTerm%")
                    ->orWhere('latin_name', 'LIKE', "%$searchTerm%")
                    ->orWhere('HS_code', 'LIKE', "%$searchTerm%")
                    ->orWhere('twentyFT', 'LIKE', "%$searchTerm%")
                    ->orWhere('fortyFT', 'LIKE', "%$searchTerm%")
                    ->orWhere('description', 'LIKE', "%$searchTerm%");
            })
            ->get();
            return view('website.pages.search', compact('products'));
    }

}
