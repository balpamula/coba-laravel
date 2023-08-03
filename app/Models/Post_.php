<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
        [
            "title" => "Post Pertama",
            "slug" => "post-pertama",
            "author" => "Iqbal",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste, quo. Odit, maiores non! In temporibus deserunt, rerum quo vitae maxime."
        ],
        [
            "title" => "Post Kedua",
            "slug" => "post-kedua",
            "author" => "Pamula",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi, tempore hic odio rerum corporis obcaecati illo iusto. Rerum inventore nisi magnam aspernatur a quo, minima sed rem eveniet corporis eligendi similique nobis eos maxime quasi assumenda eaque explicabo non ipsa ab qui nemo. Reprehenderit officiis rem fugiat libero sit quae."
        ]
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();

        return $posts->firstWhere('slug', $slug);
    }
}
