<?php

class planController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		return Plan::all()->toJson();
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
	    $dosificacion["impuestoFacturaFactores"]=$dosificacion["impuestoFacturaFactores"]+1;
		$node = Dosificacione::find(1)->update($dosificacion);
		$plan = Plan::create($input);
		return Response::json($plan);		
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$node = Plan::find($id);
		return Response::json($node);
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
		$node = Plan::find($id)->update($input);
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
		$node = Plan::destroy($id);
		return Response::json($node);
	}

}
