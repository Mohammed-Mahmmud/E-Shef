<?php
namespace App\Actions\Products;
use App\Helper\ImageHelper;
use App\Models\Products;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;

class UpdateProductsAction {
    use ImageHelper;

    public function handle( Products $products, array $data ):products {
        $products->update( Arr::except( $data,['image', 'image2']));

        if ( isset( $data[ 'image' ] ) ) {
            $this->UpdateImage( $data, $products, 'products' );
        }
        if ( isset( $data[ 'image2' ] ) ) {
            $this->UpdateImage2( $data, $products, 'products2' );
        }
        return $products;
    }
}
