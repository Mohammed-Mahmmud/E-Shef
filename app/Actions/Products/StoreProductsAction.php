<?php
namespace App\Actions\Products;
use App\Helper\ImageHelper;
use App\Models\Products;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;

class StoreProductsAction {
    use ImageHelper;

    public function handle( array $data ): products {
        $products = Products::create(  Arr::except( $data,['image', 'image2'] )  );

        if ( isset( $data[ 'image' ] ) ) {
            $this->StoreImage( $data, $products, 'products' );
        }
        if ( isset( $data[ 'image2' ] ) ) {
            $this->StoreImage2( $data, $products, 'products2' );
        }
        return $products;
    }
}
