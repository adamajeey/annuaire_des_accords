<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        // Table pivot pour Accords et Signataireucads
        Schema::create('accord_signataireucads', function (Blueprint $table) {
            $table->id();
            $table->foreignId('accord_id')->constrained('accords')->onDelete('cascade');
            $table->foreignId('signataireucad_id')->constrained('signataireucads')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('accord_signataireucads');
    }
};
