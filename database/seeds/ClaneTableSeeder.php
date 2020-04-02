<?php

use App\Models\Clane;
use Illuminate\Database\Seeder;

class ClaneTableSeeder extends Seeder
{

    public function run()
    {
        Clane::create(['nombre' => 'La Farc']);
        Clane::create(['nombre' => 'Clan Tc']);
        Clane::create(['nombre' => 'Tu Padrino Tv']);
        Clane::create(['nombre' => 'La Rocka']);
        Clane::create(['nombre' => 'Hacker']);
    }
}
