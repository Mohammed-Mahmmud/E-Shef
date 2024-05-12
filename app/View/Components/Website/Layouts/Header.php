<?php

namespace App\View\Components\Website\Layouts;

use App\Models\Setting;
use Illuminate\View\Component;
use App\Models\Page;

class Header extends Component {
    /**
    * Create a new component instance.
    *
    * @return void
    */

    public function __construct() {
        //
    }

    /**
    * Get the view / contents that represent the component.
    *
    * @return \Illuminate\Contracts\View\View|\Closure|string
    */

    public function render() {

        $pages = Page::whereNull( 'parent_id' )->where( [
            [ 'status', 'Active' ],
            [ 'nave', 'Active' ],
        ] )->with( 'childes' )->get();
        $model = Setting::where( 'key', 'LogoWhite' )->first();
        return view( 'components.website.layouts.header', compact( 'pages', 'model' ) );
    }
}