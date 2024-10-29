<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Warung extends Model
{
    use HasFactory;
    protected $table = 'warung';
    protected $primaryKey = 'idWarung'; 

    public function produk()
    {
        return $this->hasMany(Produk::class, 'idWarung');
    }

    public function bookings()
    {
        return $this->hasMany(Boking::class, 'idWarung');
    }

    public function reservasi()
    {
        return $this->hasMany(Reservasi::class, 'idWarung');
    }

    protected $fillable = [
        'idUser',
        'namaWarung',
        'gambarWarung',
        'deskripsi',
        'harga',
        'status',
    ];
}