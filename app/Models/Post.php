<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\User;

use App\Models\Comment;

class Post extends Model
{
    public function user(){
        return $this->hasOne(User::class,'id','auth_id');
     }

     public function getComment(){
        return $this->hasMany(Comment::class,'post_id','id');
     }
}
