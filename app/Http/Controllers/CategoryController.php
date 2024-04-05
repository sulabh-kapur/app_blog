<?php

namespace App\Http\Controllers;

use App\Models\Category;

use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function category(){
        return view('pages.categoryform');
    }

    public function save(Request $request){
        
    $validate = $request->validate(
        [
        'name' =>['required'],
        'image'=>'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
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

    $name = $request->name; 

    $image = $request->image;

    $category = new Category();

    $category->name = $name;
    $category->image = $unique_name;
    $category->save();
    $request->session()->flash('success','Added Successfully!');
    return redirect()->back();
  
    }

    public function list(){
        $category = Category::paginate(4);
        return view('pages.list',['category_list'=>$category]);
    }

    public function logout(Request $request) {
        $request->session()->flush();
        return redirect('/login');
      }

      
}
