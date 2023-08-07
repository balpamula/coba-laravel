@extends('layouts.main')

@section('container')
<style>
    .form-registration input {
        margin-bottom: -1px !important;
    }
</style>

<div class="row justify-content-center">
    <div class="col-md-5">

        <main class="form-registration">
            <h1 class="h3 mb-3 fw-normal text-center">Form Daftar</h1>
            <form action="/register" method="POST">
                @csrf
                <div class="form-floating">
                    <input type="text" name="name" class="form-control rounded-0 rounded-top @error('name') is-invalid @enderror" id="floatingInput" placeholder="Nama" required value="{{ old('name') }}">
                    <label for="floatingInput">Name</label>
                    @error('name')
                    <div class="invalid-feedback mb-1">
                        {{ $message }}
                    </div>
                    @enderror
                </div>
                <div class="form-floating">
                    <input type="text" name="username" class="form-control rounded-0 @error('username') is-invalid @enderror" id="floatingPassword" placeholder="Username" required value="{{ old('username') }}">
                    <label for="floatingPassword">Username</label>
                    @error('username')
                    <div class="invalid-feedback mb-1">
                        {{ $message }}
                    </div>
                    @enderror
                </div>
                <div class="form-floating">
                    <input type="email" name="email" class="form-control rounded-0 @error('email') is-invalid @enderror" id="floatingPassword" placeholder="name@example.com" required value="{{ old('email') }}">
                    <label for="floatingPassword">Email</label>
                    @error('email')
                    <div class="invalid-feedback mb-1">
                        {{ $message }}
                    </div>
                    @enderror
                </div>
                <div class="form-floating">
                    <input type="password" name="password" class="form-control rounded-0 rounded-bottom @error('password') is-invalid @enderror" id="floatingPassword" placeholder="Password" required>
                    <label for="floatingPassword">Password</label>
                    @error('password')
                    <div class="invalid-feedback mb-1">
                        {{ $message }}
                    </div>
                    @enderror
                </div>
                <button class="btn btn-primary w-100 py-2 mt-3" type="submit">Daftar</button>
            </form>
            <small class="d-block text-center mt-3">Sudah dafar? <a href="/login">Masuk</a></small>
        </main>

    </div>
</div>
    

@endsection