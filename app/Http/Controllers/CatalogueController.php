<?php

namespace App\Http\Controllers;
use App\Models\Accord;
use Illuminate\Http\Request;

class CatalogueController extends Controller
{
    public function catalogue () {

        $accords = Accord::paginate(6);

        return view ('page/catalogue', compact('accords'));
    }
}
