<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Reservasi;

class ReservasiController extends Controller
{
    public function index(Request $request)
    {
        $userId = $request->user()->idUser; // Mengambil ID pengguna yang sedang autentikasi
        $reservasi = Reservasi::where('idUser', $userId)->get(); // Ambil reservasi berdasarkan user
        return response()->json($reservasi);
    }
}
