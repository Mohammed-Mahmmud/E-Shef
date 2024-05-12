<?php

namespace App\View\Components\Website\Pages;

use App\Models\Setting;
use Illuminate\View\Component;

class Contacts extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
   public $map;
   public $email;
   public $phone;
   public $street;
   public $activeFrom;
   public $activeTo;
    public function __construct()
    {
        $this->email  =Setting::where('key','Email')->value('value'); 
        $this->map=Setting::where('key','ifram_map')->value('value'); 
        $this->phone=Setting::where('key','Phone')->value('value'); 
        $this->street=Setting::where('key','Street')->value('value'); 
        $this->activeFrom=Setting::where('key','activeFrom')->value('value'); 
        $this->activeTo=Setting::where('key','activeTo')->value('value');
    }
    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.website.pages.contacts',[
            'map'=>$this->map,
            'email'=>$this->email,
            'phone'=>$this->phone,
            'street'=>$this->street,
            'activeFrom'=>$this->activeFrom,
            'activeTo'=>$this->activeTo
        ]);
    }
}
