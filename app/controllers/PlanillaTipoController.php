<?php

class PlanillaTipoController extends \BaseController {

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
