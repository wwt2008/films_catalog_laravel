<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Comment;

class CommentsController extends Controller
{
    public function create(Request $request) {
        $comment = new Comment();
        $comment->content   = $request->input('content');
        $comment->user_id   = \Auth::id();
        $comment->film_id   = $request->input('film_id');
        $comment->save();
        return  back();
    }
}
