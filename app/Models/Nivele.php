<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Nivele extends Model
{
    protected $table = 'niveles';

    protected $fillable = [
        'nombre',
    ];

    protected $hidden = [
        'create_at', 'updated_at',
    ];

    public function users(){
        return $this->hasMany('App\User','nivel_id');
    }

}
