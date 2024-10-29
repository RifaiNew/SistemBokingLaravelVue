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
        Schema::create('reservasi', function (Blueprint $table) {
            $table->Increments('idReservasi');
            $table->unsignedInteger('idWarung');
            $table->unsignedInteger('idBoking');
            $table->string('status');
            $table->date('tanggalPemesanan');
            $table->time('waktuPemesanan');
            $table->string('instruksi');
            $table->timestamps();

            $table->foreign('idWarung')->references('idWarung')->on('warung')->onDelete('cascade');
            $table->foreign('idBoking')->references('idBoking')->on('boking')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('reservasi');
    }
};
