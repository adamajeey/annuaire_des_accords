<div>
    <div class="container-fluid">
        <div class="row">
    <div  class="col-md-3 ">
        <!-- Tabs Navigation -->
        <ul class="nav nav-pills mb-3 justify-content-between nav flex-column" role="tablist"
            style="box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.2); border: 1px solid #0564A8; border-radius: 8px; padding: 10px;">
            <li class="nav-item" role="presentation">
                <a href="#"
                   class="nav-link {{ $currentTab === 'all' ? 'active' : '' }} fs-5 px-4 py-2"
                   wire:click.prevent="setTab('all')">
                    Tous les accords
                </a>
            </li>
            <li class="nav-item" role="presentation">
                <a href="#"
                   class="nav-link {{ $currentTab === 'PER' ? 'active' : '' }} fs-5 px-4 py-2"
                   wire:click.prevent="setTab('PER')">
                    PER
                </a>
            </li>
            <li class="nav-item" role="presentation">
                <a href="#"
                   class="nav-link {{ $currentTab === 'PATS' ? 'active' : '' }} fs-5 px-4 py-2"
                   wire:click.prevent="setTab('PATS')">
                    PATS
                </a>
            </li>
            <li class="nav-item" role="presentation">
                <a href="#"
                   class="nav-link {{ $currentTab === 'Étudiant' ? 'active' : '' }} fs-5 px-4 py-2"
                   wire:click.prevent="setTab('Étudiant')">
                    ETUDIANTS
                </a>
            </li>
        </ul>

    </div>
        <!-- Tab Content -->
    <div class="col-md-9">
        <div class="tab-content">
            <div class="row g-4">
                @foreach($accords as $accord)
                    <div class="col-lg-6 col-md-6">
                        <div class="card" style="border: 1px solid #0564A8; padding: 15px;">
                            <div class="d-flex align-items-start">
                                <img src="{{ $accord->image_url ?? 'https://via.placeholder.com/100' }}" alt="Image Accord" class="rounded-circle" style="width: 100px; height: 100px;">
                                <div class="ms-3">
                                    <h5 class="mb-3">{{ $accord->titre }}</h5>
                                    <p class="mb-4">{{ $accord->but }}</p>
                                    <p class="mb-4">Publié le : {{ \Carbon\Carbon::parse($accord->date_publication)->translatedFormat('d F Y') }}</p>
                                    <a style="background-color: #0564A8; color: #ffffff;" class="btn btn" href="{{ route('detail', $accord->id) }}">
                                        <i class="fa fa-plus text-light me-2"></i>Voir plus<i class="bi bi-chevron-double-right ms-1"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
                    <div class="d-flex justify-content-center">
                        {{ $accords->links(data: ['scrollTo' => false]) }}
                    </div>
            </div>


        </div>
    </div>
</div>
</div>
</div>
</div>
