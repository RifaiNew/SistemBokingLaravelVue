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
        Schema::create('produk', function (Blueprint $table) {
            $table->bigIncrements('idProduk');
            $table->unsignedInteger('idWarung');
            $table->string('namaProduk');
            $table->string('gambarProduk');
            $table->string('deskripsi');
            $table->string('status');
            $table->integer('harga');
            $table->timestamps();

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
        Schema::dropIfExists('produk');
    }
};
