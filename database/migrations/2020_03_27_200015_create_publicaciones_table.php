<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePublicacionesTable extends Migration
{

    public function up()
    {
        Schema::create('publicaciones', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->bigInteger('user_id')->unsigned();

            $table->string('titulo');

            $table->foreign('user_id')->references('id')->on('users');

            $table->timestamps();
        });
    }


    public function down()
    {
        Schema::dropIfExists('publicaciones');
    }
}
