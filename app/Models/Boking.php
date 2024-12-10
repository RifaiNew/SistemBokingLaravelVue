<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Boking extends Model
{
    use HasFactory;

    protected $table = 'boking';
    protected $primaryKey = 'idBoking';

    public function warung()
    {
        return $this->belongsTo(Warung::class, 'idWarung');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'idUser');
    }

    protected $fillable = [
        'idUser',
        'idWarung',
        'jumlahOrang',
        'tanggalPemesanan',
        'waktuPemesanan',
        'harga',
        'status',
        'instruksi'
    ];
}
