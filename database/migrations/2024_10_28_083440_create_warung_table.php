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
        Schema::create('warung', function (Blueprint $table) {
            $table->Increments('idWarung');
            $table->unsignedInteger('idUser');
            $table->string('namaWarung');
            $table->string('gambarWarung');
            $table->string('deskripsi');
            $table->string('status');
            $table->timestamps();

            $table->foreign('idUser')->references('idUser')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('warung');
    }
};
