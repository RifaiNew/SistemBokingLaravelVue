<?php

namespace App\Http\Controllers;
use Illuminate\Validation\ValidationException;
use App\Models\Warung;
use Illuminate\Http\Request;

class WarungController extends Controller
{
    public function index()
    {
        // Ambil semua data warung
        $warungs = Warung::all();
        return response()->json($warungs);
    }
    // WarungController.php
    public function show($idWarung)
    {
        $warung = Warung::find($idWarung);
        if ($warung) {
            return response()->json($warung);
        }
        return response()->json(['message' => 'Warung not found'], 404);
    }
    public function destroy($idWarung)
    {
        $warung = Warung::find($idWarung);
        if ($warung) {
            $warung->delete();
            return response()->json(['message' => 'Warung deleted successfully']);
        }
        return response()->json(['message' => 'Warung not found'], 404);
    }
    public function store(Request $request)
    {
        $request->validate([
            'namaWarung' => 'required|string|max:255',
            'gambarWarung' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            'harga' => 'required|numeric',
            'status' => 'required|string',
            'deskripsi' => 'required|string',
            'idUser' => 'required|exists:users,idUser' 
        ]);

        // Store image
        $imageName = time().'.'.$request->gambarWarung->extension();  
        $request->gambarWarung->move(public_path('assets'), $imageName);

        $warung = Warung::create([
            'namaWarung' => $request->namaWarung,
            'gambarWarung' => $imageName,
            'harga' => $request->harga,
            'status' => $request->status,
            'deskripsi' => $request->deskripsi,
            'idUser' => $request->idUser
        ]);

        return response()->json(['message' => 'Warung berhasil ditambahkan', 'warung' => $warung], 201);
    }
    public function update(Request $request, $idWarung)
    {
        $request->validate([
            'namaWarung' => 'required|string|max:255',
            'harga' => 'required|numeric',
            'status' => 'required|string',
            'deskripsi' => 'required|string',
            'gambarWarung' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        $warung = Warung::findOrFail($idWarung);

        $warung->namaWarung = $request->namaWarung;
        $warung->harga = $request->harga;
        $warung->status = $request->status;
        $warung->deskripsi = $request->deskripsi;

        $imageName = time().'.'.$request->gambarWarung->extension();  
        $request->gambarWarung->move(public_path('assets'), $imageName);

        if ($request->hasFile('gambarWarung')) {
            $warung->gambarWarung = $imageName;
        }

        $warung->save();

        return response()->json(['message' => 'Warung updated successfully', 'warung' => $warung]);
    }







}