<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $table = 'users';
    protected $primaryKey = 'idUser'; // Specify the primary key

    protected $fillable = [
        'nama',
        'password',
        'noTelp',
        'email',
        'role',
    ];

    public $incrementing = false; // Set this to true if `idUser` is an auto-increment field
    protected $keyType = 'int'; // Or 'string' if your primary key is a string
}
