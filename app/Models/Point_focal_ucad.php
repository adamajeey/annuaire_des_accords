<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Point_focal_ucad extends Model
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

}
