<?php

use App\Http\Controllers\frontend\BlogController;
use App\Http\Controllers\frontend\ContactsController;
use App\Http\Controllers\frontend\HomePageController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the 'web' middleware group. Make something great!
|
*/

Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
        'middleware' => [ 'localeSessionRedirect', 'localizationRedirect', 'localeViewPath' ]
    ], function() {

        require __DIR__.'/auth.php';
    }
);


Route::redirect( '/home', '/' );

Route::post( '/contact-us/store', [ ContactsController::class, 'contactsStore' ] )->name( 'websiteContacts' );

Route::post('products/search',[HomePageController::class,'search'])->name('search');

Route::get( 'blog/{slug?}', [ BlogController::class, 'blog' ] )->name( 'blog.front' );

Route::get( '{slug?}/{subSlug?}/{subSlug2?}', [ HomePageController::class, 'index' ] )->name( 'home' );





