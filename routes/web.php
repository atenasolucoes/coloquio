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
    return view('index');

});
Route::get('/comite', function () {
    return view('comite');
});
Route::get('/contatos', function () {
    return view('contato');
});
Route::get('/programacao', function () {
    return view('programacao');
});
Route::get('/cobertura', function () {
    return view('cobertura');
});
Route::get('/inscricao', function () {
    return view('inscricao');
});



Route::prefix('it')->group(function () {
    Route::get('/', function () {
        return view('italiano.index');
    });
    Route::get('/comite', function () {
        return view('comite');
    });
    Route::get('/programacao', function () {
        return view('italiano.programacao');
    });
    Route::get('/inscricao', function () {
        return view('italiano.inscricao');
    });
    Route::get('/cobertura', function () {
        return view('cobertura');
    });
    Route::get('/contatos', function () {
        return view('italiano.contato');
    });
});



Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/lista', 'HomeController@lista')->name('lista');
Route::get('/teste', 'HomeController@teste');
Route::any('/insc-p', 'HomeController@inscricao_participante')->name('insc-p');
Route::get('/confirmacao', 'ArquivoController@confirmacao')->name('confirmacao');
Route::post('/uploadPagamento','ArquivoController@uploadPagamento')->name('upPagamento');
Route::post('/uploadVinculo', 'ArquivoController@uploadVinculo')->name('upVinculo');
