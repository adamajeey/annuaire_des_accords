<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pays extends Model
{
    use HasFactory;

    protected $fillable = [
        'nom',
    ];

    public function continent()
    {
        return $this->belongsTo(Continent::class, 'continent_id');
    }

    public function villes()
    {
        return $this->hasMany(Ville::class, 'pays_id');
    }

}
