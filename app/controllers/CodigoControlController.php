<?php
require_once('codigoControl/codigo_control.class.php');

class CodigoControlController extends \BaseController {

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$node = Planilla::find($id);
		/*Buscar la informacion para la factura
		NumeroAutorizacion='29040011007' constante
	    NumeroFactura='1503' variable $node->impuestoFacturaFactores
	    NIT/CI:'4189179011' constante 3363812015
	    FechaFactura='20070702' variable $node->pesoKilosNetosSecosFactores
	    MontoFactura='2500' variable $node->impuestoTotalBsSus
	    Clave='9rCB7Sv4X29d)5k7N%3ab89p-3(5[A' constante
		*/
		// Ejemplo de generacion
		$autorizacion='29040011007';
		$factura=$node->impuestoFacturaFactores;
        $nit='3363812015';
        $fecha=str_replace("-","",$node->pesoKilosNetosSecosFactores);
        $monto=(integer)$node->impuestoTotalBsSus;
        $CodigoControl = new CodigoControl(
		    $autorizacion,
		    $factura,
		    $nit,
		    $fecha,
		    $monto,
		    '9rCB7Sv4X29d)5k7N%3ab89p-3(5[A'
		    );
        $control=$CodigoControl->generar();
        $controljson=
        return Response::json($control);
	}
}
