<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Planes extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
       Schema::create('planes', function($tabla) 
        {
            $tabla->increments('id');
            $tabla->string('usuario', 50);
            $tabla->string('email', 100);
            $tabla->string('password', 200);
            $tabla->timestamps();
        });
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('planes');
	}

}
