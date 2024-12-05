<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('catalogue', [App\http\Controllers\CatalogueController::Class, 'catalogue'])->name('catalogue');
Route::get('accordcible', [App\http\Controllers\AccordcibleController::Class, 'accordcibles'])->name('accordcible');
Route::get('detail/{id}', [App\Http\Controllers\Detail_accord::class, 'detail'])->name('detail');
Route::get('accordpays', [App\Http\Controllers\AccordpaysController::class, 'accordpays'])->name('accordpays');


