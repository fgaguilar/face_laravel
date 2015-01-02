<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/', function()
{
	return View::make('hello');
});

Route::group(array('prefix' => 'api'), function()
{
    Route::resource('planillas', 'PlanillaController',
      ['only'=>['index','store','show','update','destroy']]);
});

Route::group(array('prefix' => 'api'), function()
{
    Route::resource('plans', 'planController',
      ['only'=>['index','store','show','update','destroy']]);
});

Route::get('reporte1', function()
{
    $html = '<html><body>'
            . '<p>Put your html here, or generate it with your favourite '
            . 'templating system.</p>'
            . '</body></html>';
    return PDF::load($html, 'A4', 'portrait')->show();
});