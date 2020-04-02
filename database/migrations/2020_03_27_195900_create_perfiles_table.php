<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePerfilesTable extends Migration
{
   
    public function up()
    {
        Schema::create('perfiles', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->bigInteger('user_id')->unsigned();

            $table->string('facebook');

            $table->foreign('user_id')->references('id')->on('users'); 

            $table->timestamps();
        });
    }


    public function down()
    {
        Schema::dropIfExists('perfiles');
    }
}
