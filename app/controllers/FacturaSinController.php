<?php

class FacturaSinController extends \BaseController {

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
	    $fecha = str_replace("-","",$input["fecha"]);
	    $fecha = substr($fecha,0,8);
	    $trunc = str_replace(',', '.', $input["baseDiferenciaBs"]);
	    $trunc = round($trunc, 0);
	    $CodigoControl = new CodigoControl(
	      $dosificacion->autorizacion,
	      $input["factura"],
	      $input["nit"],
	      $fecha,
	      $trunc,
	      $dosificacion->clave
	    );

	    $input["literal1"]=$CodigoControl->numaletras(round($input["baseTotalSus"],2));
	    $input["literal2"]=$CodigoControl->numaletras(round($input["baseDiferenciaSus"],2));
	    $input["literal3"]=$CodigoControl->numaletras(round($input["baseDiferenciaBs"],2));
		$FacturaSin = Factura::create($input);
		return Response::json($FacturaSin);		
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$node = Factura::find($id);
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


}
