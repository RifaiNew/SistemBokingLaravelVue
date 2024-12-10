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
    public function show($idProduk)
    {
        $produk = Produk::find($idProduk);
        if ($produk) {
            return response()->json($produk);
        }
        return response()->json(['message' => 'produk not found'], 404);
    }
    public function destroy($idProduk)
    {
        $product = Produk::find($idProduk);
        if ($product) {
            $product->delete();
            return response()->json(['message' => 'Produk berhasil dihapus'], 200);
        } else {
            return response()->json(['message' => 'Produk tidak ditemukan'], 404);
        }
    }
    public function update(Request $request, $idProduk)
    {
        try {
            $request->validate([
                'namaProduk' => 'required',
                'harga' => 'required',
                'status' => 'required',
                'deskripsi' => 'required',
                'gambarProduk' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            ]);

            $produk = Produk::findOrFail($idProduk);
            $imageName = time().'.'.$request->gambarProduk->extension();  
            $request->gambarProduk->move(public_path('assets'), $imageName);
            if ($request->hasFile('gambarProduk')) {
                $produk->gambarProduk = $imageName;
            }

            $produk->namaProduk = $request->namaProduk;
            $produk->harga = $request->harga;
            $produk->status = $request->status;
            $produk->deskripsi = $request->deskripsi;
            $produk->save();

            return response()->json([
                'message' => 'Produk berhasil diperbarui',
                'produk' => $produk
            ]);
        } catch (\Exception $e) {
            \Log::error('Error updating product: '.$e->getMessage());
            return response()->json(['message' => 'Server error'], 500);
        }
        
    }
    public function store(Request $request)
    {
        try {
            $request->validate([
                'namaProduk' => 'required',
                'harga' => 'required',
                'status' => 'required',
                'deskripsi' => 'required',
                'gambarProduk' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
                'idWarung' => 'required|exists:warung,idWarung',
            ]);

            $imageName = time().'.'.$request->gambarProduk->extension();  
            $request->gambarProduk->move(public_path('assets'), $imageName);

            $produk = new Produk();
            $produk->namaProduk = $request->namaProduk;
            $produk->harga = $request->harga;
            $produk->status = $request->status;
            $produk->deskripsi = $request->deskripsi;
            $produk->idWarung = $request->idWarung; 
            $produk->gambarProduk = $imageName;

            $produk->save();

            return response()->json([
                'message' => 'Produk berhasil ditambahkan',
                'produk' => $produk
            ]);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Server error: ' . $e->getMessage()], 500);
        }
    }
}
