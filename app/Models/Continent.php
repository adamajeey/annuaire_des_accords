<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Continent extends Model
{
    use HasFactory;

    protected $fillable = [
        'nom_cont',
    ];

    public function pays()
    {
        return $this->hasMany(Pays::class, 'continent_id');
    }
}
