<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Perfile extends Model
{

    protected $table = 'perfiles';

    protected $fillable = [
        'facebook', 'user_id'
    ];

    protected $hidden = [
        'create_at', 'updated_at',
    ];

    public function user(){
        return $this->belongsTo('App\User');
    }

    public function chat(){
        return $this->hasOne('App\Models\Chat');
    }

}
