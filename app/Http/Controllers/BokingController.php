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
            'idUser' => 'required|exists:users,idUser',
            'idWarung' => 'required|exists:warung,idWarung',
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
            'idBoking' => $boking->idBoking,
            'status' => 'pending',
            'tanggalPemesanan' => $validated['tanggalPemesanan'],
            'waktuPemesanan' => $validated['waktuPemesanan'],
            'instruksi' => $validated['instruksi'],
        ];

        Reservasi::create($reservasiData);

        return response()->json($boking, 201);
    }
    public function index(Request $request)
    {
        $userId = $request->user()->idUser;
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

    public function getAllPesanan(Request $request)
    {
        $user = $request->user();
        if ($user->role !== 'admin') {
            return response()->json(['message' => 'Unauthorized'], 403);
        }

        try {
            $bokings = Boking::with('warung', 'user')->get();
            return response()->json($bokings);
        } catch (\Exception $e) {
            \Log::error('Error fetching all pesanan: ' . $e->getMessage());
            return response()->json(['error' => 'Internal Server Error'], 500);
        }
    }
    public function updateStatus(Request $request, $id)
    {
        \Log::info('Request Data:', $request->all());
        \Log::info('Pesanan ID:', ['id' => $id]);
        $request->validate([
            'status' => 'required|string'
        ]);

        try {
            $pesanan = Boking::where('idBoking', $id)->firstOrFail();
            $pesanan->status = $request->status;
            $pesanan->save();
            \Log::info('Pesanan Updated:', ['id' => $pesanan->id, 'status' => $pesanan->status]);

            return response()->json(['message' => 'Status updated successfully', 'status' => $pesanan->status]);
        } catch (\Exception $e) {
            \Log::error('Error updating status:', ['error' => $e->getMessage(), 'trace' => $e->getTraceAsString()]);
            return response()->json(['error' => 'Failed to update status', 'message' => $e->getMessage()], 500);
        }
        
    }

    public function deletePesanan($id)
    {
        try {
            $pesanan = Boking::findOrFail($id);
            $pesanan->delete();
            return response()->json(['message' => 'Pesanan deleted successfully']);
        } catch (\Exception $e) {
            \Log::error('Error deleting pesanan: ' . $e->getMessage());
            return response()->json(['error' => 'Internal Server Error'], 500);
        }
    }



}

