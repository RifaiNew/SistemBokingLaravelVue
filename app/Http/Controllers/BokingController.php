<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Boking;
use App\Models\Reservasi; 

class BokingController extends Controller
{
    public function store(Request $request)
    {
        $validated = $request->validate([
            'idUser' => 'required|exists:users,idUser', // Pastikan ID user ada
            'idWarung' => 'required|exists:warung,idWarung', // Pastikan ID warung ada
            'jumlahOrang' => 'required|integer|min:1',
            'tanggalPemesanan' => 'required|date',
            'waktuPemesanan' => 'required|date_format:H:i',
            'harga' => 'required|numeric',
            'instruksi' => 'nullable|string',
            'status' => 'required|string'
        ]);

        $boking = Boking::create($validated);

        $reservasiData = [
            'idWarung' => $validated['idWarung'],
            'idBoking' => $boking->id, // Use the newly created booking's ID
            'status' => 'pending', // You can set a default status or use a value from the request
            'tanggalPemesanan' => $validated['tanggalPemesanan'],
            'waktuPemesanan' => $validated['waktuPemesanan'],
            'instruksi' => $validated['instruksi'],
        ];

        Reservasi::create($reservasiData); // Create the reservation entry

        return response()->json($boking, 201);
    }
    public function index(Request $request)
    {
        $userId = $request->user()->idUser; // Assuming the user is authenticated
        \Log::info('User ID: ' . $userId); // Log User ID
        try {
            $bokings = Boking::with('warung')->where('idUser', $userId)->get();
            \Log::info('Bookings:', $bokings->toArray()); // Log Bookings
            return response()->json($bokings);
        } catch (\Exception $e) {
            \Log::error('Error fetching bookings: ' . $e->getMessage());
            return response()->json(['error' => 'Internal Server Error'], 500);
        }
    }

}

