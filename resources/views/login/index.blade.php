@extends('layouts.main')

@section('container')

<style>
    .form-signin input {
        margin-bottom: -1px !important;
    }
</style>

<div class="row justify-content-center">
    <div class="col-md-5">
        @if(session()->has('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        @elseif(session()->has('loginError'))
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            {{ session('loginError') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        @endif

        <main class="form-signin w-100 m-auto">
            <h1 class="h3 mb-3 fw-normal text-center">Masuk dulu</h1>
            <form action="/login" method="POST">
                @csrf      
                <div class="form-floating">
                    <input type="username" name="username" class="form-control rounded-0 rounded-top @error('username') is-invalid @enderror" id="username" placeholder="Username" autofocus required value="{{ old('username') }}">
                    <label for="floatingInput">Username</label>
                    @error('username')
                    <div class="invalid-feedback mb-1">
                        {{ $message }}
                    </div>
                    @enderror
                </div>
                <div class="form-floating">
                    <input type="password" name="password" class="form-control rounded-0 rounded-bottom" id="password" placeholder="Password">
                    <label for="floatingPassword">Password</label>
                    @error('password')
                    <div class="invalid-feedback mb-1">
                        {{ $message }}
                    </div>
                    @enderror
                </div>
                <button class="btn btn-primary w-100 py-2 mt-3" type="submit">Masuk</button>
            </form>
            <small class="d-block text-center mt-3">Belum terdaftar? <a href="/register">Daftar sekarang!</a></small>
        </main>

    </div>
</div>
    

@endsection