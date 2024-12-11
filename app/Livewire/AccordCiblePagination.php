<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Accord;

class AccordCiblePagination extends Component
{
    use WithPagination;

    public $currentTab = 'all';
    public $perPage = 4; // Nombre d'éléments par page

    protected $paginationTheme = 'bootstrap';

    public function setTab($tab)
    {
        $this->currentTab = $tab;
        $this->resetPage(); // Reset pagination to page 1 when tab changes
    }

    public function render()
    {
        $query = Accord::query();

        if ($this->currentTab !== 'all') {
            $query->whereHas('cibles', function ($q) {
                $q->where('libelle', $this->currentTab);
            });
        }

        $accords = $query->paginate($this->perPage);

        return view('livewire.accord-cible-pagination', compact('accords'));
    }
}
