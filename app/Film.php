<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
class Film extends Model
{
    use Sluggable;

    /**
     * Return the sluggable configuration array for this model.
     *
     * @return array
     */
    public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }
    protected $dates = [
        'created_at',
        'updated_at',
        'realease_date',
    ];

    public function countries() {
        return $this->belongsToMany('App\Country', 'film_country');
    }

    public function genres() {
        return $this->belongsToMany('App\Genre', 'film_genre');
    }

    public function photos() {
        return $this->hasMany('App\Photo');
    }

    public function comments() {
        return $this->hasMany('App\Comment', 'film_id');
    }

    public function getYear() {

        return \Carbon\Carbon::parse($this->release_date)->format('Y');
    }

    public function getTitle() {
        return $this->title .' ('.$this->getYear().')';
    }

    public function getFirstPhoto($size) {
        return
            \App\Photo::where('film_id', $this->id)->where('size', $size)->first();
    }
    public function getAllPhotos($size) {
        return
            \App\Photo::where('film_id', $this->id)->where('size', $size)->get();
    }
}
