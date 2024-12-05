@extends('layouts.master')
@section('content') <br>

<div class="container">

    <ul class="nav nav-pills mb-3 justify-content-center" id="pills-tab" role="tablist" style="box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.2); border: 1px solid #0564A8; border-radius: 8px; padding: 10px">
        <li class="nav-item" role="presentation" style="padding-right: 90px">
            <button class="nav-link active fs-5 px-4 py-2" id="pills-all-tab" data-bs-toggle="pill" data-bs-target="#pills-all" type="button" role="tab" aria-controls="pills-all" aria-selected="true">Tous les accords</button>
        </li>
        <li class="nav-item" role="presentation" style="padding-right: 90px">
            <button class="nav-link fs-5 px-4 py-2" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="false">PER</button>
        </li>
        <li class="nav-item" role="presentation" style="padding-left: 90px">
            <button class="nav-link fs-5 px-4 py-2" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">PATS</button>
        </li>
        <li class="nav-item" role="presentation" style="padding-left: 90px">
            <button class="nav-link fs-5 px-4 py-2" id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">ETUDIANTS</button>
        </li>
    </ul>

    <div class="tab-content" id="pills-tabContent">
        <!-- Tous les accords -->
        <div class="tab-pane fade show active" id="pills-all" role="tabpanel" aria-labelledby="pills-all-tab" tabindex="0">
            <div class="container-fluid container-service py-5">
                <div class="container py-1">
                    <div class="row g-4">
                        @foreach ($accords as $accord)
                            <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                <div class="service-item">
                                    <h5 class="mb-3">{{ $accord->titre }}</h5>
                                    <p class="mb-4">{{ $accord->but }}</p>
                                    <a class="btn" href="{{ route('detail', $accord->id) }}"> <i class="fa fa-plus text-primary me-3"></i>Voir plus<i class="bi bi-chevron-double-right ms-1"></i></a>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>

        <!-- PER -->
        <div class="tab-pane fade" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">

            <div class="tab-pane fade show active" id="pills-all" role="tabpanel" aria-labelledby="pills-all-tab" tabindex="0">
                <div class="container-fluid container-service py-5">
                    <div class="container py-1">
                        <div class="row g-4">
                            @foreach ($accords as $accord)
                                @foreach($accord->cibles as $cible)
                                    @if($cible->id == 2)
                                        <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                            <div class="service-item">
                                                <h5 class="mb-3">{{$accord->titre}}</h5>
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

        <!-- PATS -->
        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab" tabindex="0">


            <div class="tab-pane fade show active" id="pills-all" role="tabpanel" aria-labelledby="pills-all-tab" tabindex="0">
                <div class="container-fluid container-service py-5">
                    <div class="container py-1">
                        <div class="row g-4">
                            @foreach ($accords as $accord)
                                @foreach($accord->cibles as $cible)
                                    @if($cible->id == 3)
                                        <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                            <div class="service-item">
                                                <h5 class="mb-3">{{$accord->titre}}</h5>
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

        <!-- ETUDIANTS -->
        <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab" tabindex="0">

            <div class="tab-pane fade show active" id="pills-all" role="tabpanel" aria-labelledby="pills-all-tab" tabindex="0">
                <div class="container-fluid container-service py-5">
                    <div class="container py-1">
                        <div class="row g-4">
                            @foreach ($accords as $accord)
                                @foreach($accord->cibles as $cible)
                                    @if($cible->id == 1)
                                        <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                            <div class="service-item">
                                                <h5 class="mb-3">{{$accord->titre}}</h5>
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
</div>
@endsection
