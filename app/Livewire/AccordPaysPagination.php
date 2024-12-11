<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Accord;

class AccordPaysPagination extends Component
{
    use WithPagination;

    public $selectedContinent = 'Afrique';

    protected $paginationTheme = 'bootstrap';

    public function selectContinent($continent)
    {
        $this->selectedContinent = $continent;
        $this->resetPage(); // Réinitialiser la pagination à la première page
    }

    public function render()
    {
        $accords = Accord::whereHas('partenaires', function ($query) {
            $query->where('continent', $this->selectedContinent);
        })->paginate(4);

        return view('livewire.accord-pays-pagination', ['accords' => $accords]);
    }
}
