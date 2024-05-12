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

class Products extends Model implements  HasMedia{
    use HasFactory, HasRoles, InteractsWithMedia;
    
    public $table = 'products';
    protected $guarded = [];
    const STATUS = [ 'Active', 'Not Active' ];
 
 
    
    public function scopeSearch($query):LengthAwarePaginator
    {
         $search = Request()->query('name');
         if(empty($search)){
         return $query->orderBy('id','asc')->paginate(15);
         }else{
         return $query
         ->orWhere('name', 'like' , "%{$search}%")
         ->orWhere('description', 'like' , "%{$search}%")
         ->orderBy('id','asc')->paginate(50);
         }  
   }
   public function getPage(){
    return $this->belongsTo( Page::class, 'page_id' );
}
}
