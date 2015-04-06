<?php

class AuthenticationController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		//
        /*Auth::logout();

        return Response::json([
				'status' => 'success',
				'message' => 'Logout Successful.'],
            200
        );*/
        return User::all()->toJson();
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
		//
        $credentials = array(
            'email' =>  Input::get('email'),
            'password' =>  Input::get('password'));

        if ( Auth::attempt($credentials) ) {

            return Response::json([
					'status' => 'success',
                    'user' => Auth::user()->toArray()],
                202
            );

        }else{
            return Response::json([
                    'status' => 'error',
					'message' => 'Invalid Login Credentials.'],
                401
            );
        }
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
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
		//
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

}