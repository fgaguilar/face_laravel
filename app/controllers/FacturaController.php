<?php
require_once('codigoControl/codigo_control.class.php');
class FacturaController extends \BaseController {

  /**
   * Display a listing of the resource.
   *
   * @return Response
   */
  public function index()
  {
    return Factura::all()->toJson();
  }


  /**
   * Show the form for creating a new resource.
   *
   * @return Response
   */
  public function create()
  {
    //
  }


  /**
   * Store a newly created resource in storage.
   *
   * @return Response
   */
  public function store()
  {
    $input = Input::all();
    $Factura = Factura::create($input);
    return Response::json($Factura);
  }


  /**
   * Display the specified resource.
   *
   * @param  int  $id
   * @return Response
   */
  public function show($tipo)
  {
    $node = Factura::where('factura', $tipo)->get();
    return Response::json($node);
  }

  /**
   * Show the form for editing the specified resource.
   *
   * @param  int  $id
   * @return Response
   */
  public function edit($id)
  {
    //
  }


  /**
   * Update the specified resource in storage.
   *
   * @param  int  $id
   * @return Response
   */
  public function update($id)
  {
    $input = Input::all();
    $node = Factura::find($id)->update($input);
    return Response::json($node);
  }


  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   * @return Response
   */
  public function destroy($id)
  {
    $node = Factura::destroy($id);
    return Response::json($node);
  }

  public function imprimirFactura()
  {
    $factura = Factura::find(4);
    $dosificacion = Dosificacione::find(1);
    $fecha=str_replace("-","",$factura->fecha);
    $trunc = (int)$factura->baseDiferenciaSus;
    echo "FACTURA ". $trunc;
    $CodigoControl = new CodigoControl(
      $dosificacion->autorizacion,
      $factura->factura,
      $factura->nit,
      $fecha,
      $trunc,
      $dosificacion->clave
    );
    $factura->codigo = $CodigoControl->generar();
    $factura->trunc = $trunc;
    return View::make('pdf.reporte01', array('factura' => $factura));
  }
}
