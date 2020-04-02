<?php

use App\User;
use App\Models\Clane;
use Illuminate\Database\Seeder;

class ClanUsuarioTableSeeder extends Seeder
{

    public function run()
    {
        $user = User::find(3);

        /*EL METODO ATTACH SE USA MAS QUE TODO CUANDO SE QUIERE
        GUARDAR O AÑADIR Y SYNC ES MAS QUE TODO CUANDO SE QUIERE ACTUALIZAR QUE SI YA NO SE 
        ESTA USANDO ALGO POR FAVOR ELIMINALO Y DEJA LO QUE ESTE ACTILIZANDO.*/

        //$user->clanes()->attach([1,5]); 

        //$clan = Clane::where('nombre','Clan Tc')->first();
        //$user->clanes()->attach([$clan->id]); 

        //$user->clanes()->attach([1]); 

        //$user->clanes()->sync([1, 4, 3]); 

        $user->clanes()->sync([2]); 

    }
}
