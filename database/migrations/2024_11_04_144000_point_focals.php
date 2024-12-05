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
        Schema::create('point_focals', function (Blueprint $table) {
            $table->id(); //
            $table->string('nom');
            $table->string('prenom');
            $table->string('email')->unique();
            $table->string('fonction');
            $table->string('tel');
            $table->foreignId('partenaire_id')->constrained('partenaires')->onDelete('cascade'); // Clé étrangère vers Partenaire
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('point_focals');
    }
};
