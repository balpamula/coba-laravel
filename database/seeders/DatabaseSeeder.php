<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory(3)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Post::factory(20)->create();

        // User::create([
        //     'name' => 'Iqbal',
        //     'email' => 'balpamula@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        // User::create([
        //     'name' => 'Pamula',
        //     'email' => 'pamulabaiq@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Tempora, libero.',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At, natus.onsectetur laboriosam, temporibus officiis cum expedita inventore dolores quam. Cum quisquam ipsam suscipit a maxime laudantium impedit nihil, quam provident cupiditate at atque aspernatur recusandae dignissimos dolorem dolorum libero natus assumenda distinctio quia voluptatem quidem.</p><p>Dolore, esse minus! Id minus quod voluptas magni nulla vel qui fuga error veniam. Ducimus nisi unde minus autem laudantium.CAccusamus, necessitatibus? Fugit dolore commodi animi corporis amet. Sapiente ipsam fugiat minima, perspiciatis possimus accusantium. Excepturi facere voluptates iusto expedita vitae a ducimus natus incidunt minus dicta eum eaque ullam aliquid amet eveniet dolorum, eius laborum error officia, dolor, delectus voluptate odio! At nobis dolores id ut quasi, voluptatibus nihil sit nemo suscipit assumenda necessitatibus.</p>',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul ke Dua',
        //     'slug' => 'judul-ke-dua',
        //     'excerpt' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Tempora, libero.',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At, natus.onsectetur laboriosam, temporibus officiis cum expedita inventore dolores quam. Cum quisquam ipsam suscipit a maxime laudantium impedit nihil, quam provident cupiditate at atque aspernatur recusandae dignissimos dolorem dolorum libero natus assumenda distinctio quia voluptatem quidem.</p><p>Dolore, esse minus! Id minus quod voluptas magni nulla vel qui fuga error veniam. Ducimus nisi unde minus autem laudantium.CAccusamus, necessitatibus? Fugit dolore commodi animi corporis amet. Sapiente ipsam fugiat minima, perspiciatis possimus accusantium. Excepturi facere voluptates iusto expedita vitae a ducimus natus incidunt minus dicta eum eaque ullam aliquid amet eveniet dolorum, eius laborum error officia, dolor, delectus voluptate odio! At nobis dolores id ut quasi, voluptatibus nihil sit nemo suscipit assumenda necessitatibus.</p>',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul ke Tiga',
        //     'slug' => 'judul-ke-tiga',
        //     'excerpt' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Tempora, libero.',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At, natus.onsectetur laboriosam, temporibus officiis cum expedita inventore dolores quam. Cum quisquam ipsam suscipit a maxime laudantium impedit nihil, quam provident cupiditate at atque aspernatur recusandae dignissimos dolorem dolorum libero natus assumenda distinctio quia voluptatem quidem.</p><p>Dolore, esse minus! Id minus quod voluptas magni nulla vel qui fuga error veniam. Ducimus nisi unde minus autem laudantium.CAccusamus, necessitatibus? Fugit dolore commodi animi corporis amet. Sapiente ipsam fugiat minima, perspiciatis possimus accusantium. Excepturi facere voluptates iusto expedita vitae a ducimus natus incidunt minus dicta eum eaque ullam aliquid amet eveniet dolorum, eius laborum error officia, dolor, delectus voluptate odio! At nobis dolores id ut quasi, voluptatibus nihil sit nemo suscipit assumenda necessitatibus.</p>',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);

        // Post::create([
        //     'title' => 'Judul ke Empat',
        //     'slug' => 'judul-ke-empat',
        //     'excerpt' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Tempora, libero.',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At, natus.onsectetur laboriosam, temporibus officiis cum expedita inventore dolores quam. Cum quisquam ipsam suscipit a maxime laudantium impedit nihil, quam provident cupiditate at atque aspernatur recusandae dignissimos dolorem dolorum libero natus assumenda distinctio quia voluptatem quidem.</p><p>Dolore, esse minus! Id minus quod voluptas magni nulla vel qui fuga error veniam. Ducimus nisi unde minus autem laudantium.CAccusamus, necessitatibus? Fugit dolore commodi animi corporis amet. Sapiente ipsam fugiat minima, perspiciatis possimus accusantium. Excepturi facere voluptates iusto expedita vitae a ducimus natus incidunt minus dicta eum eaque ullam aliquid amet eveniet dolorum, eius laborum error officia, dolor, delectus voluptate odio! At nobis dolores id ut quasi, voluptatibus nihil sit nemo suscipit assumenda necessitatibus.</p>',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
