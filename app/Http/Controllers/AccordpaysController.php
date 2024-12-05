<?php

namespace App\Http\Controllers;

use App\Models\Accord;
use App\Models\Continent;
use Illuminate\Http\Request;

class AccordpaysController extends Controller
{
    public function accordpays () {

        $accords = Accord::all();

        return view ('page/accordpays', compact('accords'));
    }
}
