<?php

class PlanillaTipoController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
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
	}
}
