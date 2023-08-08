@extends('dashboard.layouts.main')

@section('container')
    <div class="row my-3">
        <div class="col-lg-12">
            <a href="/dashboard/posts" class="btn btn-primary"><span data-feather="arrow-left"></span> Kembali</a>
            <a href="" class="btn btn-warning"><span data-feather="edit"></span> Edit</a>
            <a href="" class="btn btn-danger"><span data-feather="trash-2"></span> Hapus</a>
            
        </div>
    </div>

    <div class="row">
        <div class="col-lg-8">
            <h1 class="mb-3">{{ $post->title }}</h1>
            <p>Kategori : {{ $post->category->name }}</p>
            
            <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" class="card-img-top img-fluid" alt="{{ $post->category->name }}">
            <article class="my-3 fs-5">
                {!! $post->body !!}
            </article>
        </div>
    </div>
@endsection