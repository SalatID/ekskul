<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('/absen/in','AbsenController@absenIn');
Route::post('/absen/out','AbsenController@absenOut');
Route::post('/keluhan/feedback','KeluhanController@saveFeedback');
Route::get('/siswa/prc','DashboardController@getSiswaPrc');
Route::get('/siswa/kls','DashboardController@getSiswaKls');
Route::get('/siswa/nilai','DashboardController@getMaxNilai');
