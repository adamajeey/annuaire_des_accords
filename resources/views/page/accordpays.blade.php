@extends('layouts.master')

@section('content') <br>
    <br>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                @livewireStyles
                @livewire('accord-pays-pagination')
                @livewireScripts
            </div>
        </div>
    </div>
@endsection
