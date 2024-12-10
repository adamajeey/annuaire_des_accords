<?php

namespace App\Livewire;

use App\Models\Accord;
use Livewire\Component;
use Livewire\WithPagination;


class TousAccords extends Component
{

    protected $paginationTheme = 'bootstrap';
    use WithPagination;

    public function render()
    {

        $accords= Accord::paginate(4);

        return view('livewire.tous-accords', compact('accords'));
    }
}
