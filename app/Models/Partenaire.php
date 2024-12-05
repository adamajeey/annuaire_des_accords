<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Partenaire extends Model
{
    use HasFactory;

    protected $fillable = [
        'adresse',
        'continent',
        'nom',
        'pays',
        'url_site',
        'ville',

    ];

    public function Accords()
    {
        return $this->belongsToMany(Accord::class, 'partenaire_accord', 'partenaire_id', 'accord_id');
    }

    public function Points_focals()
    {
        return $this->hasMany(Point_focal::class, 'partenaire_id');
    }
}
