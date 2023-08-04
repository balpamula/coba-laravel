@extends('layouts.main')

@section('container')
    <h1>{{ $post->title }}</h1>
    <p>By. <a href="/authors/{{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> di
        <a href="/categories/{{ $post->category->slug }}">{{ $post->category->name }}</a>
    </p>

    <p>{!! $post->body !!}</p>

    <a href="/posts">Back to posts</a>
@endsection
