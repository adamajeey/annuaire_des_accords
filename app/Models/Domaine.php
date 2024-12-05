<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Domaine extends Model
{
    use HasFactory;

    protected $fillable = [
        'libelle',
    ];

    public function Accords()
    {
        return $this->belongsToMany(Accord::class, 'domaines_accords', 'domaine_id', 'accord_id');
    }
}
