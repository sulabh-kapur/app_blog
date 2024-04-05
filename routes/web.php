<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\CategoryController;

use App\Http\Controllers\PostController;

use App\Http\Controllers\CommentController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/category', [CategoryController::class, 'category']);
Route::get('/home', [PostController::class, 'home'])->name('home');

Route::post('/category/add',[CategoryController::class, 'save'])->name('category.add');
Route::get('category/list', [CategoryController::class, 'list']);
Route::get('post/list', [PostController::class, 'list_post']);
Route::get('/post', [PostController::class, 'post']);
Route::get('/post/{id}', [PostController::class, 'post_id']);
Route::get('/comment/{id}', [PostController::class, 'comment']);
Route::get('/comment/{id}', [PostController::class, 'comment_id']);


Route::post('/post/add',[PostController::class, 'save'])->name('post.add');
Route::get('/logout', [CategoryController::class, 'logout']);
Route::post('/comment',[CommentController::class, 'add'])->name('comment.add');


