<?php

class PlanillaTipoController extends \BaseController {

	public function index()
	{
		return Planilla::all()->toJson();
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $tipo
	 * @return Response
	 */
	public function show($tipo)
	{
		$node = Planilla::where('planilla', $tipo)->get();
    return Response::json($node);
    /*$node = Planilla::where('pesoLoteFactores', $tipo)->get();
    return Response::json($node);*/
	}
}
