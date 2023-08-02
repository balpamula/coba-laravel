@extends('layouts.main')

@section('container')
    @foreach ($posts as $post)
    <div class="mb-5">
        <h2>{{ $post['title'] }}</h2>
        <h5>By : {{ $post['author'] }}</h5>
        <p>{{ $post['body'] }}</p>
    </div>
    @endforeach
@endsection
