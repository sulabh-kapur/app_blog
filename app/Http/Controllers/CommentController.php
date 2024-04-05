<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Comment;

use Auth;


class CommentController extends Controller
{
    public function add(Request $request){
    

        $validate = $request->validate(
            [
                'comment'=>['required']
            ]
            );

            $comment_1 = $request->comment;
            $post_id = $request->post_id;
            $auth_id = Auth::id();
            
    $comment = new Comment();
    $comment->comment = $comment_1;
    $comment->post_id = $post_id;
    $comment->auth_id = $auth_id;

    $comment->save();
    $request->session()->flash('success','Added Successfully!');
    return redirect()->back();

        }
         }
