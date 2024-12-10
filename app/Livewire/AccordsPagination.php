<?php

namespace App\Livewire;
use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Accord;
class AccordsPagination extends Component
{
    use WithPagination;

    protected $paginationTheme = 'bootstrap'; // Choisissez un thème de pagination, comme 'bootstrap'

    public $type = null;  // Paramètre pour déterminer le type d'accord

    // Méthode pour récupérer les accords selon le type
    public function render()
    {
        // Si $type est null, on récupère tous les accords
        $accords = Accord::when($this->type, function ($query) {
            return $query->where('type', $this->type);
        })->paginate(4);  // Affichez 6 accords par page

        return view('livewire.accords-pagination', compact('accords'));
    }

    // Méthode pour mettre à jour le type d'accord
    public function setType($type)
    {
        $this->type = $type;
        $this->resetPage();  // Réinitialise la pagination
    }
}
