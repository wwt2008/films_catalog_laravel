<?php

use Illuminate\Database\Seeder;
use \App\Genre;
use \App\Country;
class FilmsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Film::class, 3)->create()->each(function($film) {
            $genres_all = Genre::pluck('id')->all();
            $genre_ids = array_unique(array_random($genres_all, rand(1,5)));
            $film->genres()->sync($genre_ids);

            $contries_all = Country::pluck('id')->all();
            $countries_ids = array_unique(array_random($contries_all, rand(1,3)));
            $film->countries()->sync($countries_ids);

            $film->comments()->save(factory(\App\Comment::class)->make(['film_id'=>$film->id]));
        });
    }
}
