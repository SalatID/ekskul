<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*Route::get('/', function () {
    return view('welcome');
});*/
Route::get('/','Auth\LoginController@index');
Route::post('/login','Auth\LoginController@validateLogin');
Route::post('/editPass','Auth\LoginController@editPass');
Route::get('/logout','Auth\LoginController@logOut');

Route::get('/dashboard','DashboardController@index');
/*Routing Siswa*/
Route::get('/siswa','SiswaController@index');
Route::get('/detailSiswa','SiswaController@detailSiswa');
Route::post('/tambahSiswa','SiswaController@tambahSiswa');
Route::post('/updateSiswa','SiswaController@updateSiswa');
Route::post('/updateOrtu','SiswaController@updateOrtu');
Route::get('/siswa/getList','SiswaController@getList');

/*Routing Kelas*/
Route::get('/kelas','KelasController@index');
Route::post('/tambahKelas','KelasController@tambahKelas');
Route::post('/editKelas','KelasController@editKelas');
Route::get('/kelas/getDetail','KelasController@getDetail');

/*Routing Guru*/
Route::get('/guru','GuruController@index');
Route::post('/tambahGuru','GuruController@tambahGuru');
Route::post('/editGuru','GuruController@editGuru');
Route::get('/guru/getDetail','GuruController@getDetail');
Route::get('/guru/getList','GuruController@getList');

/*Router Ekskul*/
Route::get('/ekskul','EkskulController@index');
Route::get('/ekskul/absen','EkskulController@absenEkskul');
Route::get('/absenEkskul','EkskulController@absen');
Route::get('/ekskul/nilai','EkskulController@nilaiEkskul');
Route::get('/nilaiEkskul','EkskulController@nilai');
Route::post('/tambahEkskul','EkskulController@tambahEkskul');
Route::get('/detailEkskul','EkskulController@detailEkskul');
Route::get('/anggotaEkskul','EkskulController@anggotaEkskul');
Route::post('/tambahPelatih','EkskulController@tambahPelatih');
Route::get('/anggotaEkskul','EkskulController@anggotaEkskul');
Route::post('/tambahAnggota','EkskulController@tambahAnggota');

/*Routing Report*/
Route::get('/report/absen','EkskulController@reportAbsen');
Route::get('/report/nilai','NilaiController@reportNilai');
Route::get('/report/absen/siswa','EkskulController@reportAbsenSiswa');
Route::get('/report/absen/bulanan','EkskulController@reportAbsenBulanan');
Route::post('/report/absen/bulanan','EkskulController@getReportAbsenBulanan');
Route::get('/report/nilai/bulanan','NilaiController@reportNilaiBulanan');
Route::post('/report/nilai/bulanan','NilaiController@getReportNilaiBulanan');

/*Routing Mata Pelajaran*/
Route::get('/mataPelajaran','MapelController@index');
Route::get('/mataPelajaran/getDetail','MapelController@getDetail');
Route::post('/tambahMapel','MapelController@tambahMapel');
Route::post('/editMapel','MapelController@editMapel');

/*Routing Mata Jadwal*/
Route::get('/jadwalPelajaran','JapelController@index');
Route::get('/jadwalPelajaran/getDetail','JapelController@getDetail');
Route::post('/tambahJadwal','JapelController@tambahJadwal');
Route::post('/editJapel','JapelController@editJapel');

Route::get('/getKota','KotaController@getKota');

/*Routing Absen Guru*/
Route::get('/indexGuru','GuruController@indexGuru');

/*Routing Absen*/
Route::get('/absen','AbsenController@index');

/*Routing Nilai*/
Route::post('/nilai/save','NilaiController@saveNilai');

/*Routing Keluhan*/
Route::get('/keluhan','KeluhanController@index');
Route::post('/tambahKeluhan','KeluhanController@addKeluhan');
Route::get('/keluhan/status','KeluhanController@changeKeluhan');












/*Janan Di Salin*/
Route::get('/contohTable','ContohController@contohTable');
