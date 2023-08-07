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
            <form>        
                <div class="form-floating">
                    <input type="name" class="form-control rounded-0 rounded-top" id="floatingInput" placeholder="Nama">
                    <label for="floatingInput">Name</label>
                </div>
                <div class="form-floating">
                    <input type="username" class="form-control rounded-0" id="floatingPassword" placeholder="Username">
                    <label for="floatingPassword">Username</label>
                </div>
                <div class="form-floating">
                    <input type="email" class="form-control rounded-0" id="floatingPassword" placeholder="name@example.com">
                    <label for="floatingPassword">Email</label>
                </div>
                <div class="form-floating">
                    <input type="password" class="form-control rounded-0 rounded-bottom" id="floatingPassword" placeholder="Password">
                    <label for="floatingPassword">Password</label>
                </div>
                <button class="btn btn-primary w-100 py-2 mt-3" type="submit">Daftar</button>
            </form>
            <small class="d-block text-center mt-3">Sudah dafar? <a href="/login">Masuk</a></small>
        </main>

    </div>
</div>
    

@endsection