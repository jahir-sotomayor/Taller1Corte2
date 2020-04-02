<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Clane extends Model
{
    protected $table = 'clanes';

    protected $fillable = [
        'nombre',
    ];

    protected $hidden = [
        'create_at', 'updated_at',
    ];

    public function users(){
        return $this->belongsToMany('App\User');
    }
}
