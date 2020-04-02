<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNivelesTable extends Migration
{

    public function up()
    {
        Schema::create('niveles', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->string('nombre');
                   
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('niveles');
    }
}
