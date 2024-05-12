<?php

namespace App\Models;

use Illuminate\Contracts\Pagination\LengthAwarePaginator;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\Permission\Traits\HasRoles;
use App\Models\Page;

class Blogs extends Model implements  HasMedia
{

    use HasFactory, HasRoles, InteractsWithMedia;

    const STATUS= ['Active','Not Active'];

    public $guarded=[];
    public function scopeSearch($query):LengthAwarePaginator
    {
         $search = Request()->query('title');
         if(empty($search)){
         return $query->orderBy('id','asc')->paginate(50);
         }else{
         return $query
         ->orWhere('title', 'like' , "%{$search}%")
         ->orWhere('subtitle', 'like' , "%{$search}%")
         ->orderBy('id','asc')->paginate(50);
         }
   }
    public function getPage(){
        return $this->belongsTo( Page::class, 'page_id' );
    }
}
