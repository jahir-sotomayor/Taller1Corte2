<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateClanUsuarioTable extends Migration
{
  
    public function up()
    {
        Schema::create('clan_usuario', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->bigInteger('user_id')->unsigned();
            $table->bigInteger('clan_id')->unsigned();

            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('clan_id')->references('id')->on('clanes');

            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('clan_usuario');
    }
}
