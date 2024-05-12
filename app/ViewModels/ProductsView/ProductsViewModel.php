<?php

namespace App\ViewModels\productsView;

use App\Models\Page;
use App\Models\Products;
use App\Models\TranslationKey;
use Spatie\ViewModels\ViewModel;

class productsViewModel extends ViewModel {
    public  $type;
    public  $translation;

    // -------name CmsPage--------
    public $nameView;
    public $IndexView;
    public $CreateView;
    public $RouteIndex;
    public $RouteCreate;
    public $RouteEdit;
    public $RouteDestroy;
    public $products;
    // -------name CmsPage--------

    public function __construct( $products = null ) {
        // -------name CmsPage--------
        $this->nameView = 'products';
        $this->IndexView = 'Index products';
        $this->CreateView = 'Create products';
        $this->RouteIndex = route( 'admin.products.index', Request()->query() );
        $this->RouteCreate = route( 'admin.products.create' );
        $this->RouteEdit = 'admin.products.edit';
        $this->RouteDestroy = 'admin.products.destroy';
        // -------name CmsPage--------
        $this->products = is_null( $products ) ? new Products( old() ) : $products;
        $this->type = is_null( $products )?'Create':'Edit' ;
        $this->translation = TranslationKey::get();
    }

    public function action(): string {
        return is_null( $this->products->id )
        ? route( 'admin.products.store' )
        : route( 'admin.products.update', $this->products->id );
    }
    
    public function method(): string {
        return is_null( $this->products->id ) ? 'POST' : 'PUT';
    }
    public function pages(){
        $pages =Page::where('parent_id',9)->where('status','Active')->get(); 
    return $pages ;
    }
}
