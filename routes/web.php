<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('home', [
        "title" => "Home"
    ]);
});

Route::get('/about', function () {
    return view('about', [
        "title" => "About",
        "name" => "Iqbal Pamula Ba'iq",
        "email" => "balpamula@gmail.com",
        "image" => "iqbal.jpg"
    ]);
});



Route::get('/blog', function () {
    $blog_posts = [
        [
            "title" => "Post Pertama",
            "author" => "Iqbal",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste, quo. Odit, maiores non! In temporibus deserunt, rerum quo vitae maxime."
        ],
        [
            "title" => "Post Kedua",
            "author" => "Pamula",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi, tempore hic odio rerum corporis obcaecati illo iusto. Rerum inventore nisi magnam aspernatur a quo, minima sed rem eveniet corporis eligendi similique nobis eos maxime quasi assumenda eaque explicabo non ipsa ab qui nemo. Reprehenderit officiis rem fugiat libero sit quae."
        ]
    ];
    return view('posts', [
        "title" => "Posts",
        "posts" => $blog_posts
    ]);
});
