<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Guru;

class DashboardController extends Controller
{
    public function index()
	{
    // $queryAbsen = "SELECT SUM(kehadiran) totalHadir, SUM(kehadiran)-kehadiran tidakHadir, kehadiran/SUM(kehadiran)*100 presentase, kehadiran
    //  FROM (
    //    SELECT COUNT(*) kehadiran
    //    FROM tb_absen
    //    GROUP BY id_guru
    // ) b GROUP BY kehadiran";
    // $totalGuru = Guru::count();
    // $dataAbsen = collect(\DB::select($queryAbsen))->first();
    //return view('page.dashboard',compact('dataAbsen','totalGuru'));
		return view('page.dashboard');
	}

  public function getSiswaPrc ()
  {
    $query = "
      SELECT
      COUNT(IF(isEkskul = 1, 1, NULL)) 'isEkskul',
      COUNT(IF(isEkskul = 0, 1, NULL)) 'nonEkskul'
      FROM (
      SELECT a.`id`, CASE WHEN COUNT(b.`id_siswa`) >= 1 THEN 1 ELSE 0 END isEkskul  FROM tb_siswa a
      LEFT JOIN tb_member_ekskul b ON a.id = b.`id_siswa`
      GROUP BY a.`id`
      )X
    ";
    return response()->json( collect(\DB::select($query))->first());
  }

  public function getSiswaKls ()
  {
    $query="	SELECT c.nama, COUNT(IF(b.id_siswa >= 1, 1, NULL)) 'isEkskul'
    	FROM tb_siswa a
    	LEFT JOIN tb_member_ekskul b ON a.id = b.`id_siswa`
    	JOIN tb_kelas c ON a.id_kelas = c.id_kelas
    	GROUP BY c.nama";
      return response()->json( DB::select($query));
  }

  public function getMaxNilai ()
  {
    $query="SELECT MAX(nilai) isEkskul, concat( b.nama_siswa, ' (', c.`nama`,')') nama
FROM tb_nilai a
JOIN tb_siswa b ON a.id_siswa = b.id
JOIN tb_kelas c ON c.`id_kelas` = b.`id_kelas`
GROUP BY b.nama_siswa,c.`nama`
ORDER BY MAX(nilai) DESC
LIMIT 10";
    return response()->json( DB::select($query));
  }
}
