<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required|string|max:255',
            'password' => 'required|string|min:6',
            'noTelp' => 'required|string|max:15',
            'email' => 'required|email|unique:users,email',
            'role' => 'required|string',
        ]);

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
        $request->validate([
            'email' => 'required|email',
            'password' => 'required|string|min:6',
        ]);

        $user = User::where('email', $request->email)->first();

        if (!$user || !Hash::check($request->password, $user->password)) {
            \Log::warning('Login failed', ['email' => $request->email]);
            return response()->json(['message' => 'Login gagal'], 401);
        }

        $token = $user->createToken('auth_token')->plainTextToken;

        return response()->json([
            'message' => 'Login successful',
            'token' => $token,
            'user' => $user,
        ]);
    }
}