<?php

namespace App\Http\Controllers;

use App\Models\Accord;
use App\Models\Cible;
use Illuminate\Http\Request;

class AccordcibleController extends Controller
{
    public function accordcibles () {

        $accords = Accord::all();

        return view ('page/accordcible', compact('accords'));
    }
}
