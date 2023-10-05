<?php

use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/



Route::get('/',[HomeController::class,"index"]);

Route::get('/redirects',[HomeController::class,"redirects"]);

Route::get('/users',[AdminController::class,"user"]);

Route::get('/man',[AdminController::class,"menwear"]);

Route::post('/uploadladieswear',[AdminController::class,"uploadladieswear"]);

Route::post('/uploadkidswear',[AdminController::class,"uploadkidswear"]);

Route::post('/uploadaccessories',[AdminController::class,"uploadaccessories"]);

Route::post("/uploadmen",[AdminController::class,"uploadmen"]);

Route::post("/updateaccessories/{id}",[AdminController::class,"updateaccessories"]);

Route::post("/updatemen/{id}",[AdminController::class,"updatemen"]);

Route::post("/updatekids/{id}",[AdminController::class,"updatekids"]);

Route::post("/updatewomen/{id}",[AdminController::class,"updatewomen"]);

Route::post("/updateuser/{id}",[AdminController::class,"updateuser"]);

Route::get('/womenwear',[AdminController::class,"womenwear"]);

Route::get('/kidswear',[AdminController::class,"kidswear"]);

Route::get('/viewaccessoriespage',[AdminController::class,"accessories"]);

Route::get('/deleteuser/{id}',[AdminController::class,"deleteuser"]);

Route::get('/updateuserview/{id}',[AdminController::class,"updateuserview"]);

Route::get('/accessories/{id}',[AdminController::class,"updateaccessoriesview"]);

Route::get('/kid/{id}',[AdminController::class,"updatekidsview"]);

Route::get('/gent/{id}',[AdminController::class,"updatemenview"]);

Route::get('/lady/{id}',[AdminController::class,"updatewomenview"]);

Route::get('/deleteaccessories/{id}',[AdminController::class,"deleteaccessories"]);

Route::get('/deletekids/{id}',[AdminController::class,"deletekids"]);

Route::get('/deletemen/{id}',[AdminController::class,"deletemen"]);

Route::get('/deletewomen/{id}',[AdminController::class,"deletewomen"]);

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});
