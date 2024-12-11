@extends('layouts.master')

@section('content')
    <br>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                @livewireStyles
                 @livewire('accord-cible-pagination')
                @livewireScripts
            </div>
        </div>
    </div>
@endsection
