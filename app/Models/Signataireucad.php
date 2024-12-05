<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Signataireucad extends Model
{
    use HasFactory;

    protected $fillable = [
        'nom',
        'prenom',
        'nom_complet',
        'email',
        'fonction',
        'tel',
    ];

    public function Accords()
    {
        return $this->belongsToMany(Accord::class, 'signataireucad_accord', 'signataireucad_id', 'accord_id');
    }

}
