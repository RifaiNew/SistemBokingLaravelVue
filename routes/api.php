<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\WarungController;
use App\Http\Controllers\ProdukController;
use App\Http\Controllers\BokingController;
use App\Http\Controllers\ReservasiController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('/users', [UserController::class, 'store']);
Route::post('/login', [UserController::class, 'login']);


Route::middleware('auth:sanctum')->put('/produk/{idProduk}', [ProdukController::class, 'update']);
Route::middleware('auth:sanctum')->delete('/produk/{idProduk}', [ProdukController::class, 'destroy']);
Route::middleware('auth:sanctum')->post('/produk', [ProdukController::class, 'store']);
Route::get('/produk/{idProduk}', [ProdukController::class, 'show']);

Route::get('/warung/{idWarung}/produks', [ProdukController::class, 'index']);
Route::middleware('auth:sanctum')->post('/warung', [WarungController::class, 'store']);
Route::middleware('auth:sanctum')->delete('/warung/{idWarung}', [WarungController::class, 'destroy']);
Route::middleware('auth:sanctum')->put('/warung/{idWarung}', [WarungController::class, 'update']);
Route::get('/warung/{idWarung}', [WarungController::class, 'show']);
Route::get('/warung', [WarungController::class, 'index']);

Route::middleware('auth:sanctum')->get('/reservasi', [ReservasiController::class, 'index']);
Route::middleware('auth:sanctum')->get('/boking', [BokingController::class, 'index']);

Route::middleware('auth:sanctum')->get('/allPesanan', [BokingController::class, 'getAllPesanan']);
Route::put('/pesanan/{idBoking}', [BokingController::class, 'updateStatus']);
Route::delete('/pesanan/{id}', [BokingController::class, 'deletePesanan']);


Route::middleware('auth:sanctum')->group(function () {
    Route::post('/boking', [BokingController::class, 'store']); // Untuk menyimpan data boking
    Route::get('/boking', [BokingController::class, 'index']);  // Untuk menampilkan data boking user
});
