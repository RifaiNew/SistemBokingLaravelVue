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

        // Create warung
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
        \Log::info('Incoming Request Data:', $request->all());
        // Validate the request
        $validatedData = $request->validate([
            'namaWarung' => 'required|string', // Ensure max length matches database
            'deskripsi' => 'required|string',
            'status' => 'required|string',
            'harga' => 'required|numeric',
            'gambarWarung' => 'sometimes|file|mimes:jpeg,png,jpg,gif|max:2048', // Optional file validation
        ]);
        \Log::info('Validated Warung Data:', $validatedData);

        // Find the warung by ID and update it
        $warung = Warung::findOrFail($idWarung);
        // Update warung attributes
        $warung->namaWarung = $validatedData['namaWarung'];
        $warung->harga = $validatedData['harga'];
        $warung->status = $validatedData['status'];
        $warung->deskripsi = $validatedData['deskripsi'];

        // Handle file upload if needed
        if ($request->hasFile('gambarWarung')) {
            // Store the image and update the warung's image path if applicable
            $path = $request->file('gambarWarung')->store('uploads', 'public'); // Adjust the storage path as needed
            $warung->gambarWarung = $path;
        }

        // Save the updated warung
        $warung->save();

        return response()->json(['message' => 'Warung updated successfully', 'warung' => $warung], 200);
    }





}