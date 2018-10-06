<?php

use Faker\Generator as Faker;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(App\User::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'email' => $faker->unique()->safeEmail,
        'password' => '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', // secret
        'remember_token' => str_random(10),
    ];
});

//Definition of the Comments factory
$factory->define(\App\Comment::class, function (Faker $faker) {
    $users_all = \App\User::pluck('id')->all();
    return [
        'content' => $faker->sentence,
        'user_id' => $users_all[array_rand($users_all)],
    ];
});
//Definition of the Films factory
$factory->define(\App\Film::class, function (Faker $faker) {
    $wordsNumber = rand(1,5);
    return [
        'title' => ucfirst($faker->words($wordsNumber, true)) ,
        'description' => $faker->paragraph(),
        'release_date' => $faker->date(),
        'ticket_price' => $faker->randomFloat(2, 1, 999),
        'rating' => $faker->numberBetween(1, 5)
    ];
});
