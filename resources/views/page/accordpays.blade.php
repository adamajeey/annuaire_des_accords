@extends('layouts.master')
@section('content') <br>

<div class="container">

    <ul class="nav nav-pills mb-3 justify-content-center" id="pills-tab" role="tablist" style="box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.2); border: 1px solid #0564A8; border-radius: 8px; padding: 10px">
        <li class="nav-item" role="presentation" style="padding-right: 90px">
            <button class="nav-link active fs-5 px-4 py-2" id="pills-all-tab" data-bs-toggle="pill" data-bs-target="#pills-all" type="button" role="tab" aria-controls="pills-all" aria-selected="true">AFRIQUE</button>
        </li>
        <li class="nav-item" role="presentation" style="padding-right: 90px">
            <button class="nav-link fs-5 px-4 py-2" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="false">AMERIQUE</button>
        </li>
        <li class="nav-item" role="presentation" style="padding-left: 90px">
            <button class="nav-link fs-5 px-4 py-2" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">ASIE</button>
        </li>
        <li class="nav-item" role="presentation" style="padding-left: 90px">
            <button class="nav-link fs-5 px-4 py-2" id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">EUROPE</button>
        </li>
        <!-- Tab pour Océanie -->
        <li class="nav-item" role="presentation" style="padding-left: 90px">
            <button class="nav-link fs-5 px-4 py-2" id="pills-oceania-tab" data-bs-toggle="pill" data-bs-target="#pills-oceania" type="button" role="tab" aria-controls="pills-oceania" aria-selected="false">OCÉANIE</button>
        </li>
    </ul>

    <div class="tab-content" id="pills-tabContent">
        <!-- Accord Afrique -->
        <div class="tab-pane fade show active" id="pills-all" role="tabpanel" aria-labelledby="pills-all-tab" tabindex="0">
            <div class="container-fluid container-service py-5">
                <div class="container py-1">
                    <div class="row g-4">
                        @foreach ($accords as $accord)
                            @foreach($accord->partenaires as $partenaire)
                                @if($partenaire->continent == 'Afrique')
                                    <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                        <div class="service-item">
                                            <h5 class="mb-3">{{ $accord->titre }}</h5>
                                            <p class="mb-4">{{ $accord->but }}</p>
                                            <a class="btn" href="{{ route('detail', $accord->id) }}"> <i class="fa fa-plus text-primary me-3"></i>Voir plus<i class="bi bi-chevron-double-right ms-1"></i></a>
                                        </div>
                                    </div>
                                @endif
                            @endforeach
                        @endforeach
                    </div>
                </div>
            </div>
        </div>

        <!-- Tab Amérique -->
        <div class="tab-pane fade" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">
            <div class="container-fluid container-service py-5">
                <div class="container py-1">
                    <div class="row g-4">
                        @foreach ($accords as $accord)
                            @foreach($accord->partenaires as $partenaire)
                                @if($partenaire->continent == 'Amérique')
                                    <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                        <div class="service-item">
                                            <h5 class="mb-3">{{ $accord->titre }}</h5>
                                            <p class="mb-4">{{ $accord->but }}</p>
                                            <a class="btn" href="{{ route('detail', $accord->id) }}"> <i class="fa fa-plus text-primary me-3"></i>Voir plus<i class="bi bi-chevron-double-right ms-1"></i></a>
                                        </div>
                                    </div>
                                @endif
                            @endforeach
                        @endforeach
                    </div>
                </div>
            </div>
        </div>

        <!-- Tab Asie -->
        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab" tabindex="0">
            <div class="container-fluid container-service py-5">
                <div class="container py-1">
                    <div class="row g-4">
                        @foreach ($accords as $accord)
                            @foreach($accord->partenaires as $partenaire)
                                @if($partenaire->continent == 'Asie')
                                    <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                        <div class="service-item">
                                            <h5 class="mb-3">{{ $accord->titre }}</h5>
                                            <p class="mb-4">{{ $accord->but }}</p>
                                            <a class="btn" href="{{ route('detail', $accord->id) }}"> <i class="fa fa-plus text-primary me-3"></i>Voir plus<i class="bi bi-chevron-double-right ms-1"></i></a>
                                        </div>
                                    </div>
                                @endif
                            @endforeach
                        @endforeach
                    </div>
                </div>
            </div>
        </div>

        <!-- Tab Europe -->
        <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab" tabindex="0">
            <div class="container-fluid container-service py-5">
                <div class="container py-1">
                    <div class="row g-4">
                        @foreach ($accords as $accord)
                            @foreach($accord->partenaires as $partenaire)
                                @if($partenaire->continent == 'Europe')
                                    <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                        <div class="service-item">
                                            <h5 class="mb-3">{{ $accord->titre }}</h5>
                                            <p class="mb-4">{{ $accord->but }}</p>
                                            <a class="btn" href="{{ route('detail', $accord->id) }}"> <i class="fa fa-plus text-primary me-3"></i>Voir plus<i class="bi bi-chevron-double-right ms-1"></i></a>
                                        </div>
                                    </div>
                                @endif
                            @endforeach
                        @endforeach
                    </div>
                </div>
            </div>
        </div>

        <!-- Tab Océanie -->
        <div class="tab-pane fade" id="pills-oceania" role="tabpanel" aria-labelledby="pills-oceania-tab" tabindex="0">
            <div class="container-fluid container-service py-5">
                <div class="container py-1">
                    <div class="row g-4">
                        @foreach ($accords as $accord)
                            @foreach($accord->partenaires as $partenaire)
                                @if($partenaire->continent == 'Océanie')
                                    <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                        <div class="service-item">
                                            <h5 class="mb-3">{{ $accord->titre }}</h5>
                                            <p class="mb-4">{{ $accord->but }}</p>
                                            <a class="btn" href="{{ route('detail', $accord->id) }}"> <i class="fa fa-plus text-primary me-3"></i>Voir plus<i class="bi bi-chevron-double-right ms-1"></i></a>
                                        </div>
                                    </div>
                                @endif
                            @endforeach
                        @endforeach
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
@endsection
