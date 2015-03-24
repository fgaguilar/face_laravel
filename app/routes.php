<?php

Route::group(array('prefix' => 'api'), function()
{
    Route::resource('planillas', 'PlanillaController',
      ['only'=>['index','store','show','update','destroy']]);
    Route::resource('planillasTipo', 'PlanillaTipoController',
      ['only'=>['show','index']]);
    Route::resource('codigos', 'CodigoControlController',
      ['only'=>['show','index']]);    
    Route::resource('facturas', 'FacturaController',
      ['only'=>['index','store','show','update','destroy']]);
    Route::resource('parametros', 'parametroController',
      ['only'=>['index','store','show','update','destroy']]);
    Route::resource('dosificaciones', 'dosificacioneController',
      ['only'=>['index','store','show','update','destroy']]);          
    Route::get('factura/{id}','FacturaController@factura');
});

Route::get('reporte1', function()
{
    $html = '<html><body>'
            . '<p>Fidel Reporte '
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
  $factura = Factura::find(1);

  return View::make('pdf.reporte01', array('factura' => $factura));
});

Route::get('pdf3/{id}', array('uses' => 'FacturaController@imprimirFactura'));

Route::get('qrcode', function()
{
  $factura = Factura::find(1);

  return View::make('pdf.reporte02', array('factura' => $factura));
});

Route::get('qrcode2', function()
{
  QrCode::format('png')->generate('Make1 me into a QrCode!');
  return View::make('pdf.footer');
});

// Route to the login page
Route::get('login', function()
{
  return View::make('login.loginform')->with('title', 'Login Auth');
});
 
// Route to the login page for post
Route::post('login', 'UserController@login');
 
// Route to logout
Route::get('logout', function() 
{
  Auth::logout();
  Session::flush();
  return Redirect::to('login');
});

Route::get('/', array(
    'as' => 'home',
    'uses' => 'HomeController@home'
));