<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{

    public function run()
    {
        //$this->call(UserTableSeeder::class);
        //$this->call(NiveleTableSeeder::class);
        //$this->call(PublicacioneTableSeeder::class);
        //$this->call(ClaneTableSeeder::class);
        $this->call(ClanUsuarioTableSeeder::class);
    }
}
