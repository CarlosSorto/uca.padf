<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

$router->get('/', 'SiteController@home')
       ->name('home');
$router->get('acerca-del-portal', 'SiteController@about')
       ->name('about');
$router->get('repositorio-ddhh', 'SiteController@repositories')
       ->name('repositories');
$router->get('organizaciones-afiliadas', 'SiteController@organizations')
       ->name('organizations');
$router->get('formacion', 'SiteController@formations')
       ->name('formations');
$router->get('contactenos', 'SiteController@contact')
       ->name('contact');
