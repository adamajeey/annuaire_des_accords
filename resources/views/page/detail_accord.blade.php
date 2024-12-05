@extends('layouts.master')
@section('content') <br>


<div class="container">
    <!-- En-tête de la page -->
    <div class="text-center">
        <h3>{{ $accord->titre }}</h3>
        <p class="text-muted">Date de signature : <strong> {{ \Carbon\Carbon::parse($accord->signature)->isoFormat('LL') }} </strong></p>
    </div>

    <!-- Section Informations principales -->
    <div class="card col">
        <div class="card-header text-center">
            Informations principales
        </div>
        <div class="card-body">
            <p><strong>Partenaires :</strong>

                @foreach($accord->partenaires as $partenaire)
                    {{ $partenaire->nom }}
                @endforeach

            </p>

            <p><strong> Pays :</strong>
                @foreach($accord->partenaires as $partenaire)
                    {{ $partenaire->ville }} - {{ $partenaire->pays }}
                @endforeach
            </p>
            <p><strong>Objectifs :</strong> {{ $accord->but }} </p>
            <p><strong>Durée :</strong> {{ $accord->duree }} ans</p>
            <p><strong>Type d'accord :</strong> {{ $accord->type }}</p>
        </div>


    </div>

    <!-- Section Détails supplémentaires -->
    <div class="card">
        <div class="card-header text-center">
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

    <!-- Section Documents et liens -->
{{--    <div class="card ">--}}
{{--        <div class="card-header text-center">--}}
{{--            Documents et Liens--}}
{{--        </div>--}}
{{--        <div class="card-body">--}}
{{--            <ul>--}}
{{--                <li><a href="#">Accord de Coopération (PDF)</a></li>--}}
{{--                <li><a href="#">Rapport Annuel 2023 (PDF)</a></li>--}}
{{--                <li><a href="#">Site officiel</a></li>--}}
{{--            </ul>--}}
{{--        </div>--}}
{{--    </div>--}}

    <!-- Boutons d'action -->
    <!-- <div class="d-flex justify-content-center mt-4">
        <a href="#" class="btn btn-custom mx-2">Télécharger</a>
        <a href="#" class="btn btn-custom mx-2">Partager</a>
    </div> -->
</div>

@endsection
