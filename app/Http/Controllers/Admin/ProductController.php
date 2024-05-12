<?php

namespace App\Http\Controllers\Admin;

use App\Actions\Products\StoreProductsAction;
use App\Actions\Products\UpdateProductsAction;
use App\Http\Controllers\Controller;
use App\Http\Requests\Products\StoreProductsRequest;
use App\Http\Requests\Products\UpdateProductsRequest;
use App\Models\Products;
use App\ViewModels\ProductsView\ProductsViewModel;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;

class ProductController extends Controller {
    protected $nameViewCrud;
    protected $messageStore;
    protected $messageUpdate;
    protected $messageDelete;
    protected $route;
    protected $Model;
    protected $StoreAction;
    protected $UpdateAction;

    public function __construct( Products $Products ) {
        $this->Model = $Products;
        $this->messageStore = 'Success Add Products';
        $this->messageUpdate = 'Update Products';
        $this->messageDelete = 'Success  Delete Products';
        $this->route = 'admin.products.index';
        $this->nameViewCrud = 'admin.products';
        $this->StoreAction = StoreProductsAction::class;
        $this->UpdateAction = UpdateProductsAction::class;
    }

    public function ViewModel( $data = null ): ProductsViewModel {
        $ViewMode = new ProductsViewModel( $data );
        return $ViewMode;
    }
    /**
    * Display a listing of the resource.
    *
    * @return \Illuminate\Http\Response
    */

    public function index():View {
        $data = $this->Model::Search();
        return view( $this->nameViewCrud.'.view', $this->ViewModel(), compact( 'data' ) );
    }

    public function create():View {
        return view( $this->nameViewCrud.'.crud', $this->ViewModel() );
    }

    // public function store( StoreProductsRequest $request ):RedirectResponse {
        public function store( StoreProductsRequest $request ):RedirectResponse {
        app( $this->StoreAction )->handle( $request->validated() );
        return redirect()->route( $this->route )->with( 'add', $this->messageStore );
    }

    public function edit( $id ):View {

        $data = $this->Model::findOrFail( $id );
        return view( $this->nameViewCrud.'.crud', $this->ViewModel( $data ) );
    }

    public function update( UpdateProductsRequest $request, $id ):RedirectResponse {
        $data = $this->Model::findOrFail( $id );
        app( $this->UpdateAction )->handle( $data, $request->validated() );
        return redirect()->route( $this->route )->with( 'edit', $this->messageUpdate );
    }

    public function destroy( $id ):RedirectResponse {
        $data = $this->Model::find( $id );
        $data->delete();
        return redirect()->route( $this->route )->with( 'delete', $this->messageDelete );
    }
}
