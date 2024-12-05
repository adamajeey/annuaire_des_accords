<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Accord extends Model
{
    use HasFactory;
    use SoftDeletes;
     protected $fillable = [
         'numero',
         'titre',
         'but',
         'initiateur',
         'signature',
         'demande_avis',
         'type',
         'etat',
         'file',
         'duree',
         'date_debut',
         'date_fin',
         'direction_id',
         'parent_id',
     ];

    public function direction()
    {
        return $this->hasMany(Direction::class);
    }

    public function cibles()
    {
        return $this->belongsToMany(Cible::class, 'accord_cible');
    }

    public function partenaires()
    {
        return $this->belongsToMany(Partenaire::class, 'accord_partenaires');
    }

    public function domaines()
    {
        return $this->belongsToMany(Domaine::class, 'accord_domaines');
    }

    public function point_focals()
    {
        return $this->belongsToMany(Point_focal::class, 'accord_point_focals');
    }

    public function signataireucads()
    {
        return $this->belongsToMany(Signataireucad::class, 'accord_signataireucads');
    }

    public function signataires()
    {
        return $this->belongsToMany(Signataire::class, 'accord_signataires');
    }

    public function structures()
    {
        return $this->belongsToMany(Structure::class, 'accord_structures');
    }


}
