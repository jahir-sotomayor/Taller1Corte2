<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Chat extends Model
{
    protected $table = 'chats';

    protected $fillable = [
        'nombre', 'perfile_id'
    ];

    protected $hidden = [
        'create_at', 'updated_at',
    ];

    public function user(){
        return $this->belongsTo('App\Models\Perfile');
    }

}
