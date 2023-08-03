@extends('layouts.main')

@section('container')
    <h1 class="mb-4">Posts Categories</h1>

    @foreach ($categories as $category)
    <ul class="mb-4">
        <li>
            <h2>
                <a href="/categories/{{ $category->slug}}">{{ $category->name }}</a>
            </h2>
        </li>
    </ul>
    @endforeach
@endsection
