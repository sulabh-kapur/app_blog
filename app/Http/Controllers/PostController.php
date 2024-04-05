<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Post;

use App\Models\category;

use Auth;


class PostController extends Controller
{

    public function post(){
        $category = category::all();
        return view('pages.postform',['categories'=>$category]);
    }
    public function save(Request $request){
        $validate = $request->validate(
            [
                'title' =>['required'],
                'description'=>['required'],
                'image'=>'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
                'category'=>['required'],
            ]

        );
        $unique_name = "";

        if($request->image){
            {
                $extension =  $request->image->extension();
               $unique_name = time().'.'.$extension;
               $image  =  $request->image->storeAs('public/images',$unique_name);
            }
        }
        
        $title = $request->title;
        $description = $request->description;
        $image = $request->image;
        $category = $request->category;
        $auth_id = Auth::id();
       

    $post = new Post();
    $post->title = $title;
    $post->description = $description;
    $post->image = $unique_name;
    $post->description = $description;
    $post->category = $category;
    $post->auth_id = $auth_id;
    

    $post->save();
    $request->session()->flash('success','Added Successfully!');
    return redirect()->back();
    }

    public function list_post(){
        $post = Post::paginate(4);
        return view('pages.postlisting',['post_list'=>$post]);
    }

    public function home() {
        $post = Post::paginate(4);
        return view('pages.home',['post_list_1'=>$post]);
      }



     public function post_id(Request $request , $id = null){
        $post = Post::find($id);
        $category = category::all();

        $postsort=Post::orderBy('id', 'desc')->limit(3)->get();
        
        
        
        return view ('pages.single_post',['post'=>$post,'category1'=>$category,'post_sort'=>$postsort]);
     }
      
      
}
