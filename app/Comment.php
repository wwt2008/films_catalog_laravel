<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    public function film() {
        return $this->belongsTo('App\Film', 'film_id');
    }
    public function user() {
        return $this->belongsTo('App\User', 'user_id');
    }
}
