<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Nilai;
use DB;
use App\Ekskul;
use Session;

class NilaiController extends Controller
{
    public function saveNilai(Request $req)
    {
      $insertVal=0;
      for ($i=0; $i < count($req->nilai); $i++) {
        $dataInsert = [
          "id_siswa"=>$req->id_siswa[$i],
          "nilai"=>($req->nilai[$i]==null?0:$req->nilai[$i]),
          "id_ekskul"=>$req->id_ekskul
        ];
        if (!Nilai::insertData($dataInsert)['error']) {
          $insertVal = $insertVal+1;
        }
      }
      if ($insertVal==count($req->nilai)) {
        return redirect()->back()->with(["error"=>false,"message"=>"Tambah Nilai Berhasil"]);
      }
      return redirect()->back()->with(["error"=>"001","message"=>"Tambah Nilai Gagal"]);
    }
    public function reportNilai (Request $req)
    {
      $queryEkskul = "SELECT DATE_FORMAT(DATE,'%d %M %Y') tglLatihan,DATE tglLatihan2, c.`nama`,b.`starting_hour`, b.`finishing_hour`,b.`hari`,b.`id_jadwal`,b.id_ekskul
        FROM tb_absen a
        JOIN tb_jad b ON a.`id_jadwal` = b.`id_jadwal`
        JOIN tb_ekskul c ON b.`id_ekskul` = c.`id_ekskul`
        ".(SESSION::get('userData')['userData']['level']==3? " and a.id_siswa = '".SESSION::get('userData')['userData']['user_id']."'":'')."
        GROUP BY DATE,c.`nama`,b.`starting_hour`,b.`finishing_hour`,b.`hari`,b.`id_jadwal`,b.`id_ekskul`";
        $dataEkskul =  DB::select($queryEkskul);
        if (SESSION::get('userData')['userData']['level']==3) {
          $listEkskul = Ekskul::join('tb_member_ekskul as a','a.id_ekskul','tb_ekskul.id_ekskul')->where('a.id_siswa',SESSION::get('userData')['userData']['user_id'])->get();
        }else {
          $listEkskul = Ekskul::get();
        }
      return view('page.reportNilai',compact('dataEkskul','listEkskul'));
    }
    public function reportNilaiBulanan (Request $req)
    {
      $dataEkskul = Ekskul::where('id_ekskul',$req->input('id_ekskul'))->first();
      return view('page.reportNilaiBulanan',compact('dataEkskul'));
    }
    public function getReportNilaiBulanan(Request $req)
    {
      $date = strtotime($req->tahun.'-01-01 -1 year');
      $befYear = date('Y', $date);
      $where = SESSION::get('userData')['userData']['level']==3? " and b.id = '".SESSION::get('userData')['userData']['user_id']."'":'';
      $query = "SELECT SUM( IF( nMonth = 7, nilai, 0) ) AS '1',
              SUM( IF( nMonth = 8, nilai, 0) ) AS '2',
              SUM( IF( nMonth = 9, nilai, 0) ) AS '3',
              SUM( IF( nMonth = 10, nilai, 0) ) AS '4',
              SUM( IF( nMonth = 11, nilai, 0) ) AS '5',
              SUM( IF( nMonth = 12, nilai, 0) ) AS '6',
              SUM( IF( nMonth = 1, nilai, 0) ) AS '7',
              SUM( IF( nMonth = 2, nilai, 0) ) AS '8',
              SUM( IF( nMonth = 3, nilai, 0) ) AS '9',
              SUM( IF( nMonth = 4, nilai, 0) ) AS '10',
              SUM( IF( nMonth = 5, nilai, 0) ) AS '11',
              SUM( IF( nMonth = 6, nilai, 0) ) AS '12',
              x.`nama_siswa`,c.`nama` kelas
              FROM (
              	SELECT b.nama_siswa,b.`id_kelas`, DATE_FORMAT(a.`created_dt`,'%m') nMonth, SUM(a.nilai) nilai
              	FROM tb_nilai a
              	JOIN tb_siswa b ON a.id_siswa = b.`id`
              	WHERE a.`id_ekskul` ='".$req->id_ekskul."' AND DATE_FORMAT(a.`created_dt`,'%Y%m') BETWEEN '".$befYear."07' AND '".$req->tahun."06' $where
              	GROUP BY b.`nama_siswa`,b.`id_kelas`, DATE_FORMAT(a.`created_dt`,'%m')
              ) AS X
              JOIN tb_kelas c ON c.`id_kelas` =x.`id_kelas`
              GROUP BY x.`nama_siswa`,c.`nama`";

      $dataReport =  DB::select($query);
      $dataEkskul = Ekskul::where('id_ekskul',$req->id_ekskul)->first();
      $dtLength = date('t');
      return view('page.reportNilaiBulanan',compact('dataEkskul','dataReport','dtLength'));
    }
}
