@extends('layouts.master')
@section('content') <br>


<div class="container">
    <!-- En-tête de la page -->
{{--    <div class="text-center">--}}
{{--        <h3>{{ $accord->titre }}</h3>--}}
{{--        <p class="text-muted">Date de signature : <strong> {{ \Carbon\Carbon::parse($accord->signature)->isoFormat('LL') }} </strong></p>--}}
{{--    </div>--}}

    <!-- Section principale avec deux cartes -->
    <div class="card border rounded" style="border-color: #0564A5;">
        <div class="card-header text-center">
            {{ $accord->titre }}
        </div>
        <div class="card-body">
            <p style="text-align: center" class="text-muted">Date de signature : <strong> {{ \Carbon\Carbon::parse($accord->signature)->isoFormat('LL') }} </strong></p>
            <div class="row">
                <!-- Card de gauche -->
                <div class="col-md-6">
                    <div class="card border rounded mb-3" style="border-color: #0564A5;">
                        <div style="background-color: #FFFFFF; color: #0564A5" class="card-header text-center">
                            Informations principales
                        </div>
                        <div class="card-body">
                            <p><strong>Partenaires :</strong>
                                @foreach($accord->partenaires as $partenaire)
                                    {{ $partenaire->nom }}
                                @endforeach
                            </p>

                            <p><strong>Pays :</strong>
                                @foreach($accord->partenaires as $partenaire)
                                    {{ $partenaire->ville }} - {{ $partenaire->pays }}
                                @endforeach
                            </p>
                            <p><strong>Objectifs :</strong> {{ $accord->but }}</p>
                            <p><strong>Durée :</strong> {{ $accord->duree }} ans</p>
                            <p><strong>Type d'accord :</strong> {{ $accord->type }}</p>
                        </div>
                    </div>
                </div>

                <!-- Card de droite -->
                <div class="col-md-6">
                    <div class="card border rounded mb-3" style="border-color: #0564A5;">
                        <div style="background-color: #FFFFFF; color: #0564A5" class="card-header text-center">
                            Point Focal
                        </div>
                        <div class="card-body">
                            <p><strong>Domaines :</strong>
                                @foreach($accord->domaines as $domaine)
                                    {{ $domaine->libelle }}
                                @endforeach
                            </p>
                            <p><strong>Point Focal :</strong>
                                @foreach($accord->point_focals as $point_focal)
                                    {{ $point_focal->prenom }} {{ $point_focal->nom }} {{ $point_focal->fonction }}
                                @endforeach
                            </p>
                            <p><strong>Structure :</strong>
                                @foreach($accord->structures as $structure)
                                    {{ $structure->nom }} ({{ $structure->sigle }})
                                @endforeach
                            </p>
                            <p><strong>Cible :</strong>
                                @foreach($accord->cibles as $cible)
                                    {{ $cible->libelle }}
                                @endforeach
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection
