<?php

class PaisPuertoController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		return puerto::all()->toJson();
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $tipo
	 * @return Response
	 */
	public function show($tipo)
	{
		$node = puerto::where('pais', $tipo)->get();
    	return Response::json($node);
	}
}
