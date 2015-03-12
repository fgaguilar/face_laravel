<?php
class UserController extends BaseController {
 
public $restful = true;
 
/**
  * Display listing of the resource
  * 
  * @return Response
  */
 
public function login()
{
	// Set todays date into a variable
        $today = date("Y-m-d H:i:s");
 
        // Set the user array to gather data from the login form
	$userdata = array(
		'username' => Input::get('username'),
		'password' => Input::get('password')
		);
 /*$hashpassword = Hash::make(Input::get('password'));
 var_dump($hashpassword);
 die();*/
	// Check to see if the user is already logged in
		if(Auth::check())
		{
			return Redirect::to('/');
		} //End Auth Check
 
	if(Auth::attempt($userdata))
	{
		// Grab user record 
		$user = User::find(Auth::user()->id);
 
		// If the user account is disabled then send user back to login screen
		if($user->active=='0')
		{
			Auth::logout();
			Session::flush();
 
			return Redirect::to('login');
 
		} // End User active check
 
		Session::put('current_user', Input::get('username'));
		Session::put('user_access', $user->access);
		Session::put('user_id', $user->id);
 
                 // Set the user.last_login to todays date and save the record.
                 $user->last_login = $today;
                 $user->save();
 
		return Redirect::to('/');
 
	} // End Auth Attempt If
	else
	{
		return Redirect::to('login');
	} // End Else
 
} // End function Login
}