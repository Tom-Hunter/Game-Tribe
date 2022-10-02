<?php

use Illuminate\Support\Facades\Route;


Route::get('/', function () {
    return view('welcome');
})->name('home');

Route::get('/test', function () {
    return view('test');
})->name('test');

Route::get('/blog', function () {
    return view('Blog');
})->name('blog');

// Route::get('/user/{id}', function ($id) {
//     return 'User ' .$id;
// })->name('user');
