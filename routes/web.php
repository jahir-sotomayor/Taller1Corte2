<?php

Route::get('/', function () {
    return view('welcome');
});


Route::get('users', 'BuscarController@getUsers');