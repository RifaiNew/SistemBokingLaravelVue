<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reservasi extends Model
{
    use HasFactory;

    protected $table = 'reservasi';

    public function warung()
    {
        return $this->belongsTo(Warung::class, 'idWarung');
    }

    public function booking()
    {
        return $this->belongsTo(Boking::class, 'idBoking');
    }

    protected $fillable = [
        'idWarung',
        'idBoking',
        'status',
        'tanggalPemesanan',
        'waktuPemesanan',
        'instruksi'
    ];
}
