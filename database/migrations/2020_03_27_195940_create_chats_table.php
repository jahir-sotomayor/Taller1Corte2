<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateChatsTable extends Migration
{

    public function up()
    {
        Schema::create('chats', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->bigInteger('perfile_id')->unsigned();

            $table->string('nombre');

            $table->foreign('perfile_id')->references('id')->on('perfiles');

            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('chats');
    }
}
