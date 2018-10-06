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


Route::get('/films', 'FilmsController@index');
Route::get('/home', 'FilmsController@index');
Route::get('/', 'FilmsController@index');

Route::get('/films/create', 'FilmsController@create')->name('films.create');
Route::get('/films/edit/{id}', 'FilmsController@edit')->name('films.edit');
Route::post('/films/store', 'FilmsController@store')->name('films.store');
Route::post('/films/update', 'FilmsController@update')->name('films.update');
Route::post('/films/delete', 'FilmsController@delete')->name('films.delete');
Route::get('/films/{slug}', 'FilmsController@show')->name('films.show');
Route::get('/films/deletephoto/{id}', 'FilmsController@deletephoto')->name('films.deletephoto');

Route::post('/comments/add', 'CommentsController@create')->name('comments.add');

Route::get('/countries/add', 'FilmsController@addcountries');
Route::get('/genres/add', 'FilmsController@addgenres');

Auth::routes();
