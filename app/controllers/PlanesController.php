<?php

class PlanesController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		return Plane::all()->toJson();
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		$input = Input::all();
		$node = Plane::create($input);
		return Response::json($node);
	}

	/**
	 * Display the specified resource.
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$node = Plane::find($id);
		return Response::json($node);
	}
	/**
	 * Update the specified resource in storage.
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		$input = Input::all();
		$node = Plane::find($id)->update($input);
		return Response::json($node);
	}
	/**
	 * Remove the specified resource from storage.
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$node = Plane::destroy($id);
		return Response::json($node);
	}	

}