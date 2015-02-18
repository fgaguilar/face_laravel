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
/*Event::listen('illuminate.query', function($query)
{
    var_dump($query);
});*/

Route::get('/', function()
{
	return View::make('hello');
});

Route::group(array('prefix' => 'api'), function()
{
    Route::resource('planillas', 'PlanillaController',
      ['only'=>['index','store','show','update','destroy']]);
    Route::resource('planillasTipo', 'PlanillaTipoController',
      ['only'=>['show','index']]);
    Route::resource('codigos', 'CodigoControlController',
      ['only'=>['show','index']]);    
});

Route::group(array('prefix' => 'api'), function()
{
    Route::resource('facturas', 'FacturaController',
      ['only'=>['index','store','show','update','destroy']]);
});

Route::group(array('prefix' => 'api'), function()
{
    Route::resource('parametros', 'ParametroController',
      ['only'=>['index','store','show','update','destroy']]);
});

Route::get('reporte1', function()
{
    $html = '<html><body>'
            . '<p>Fidel Put your html here, or generate it with your favourite '
            . 'templating system.</p>'
            . '</body></html>';
    return PDF::load($html, 'A4', 'portrait')->show();
});

//Route::controller('authors', 'AuthorsController');

Route::get('pdf', function(){
    $fpdf = new Fpdf();
        $fpdf->AddPage();
        $fpdf->SetFont('Arial','B',16);
        $fpdf->Cell(40,10,'Hello World!');
        $fpdf->Output();
        exit;
});

Route::get('pdf2', function()
{
  $factura = Factura::find(4);

  return View::make('pdf.reporte01', array('factura' => $factura));
});

Route::get('pdf3/{id}', array('uses' => 'FacturaController@imprimirFactura'));

Route::get('qrcode', function()
{
  $factura = Factura::find(1);

  return View::make('pdf.reporte02', array('factura' => $factura));
});