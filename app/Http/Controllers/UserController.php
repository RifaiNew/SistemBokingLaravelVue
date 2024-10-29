<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function store(Request $request)
    {
        // Validasi data yang diterima
        $request->validate([
            'nama' => 'required|string|max:255',
            'password' => 'required|string|min:6',
            'noTelp' => 'required|string|max:15',
            'email' => 'required|email|unique:users,email',
            'role' => 'required|string',
        ]);

        // Buat pengguna baru
        $user = User::create([
            'nama' => $request->nama,
            'password' => Hash::make($request->password), // Hash password
            'noTelp' => $request->noTelp,
            'email' => $request->email,
            'role' => $request->role,
        ]);

        return response()->json(['message' => 'Berhasil Daftar', 'user' => $user], 201);
    }
    public function login(Request $request)
    {
        // Validate incoming login data
        $request->validate([
            'email' => 'required|email',
            'password' => 'required|string|min:6',
        ]);

        // Retrieve user by email
        $user = User::where('email', $request->email)->first();

        // Verify password and user existence
        if (!$user || !Hash::check($request->password, $user->password)) {
            \Log::warning('Login failed', ['email' => $request->email]);
            return response()->json(['message' => 'Login gagal'], 401);
        }

        // Create a new Sanctum token
        $token = $user->createToken('auth_token')->plainTextToken;

        // Return token and user data
        return response()->json([
            'message' => 'Login successful',
            'token' => $token,
            'user' => $user,
        ]);
    }
}