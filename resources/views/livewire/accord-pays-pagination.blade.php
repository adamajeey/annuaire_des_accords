<div>
    <div class="container-fluid">
        <div class="row">
            <!-- Navigation des continents -->
            <div class="col-md-3">
                <ul class="nav nav-pills flex-column" id="myTab" role="tablist" style="box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.2); border: 1px solid #0564A8; border-radius: 8px; padding: 10px">
                    @foreach(['Afrique', 'AMERIQUE', 'ASIE', 'EUROPE', 'OCEANIE'] as $continent)
                        <li class="nav-item" role="presentation">
                            <a
                                wire:click="selectContinent('{{ $continent }}')"
                                class="nav-link fs-5 px-4 py-2 {{ $selectedContinent == $continent ? 'active' : '' }}"
                                id="continent-{{ $continent }}-tab"
                                data-bs-toggle="pill"
                                data-bs-target="#continent-{{ $continent }}"
                                type="button"
                                role="tab"
                                aria-controls="continent-{{ $continent }}"
                                aria-selected="{{ $selectedContinent == $continent ? 'true' : 'false' }}"
                                style="border-radius: 8px;">
                                {{ strtoupper($continent) }}
                            </a>
                        </li>
                    @endforeach
                </ul>

            </div>

            <!-- Liste des accords -->
            <div class="col-md-9">
                <div class="row g-4">
                    @foreach ($accords as $accord)
                        <div class="col-lg-6 col-md-6">
                            <div class="card" style="border: 1px solid #0564A8; padding: 15px;">
                                <div class="d-flex align-items-start">
                                    <img src="{{ $accord->image_url ?? 'https://via.placeholder.com/100' }}" alt="Image Accord" class="rounded-circle" style="width: 100px; height: 100px;">
                                    <div class="ms-3">
                                        <h5 class="mb-3">{{ $accord->titre }}</h5>
                                        <p class="mb-4">{{ $accord->but }}</p>
                                        <p class="mb-4">Publié le : {{ \Carbon\Carbon::parse($accord->date_publication)->translatedFormat('d F Y') }}</p>
                                        <a class="btn btn" style="background-color: #0564A8; color: #ffffff;" href="{{ route('detail', $accord->id) }}">
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
