<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use App\Models\Blogs;
use App\Models\CmsPage;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function blog($slug=null){
        if(!empty($slug)){
            $blog = Blogs::where('status','Active')->where('title',$slug)->orderBy('id','desc')->first();
            return view('website.pages.viewBlog',compact('blog'));
        }
        return redirect()->route('home');
    }
}
