<?php

namespace App\Livewire;
use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Accord;
class AccordsPagination extends Component
{
    use WithPagination;

    protected $paginationTheme = 'bootstrap';
    public $type = null;  // Paramètre pour déterminer le type d'accord
    public function render()
    {
        $accords = Accord::when($this->type, function ($query) {
            return $query->where('type', $this->type);
        })->paginate(4);

        return view('livewire.accords-pagination', compact('accords'));
    }

    public function setType($type)
    {
        $this->type = $type;
        $this->resetPage();  // Réinitialise la pagination
    }
}
