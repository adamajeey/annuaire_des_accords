<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Signataire extends Model
{
    use HasFactory;

    protected $fillable = [
        'nom',
        'prenom',
        'email',
        'fonction',
        'telephone',
    ];

    public function Accords()
    {
        return $this->belongsToMany(Accord::class, 'signataire_accord', 'signataire_id', 'accord_id');
    }

}
