<?php

class HomeController extends BaseController {

	public function home()
	{
		//echo $user = User::find(4)->username;
		/*Mail::send('emails.auth.test', array('name' => 'Fidel'), function($message){
			$message->to('fgaguilar@yahoo.com', 'Fidel Aguilar')->subject('Test email');
		});*/
		return View::make('home');
	}

}
