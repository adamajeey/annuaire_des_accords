<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Structure extends Model
{
    use HasFactory;

    protected $fillable = [
        'nom',
        'sigle',
    ];

    public function Accords()
    {
        return $this->belongsToMany(Accord::class, 'structure_accord', 'structure_id', 'accord_id');
    }

}
