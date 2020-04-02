<?php

namespace App\Http\Controllers;

use App\User;
use App\Models\Perfile;
use App\Models\Chat;
use Illuminate\Http\Request;

class BuscarController extends Controller
{
    public function getUsers(){

        //return User::all();

        return User::find(3)->perfile->chat;
        
    }
}
