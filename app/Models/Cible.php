<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cible extends Model
{
    use HasFactory;
    protected $table = 'cible';
    protected $fillable = [
        'cible',
    ];

    public function Accords()
    {
        return $this->belongsToMany(Accord::class, 'accords_cible');
    }

}
