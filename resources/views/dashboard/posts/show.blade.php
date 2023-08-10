@extends('dashboard.layouts.main')

@section('container')
    <div class="row my-3">
        <div class="col-lg-12">
            <a href="/dashboard/posts" class="btn btn-primary"><span data-feather="arrow-left"></span> Kembali</a>
            <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning"><span data-feather="edit"></span> Edit</a>
            <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
                @method('delete')
                @csrf 
                <button class="btn btn-danger" onclick="return confirm('Apakah anda yakin untuk menghapus data?')"><span data-feather="trash-2"></span> Hapus</button>
              </form>
            
        </div>
    </div>

    <div class="row">
        <div class="col-lg-8">
            <h1 class="mb-3">{{ $post->title }}</h1>
            <p>Kategori : {{ $post->category->name }}</p>
            @if ($post->image)
            <div style="max-height:400px; overflow:hidden">
                <img src="{{ asset('storage/' . $post->image) }}" class="card-img-top img-fluid" alt="{{ $post->category->name }}">    
            </div>
            @else
            <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" class="card-img-top img-fluid" alt="{{ $post->category->name }}">
            @endif
            <article class="my-3 fs-5">
                {!! $post->body !!}
            </article>
        </div>
    </div>
@endsection