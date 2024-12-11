<div>
    <div class="container-fluid">
        <div class="row">
        <div  class="col-md-3 ">
        <!-- Boutons pour filtrer les types d'accords -->
        <ul class="nav nav-pills flex-column mb-3 " id="pills-tab" role="tablist" style="box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.2); border: 1px solid #0564A8; border-radius: 8px; padding: 10px">
            <li class="nav-item" role="presentation">
                <a class="nav-link {{ is_null($type) ? 'active' : '' }}" id="tous-accords-tab" data-bs-toggle="tab" href="#tous-accords" wire:click="setType(null)" role="tab" aria-controls="tous-accords" aria-selected="{{ is_null($type) ? 'true' : 'false' }}">Tous les accords</a>
            </li>
            <li class="nav-item" role="presentation">
                <a class="nav-link {{ $type == 'Cadre' ? 'active' : '' }}" id="cadre-tab" data-bs-toggle="tab" href="#cadre" wire:click="setType('Cadre')" role="tab" aria-controls="cadre" aria-selected="{{ $type == 'Cadre' ? 'true' : 'false' }}">Accords Cadres</a>
            </li>
            <li class="nav-item" role="presentation">
                <a class="nav-link {{ $type == 'Convention' ? 'active' : '' }}" id="convention-tab" data-bs-toggle="tab" href="#convention" wire:click="setType('Convention')" role="tab" aria-controls="convention" aria-selected="{{ $type == 'Convention' ? 'true' : 'false' }}">Accords Conventions</a>
            </li>
            <li class="nav-item" role="presentation">
                <a class="nav-link {{ $type == 'Subvention' ? 'active' : '' }}" id="subvention-tab" data-bs-toggle="tab" href="#subvention" wire:click="setType('Subvention')" role="tab" aria-controls="subvention" aria-selected="{{ $type == 'Subvention' ? 'true' : 'false' }}">Accords Subventions</a>
            </li>
        </ul>
        </div>
        <!-- Liste des accords -->
        <div class="col-md-9">
            <div class="card" style="border: 1px solid #0564A8; border-radius: 8px; padding: 15px;">
        <div class="row g-4">
            @foreach ($accords as $accord)
                <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
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
        </div>
                <div class="d-flex justify-content-center">
                    {{ $accords->links(data: ['scrollTo' => false]) }}
                </div>
            </div>
        </div>
    </div>
</div>
</div>
