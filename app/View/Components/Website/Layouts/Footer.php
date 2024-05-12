<?php

namespace App\View\Components\Website\Layouts;
use App\Models\Page;
use App\Models\Setting;
use Illuminate\View\Component;

class Footer extends Component {
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
        $pagesFooter = Page::whereNull( 'parent_id' )->where( [
            [ 'status', 'Active' ],
            [ 'footer', 'Active' ],
        ] )->with( 'childes' )->get();
        $logoBlack = Setting::where( 'id', 14 )->first();

        return view( 'components.website.layouts.footer', compact( 'pagesFooter', 'logoBlack' ) );
    }
}
