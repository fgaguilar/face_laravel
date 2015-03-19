<?php
require_once('codigoControl/codigo_control.class.php'); 
//require_once('codigoControl/ChromePhp.php');
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

    $dosificacion = Dosificacione::find(1);
    $fecha=str_replace("-","",$input["fecha"]);
    $trunc = (int)$input["baseDiferenciaSus"];
    $CodigoControl = new CodigoControl(
      $dosificacion->autorizacion,
      $input["factura"],
      $input["nit"],
      $fecha,
      $trunc,
      $dosificacion->clave
    );
    $codigo = $CodigoControl->generar();
    $input["control"]=$codigo;
    $input["autorizacion"]=$dosificacion->autorizacion;
    $input["vencimiento"]=$dosificacion->vencimiento;
    $input["literal1"]=$CodigoControl->numtoletras($input["baseTotalSus"],"Sus");
    $input["literal2"]=$CodigoControl->numtoletras($input["baseDiferenciaSus"],"Sus");
    $input["literal3"]=$CodigoControl->numtoletras($input["baseDiferenciaBs"],"Bs");
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
    $node = Factura::where('planilla_id', $tipo)->get();
    return Response::json($node);
    //return Response::json($node);
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

  public function imprimirFactura($id)
  {
    $node = Factura::where('planilla_id', $id)->get(array('id', 'planilla_id'));
    $factura1 = Factura::find($node[0]->id);
    $dosificacion = Dosificacione::find(1);
    $fecha=str_replace("-","",$factura1->fecha);
    $trunc = (int)$factura1->baseDiferenciaSus;
    $CodigoControl = new CodigoControl(
      $dosificacion->autorizacion,
      $factura1->factura,
      $factura1->nit,
      $fecha,
      $trunc,
      $dosificacion->clave
    );
    $factura1->codigo = $CodigoControl->generar();
    //QrCode::format('png')->generate('Make me into a QrCode!', 'qrcode2.png');
    //QrCode::format('png')->generate('Make me into a QrCode!', 'qrcode3.png');
    return View::make('pdf.reporte01', array('factura' => $factura1));
  }

  public function factura($id)
  {
    //$node = Factura::where('planilla_id', $id)->get(array('id', 'planilla_id'));
    $node = Factura::where('planilla_id', $id)->get(array('id','planilla_id'));
    /*var_dump($node);
    die;*/
    return Response::json($node);
  }

  
}
