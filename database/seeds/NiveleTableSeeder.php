<?php

use App\User;
use App\Models\Nivele; 
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class NiveleTableSeeder extends Seeder
{

    public function run()
    {
        $nivele = new Nivele; 
        $nivele->nombre = 'Diamante';

        $nivele->save();

        $user = new User;

        $user->name ='Jahir Restrepo';
        $user->email = 'jahirrestrepo@gmail.com';
        $user->password = Hash::make('secret');

        $user2 = new User;

        $user2->name ='Jose Sotomayor';
        $user2->email = 'josesotomayor@hotmail.com';
        $user2->password = Hash::make('secret');

        $nivele->users()->saveMany([$user, $user2]);

        /*
        ESTOS DOS METODOS LO QUE HACE ES GUARDAS COSAS AL MISMO TIEMPO, SIRVEN PARA GUARDAR 
        DATOS MASIVOS HABLAMOS DE MILES, COMO POR EJEMPLO: EN UN NIVEL VARIOS USUARIOS.
        LA DIFERENCIA ENTRE ELLOS SON LOS PARAMETROS QUE RESIVEN EL SAVEMANY: RESIVE INSTANCIAS
        DEL MODELO.
        EL CREATEMANY: RESIVE ES UN VECTOR ASI QUE SE LE TIENEN QUE ASIGNAR LOS DATOS EN FORMA 
        DE VECTOR.
        */

    }
}
