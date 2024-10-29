<?php

namespace App\Http\Controllers;

use App\Models\Produk;
use Illuminate\Http\Request;

class ProdukController extends Controller
{
    public function index($idWarung)
    {
        // Ambil produk berdasarkan idWarung
        $produks = Produk::where('idWarung', $idWarung)->get();
        return response()->json($produks);
    }
}
