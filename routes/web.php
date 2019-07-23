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
    Route::get('/contatos', function () {
        return view('italiano.contato');
    });
});



Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::post('/uploadPagamento','ArquivoController@uploadPagamento')->name('upPagamento');
Route::post('/uploadVinculo', 'ArquivoController@uploadVinculo')->name('upVinculo');
