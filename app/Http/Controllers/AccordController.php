<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AccordController extends Controller
{
    public function detail () {
        return view ('page/detail_accord');
    }
}
