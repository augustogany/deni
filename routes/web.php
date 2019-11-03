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

Route::get('/clear-cache', function() {
    Artisan::call('cache:clear');
    return "Cache is cleared";
});
Route::get('/', 'FrontendController@index');
Route::get('/empresa/{slug?}', 'FrontendController@show')->name('company');
Route::get('/empresa/like/{slug}','FrontendController@like')->middleware('auth')->name('like');
Route::get('/search', 'FrontendController@search')->name('buscar');
Route::get('login/{social}', 'SocialController@redirectToProvider')->name('loginFacebook');
Route::get('login/{social}/callback', 'SocialController@handleProviderCallback');
/*
*Rutas para el chat
*/
//chat publico
Route::get('/chats','ChatsController@index')->name('chat');
//chat privado
Route::get('/private', 'ChatsController@private')->name('private');
Route::get('/users', 'HomeController@users')->name('users');
Route::get('/private-messages/{user}', 'ChatsController@privateMessages')->name('privateMessages');
Route::post('/private-messages/{user}', 'ChatsController@sendPrivateMessage')->name('privateMessages.store');

Route::get('/messages', 'ChatsController@fetchMessages');
Route::post('/messages', 'ChatsController@sendMessage');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
