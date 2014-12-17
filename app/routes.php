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
    Route::resource('planillas', 'PlanillaController');
});

Route::get('planillas', function ()
{
	return "Vista planillas";
    //return View::make('planillas.index');
});

Route::group(array('prefix' => 'api'), function()
{
    Route::resource('planes', 'PlanesController');
});

Route::get('planes', function ()
{
	return "Vista planes";
    //return View::make('planillas.index');
});
