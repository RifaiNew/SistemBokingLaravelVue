<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('boking', function (Blueprint $table) {
            $table->Increments('idBoking');
            $table->unsignedInteger('idUser');
            $table->unsignedInteger('idWarung');
            $table->string('jumlahOrang');
            $table->date('tanggalPemesanan');
            $table->time('waktuPemesanan');
            $table->integer('harga');
            $table->string('status');
            $table->string('instruksi');
            $table->timestamps();

            $table->foreign('idUser')->references('idUser')->on('users')->onDelete('cascade');
            $table->foreign('idWarung')->references('idWarung')->on('warung')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('boking');
    }
};
