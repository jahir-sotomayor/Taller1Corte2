<?php

use App\User;
use App\Models\Perfile;
use App\Models\Chat;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserTableSeeder extends Seeder
{

    public function run()
    {
        $user = new User;

        $user->name ='Jose Restrepo';
        $user->email = 'joserestrepo@gmail.com';
        $user->password = Hash::make('secret');

        $user->save();

        $perfile = new Perfile;

        $perfile->facebook='@Tindder';

        $user->perfile()->save($perfile); 

        $chat = new Chat;

        $chat->nombre='ingeniero';

        $perfile->chat()->save($chat); 

    }
}
