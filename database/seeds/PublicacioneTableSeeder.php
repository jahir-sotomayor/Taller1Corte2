<?php

use App\User;
use Illuminate\Database\Seeder;

class PublicacioneTableSeeder extends Seeder
{

    public function run()
    {
        $user = User::find(3);

        $user->publicaciones()->createMany(
            [
            ['titulo' => 'Publicacion 1: El Titani'],
            ['titulo' => 'Publicacion 2: El Rock'],
            ['titulo' => 'Publicacion 3: El Ram'],
            ['titulo' => 'Publicacion 4: El Popeye'],
            ['titulo' => 'Publicacion 5: El Motor'],
            ]
        );


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
