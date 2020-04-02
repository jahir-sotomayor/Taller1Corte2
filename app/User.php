<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    protected $fillable = [
        'name', 'email', 'password', 'nivel_id'
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function perfile(){
        return $this->hasOne('App\Models\Perfile');
    }

    public function nivele(){
        return $this->belongsTo('App\Models\Nivele');
    }

    public function publicaciones(){
        return $this->hasMany('App\Models\Publicacione');
    }

    public function clanes(){
        return $this->belongsToMany('App\Models\Clane','clan_usuario','user_id','clan_id')->withTimestamps();
    }

}
