<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Publicacione extends Model
{
    protected $table = 'Publicaciones';

    protected $fillable = [
        'titulo', 'user_id'
    ];

    protected $hidden = [
        'create_at', 'updated_at',
    ];

    public function user(){
        return $this->belongsTo('App\User');
    }

}
