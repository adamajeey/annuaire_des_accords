<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Accord;

class Detail_accord extends Controller
{
    public function detail($id)
    {
        // Récupérer l'accord par ID
        $accord = Accord::findOrFail($id);


        // Retourner la vue avec les détails de l'accord
        return view('page/detail_accord', compact('accord'));
    }
}
