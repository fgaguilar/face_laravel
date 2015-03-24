<?php
class AccountController extends BaseController {
	public function getCreate(){
		return View::make('account.create');
	}
	public function postCreate(){
		$validator=Validator::make(Input::all(),
			array(
				'email'=>'required|max:50|email|unique:users',
				'username'=>'required|min:3|max:20|unique:users',
				'password'=>'required|min:6',
				'password_again'=>'required|min:6|same:password',
			)
		);
		if($validator->fails()){
			return Redis::route('account-create')
				->withErrors($validator)
				->withInput();
		}
		else{
			die('Success');
		}
	}
}