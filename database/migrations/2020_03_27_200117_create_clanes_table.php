<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateClanesTable extends Migration
{

    public function up()
    {
        Schema::create('clanes', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->string('nombre');

            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('clanes');
    }
}
