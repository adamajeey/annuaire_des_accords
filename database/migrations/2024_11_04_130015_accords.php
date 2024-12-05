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
        Schema::create('accords', function (Blueprint $table) {
            $table->id();
            $table->string('numero');
            $table->string('titre');
            $table->text('but');
            $table->string('initiateur');
            $table->date('signature');
            $table->string('demande_avis');
            $table->string('type');
            $table->string('etat');
            $table->string('file')->nullable();
            $table->integer('duree')->nullable();
            $table->date('date_debut')->nullable();
            $table->date('date_fin')->nullable();
            $table->foreignId('direction_id')->constrained()->onDelete('cascade');
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('accords');
    }
};
