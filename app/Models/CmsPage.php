<?php

namespace App\Models;

use App\Models\Page;
use Illuminate\Contracts\Pagination\LengthAwarePaginator;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\Permission\Traits\HasRoles;
use Spatie\Translatable\HasTranslations;

class CmsPage extends Model implements  HasMedia
{

    use HasFactory, HasRoles, InteractsWithMedia, HasTranslations;

    const STATUS= ['Active','Not Active'];
    public $translatable = [
        'title',
        'sub_title',
        'description',
        'sub_description',
        'button',
        'sub_button',
        ////new////
        'title_tow',
        'sub_title_tow',
        'title_three',
        'sub_title_three',
        'title_four',
        'sub_title_four',
        ////new////
    ];
    const SECTION = ['creative','recent-works','partenrs','testimonial','blog','sliders','video','slider_aboutUs','WhoWeAre','team','slider_contact','portfolio'];
    const SECTION_ABOUTUS = ['slider_aboutUs','WhoWeAre','team','creative'];
    const SECTION_CONTACTUS = ['slider_contact','ContactUs'];
    const SECTION_PORTFOLIO = ['portfolio'];

    protected $fillable = [
        'title',
        'sub_title',
        'description',
        'sub_description',
        'button',
        'sub_button',
        'image',
        'page',
        'section',
        'sort',
        'status',
        ////new////
        'title_tow',
        'sub_title_tow',
        'title_three',
        'sub_title_three',
        'title_four',
        'sub_title_four',
        'route',
        ////new////
    ];

   public function Page()
   {
     return $this->belongsTo(Page::class,'page');
   }

    public function scopeSearch($query):LengthAwarePaginator
    {
         $search = Request()->query('name');
         if(empty($search)){
         return $query->orderBy('id','asc')->paginate(50);
         }else{
         return $query
         ->orWhere('title', 'like' , "%{$search}%")
         ->orWhere('sub_title', 'like' , "%{$search}%")
         ->orderBy('id','asc')->paginate(50);
         }  
   }
}
