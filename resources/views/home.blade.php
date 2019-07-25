@extends('layouts.app')

@section('content')
@inject('atividades', 'coloquio\Atividades')

@if(Auth::user()->tipo == null)
@include('home_usuario')
@else
@include('home_admin')
@endif
@endsection