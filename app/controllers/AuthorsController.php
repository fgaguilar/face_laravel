<?php
class AuthorsController extends BaseController {

//public $restful = true;

public function getIndex() {
    return View::make('authors.index');
}   
}