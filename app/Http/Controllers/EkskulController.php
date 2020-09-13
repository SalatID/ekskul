<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Ekskul;
use App\Pelatih;
use App\Japel;
use App\Kelas;
use App\MemberEkskul;
use DB;
use Session;

class EkskulController extends Controller
{
    public function index()
    {
      $dataEkskul = Ekskul::get();
      return view('page.ekskul',compact('dataEkskul'));
    }

    public function detailEkskul(Request $req)
    {
      $dataEkskul = Ekskul::where('id_ekskul',$req->input('id_ekskul'))->first();
      $dataPelatih = Pelatih::select('a.nama_guru')->join('tb_guru as a','a.id_guru','tb_pel_ekskul.id_user')->where('id_ekskul',$req->input('id_ekskul'))->get();
      $dataJadwal = Japel::where('id_ekskul',$req->input('id_ekskul'))->get();
      return view('page.detailEkskul',compact('dataEkskul','dataPelatih','dataJadwal'));
    }

    public function dataAnggota ($id_ekskul,$id_jadwal=null,$tglLatihan=null)
    {
      if ($id_jadwal==null) {
        $queryEkskul = "SELECT id_member, b.`nama_siswa`, b.`tempat_lahir`, b.`tgl_lahir`,b.`alamat`, c.`nama`,b.id,d.id_absen,IFNULL(d.`status`,0) status
          FROM tb_member_ekskul a
          JOIN tb_siswa b ON a.`id_siswa` = b.`id`
          JOIN tb_kelas c ON c.`id_kelas` = b.`id_kelas`
          LEFT JOIN tb_absen d ON d.`id_siswa` = b.`id` AND DATE=DATE(NOW())
          WHERE a.id_ekskul='".$id_ekskul."' ".(SESSION::get('userData')['userData']['level']==3? " and b.id = '".SESSION::get('userData')['userData']['user_id']."'":'')."
          order by b.nama_siswa";
      } else {
        $queryEkskul = "SELECT id_member, b.`nama_siswa`, b.`tempat_lahir`, b.`tgl_lahir`,b.`alamat`, c.`nama`,b.id,d.id_absen,IFNULL(d.`status`,0) status,DATE tglLatihan,d.absen_time
          FROM tb_member_ekskul a
          JOIN tb_siswa b ON a.`id_siswa` = b.`id`
          JOIN tb_kelas c ON c.`id_kelas` = b.`id_kelas`
          LEFT JOIN tb_absen d ON d.`id_siswa` = b.`id`  AND d.`id_jadwal`='".$id_jadwal."' AND DATE=".($tglLatihan==null?"DATE(NOW())":"'".$tglLatihan."'")."
          WHERE a.id_ekskul='".$id_ekskul."' ".(SESSION::get('userData')['userData']['level']==3? " and b.id = '".SESSION::get('userData')['userData']['user_id']."'":'')."
          order by b.nama_siswa";
      }
      return DB::select($queryEkskul);
    }

    public function getDataEkskul()
    {
      $dataEkskul = Ekskul::select('tb_ekskul.*','b.hari','b.starting_hour','b.finishing_hour','b.id_jadwal')
                            ->join('tb_pel_ekskul as a','a.id_ekskul','tb_ekskul.id_ekskul')
                            ->join('tb_jad as b','b.id_ekskul','tb_ekskul.id_ekskul')
                            ->where('a.id_user',SESSION::get('userData')['userData']['user_id'])
                            ->get();
      return $dataEkskul;
    }

    public function getDataAnggota($id_jad)
    {
      $dataEkskul = $dataEkskul = Ekskul::select('tb_ekskul.*','b.hari','b.starting_hour','b.finishing_hour','b.id_jadwal')
                    ->join('tb_jad as b','b.id_ekskul','tb_ekskul.id_ekskul')
                    ->where('b.id_jadwal',$id_jad)
                    ->first();
      return $dataEkskul;
    }

    public function anggotaEkskul (Request $req)
    {
      $dataEkskul = Ekskul::where('id_ekskul',$req->input('id_ekskul'))->first();
      $dataKelas = Kelas::get();
      $dataAnggota = $this->dataAnggota($req->input('id_ekskul'));
      return view('page.anggotaEkskul',compact('dataEkskul','dataKelas','dataAnggota'));
    }

    public function tambahAnggota(Request $req)
    {
      $insertData = [
        "id_ekskul"=>$req->id_ekskul,
        "id_siswa"=>$req->id_siswa
      ];
      return redirect()->back()->with(MemberEkskul::insertData($insertData));
    }

    public function tambahPelatih(Request $req)
    {
      $data = [
        'id_user'=>$req->id_guru,
        'id_ekskul'=>$req->id_ekskul
      ];
      return redirect()->back()->with(Pelatih::insertData($data));
    }

    public function absenEkskul()
    {
      $dataEkskul = $this->getDataEkskul();
      $status = "absen";
      return view('page.absenEkskul',compact('dataEkskul','status'));
    }

    public function nilaiEkskul()
    {
      $dataEkskul = $this->getDataEkskul();
      $status = "nilai";
      return view('page.absenEkskul',compact('dataEkskul','status'));
    }

    public function absen (Request $req)
    {
      $dataEkskul = $this->getDataAnggota($req->input('id_jad'));
      $dataAbsen = $this->dataAnggota($req->input('id_ekskul'),$req->input('id_jad'));
      $id_pel = SESSION::get('userData')['userData']['user_id'];
      return view('page.absen',compact('dataAbsen','dataEkskul','id_pel'));
    }

    public function reportAbsen (Request $req)
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

      return view('page.reportAbsen',compact('dataEkskul','listEkskul'));
    }

    public function reportAbsenSiswa (Request $req)
    {
      $dataEkskul = $this->getDataAnggota($req->input('id_jad'));
      $dataAbsen = $this->dataAnggota($req->input('id_ekskul'),$req->input('id_jad'),$req->input('tgl_latihan'));
      return view('page.reportAbsenSiswa',compact('dataAbsen','dataEkskul'));
    }

    public function reportAbsenBulanan (Request $req)
    {
      $dataEkskul = Ekskul::where('id_ekskul',$req->input('id_ekskul'))->first();
      return view('page.reportAbsenBulanan',compact('dataEkskul'));
    }


    public function getReportAbsenBulanan(Request $req)
    {
      $dataEkskul = Ekskul::where('id_ekskul',$req->id_ekskul)->first();
      $dtLength = date('t');
      $query = "SELECT ";
        for ($i=0; $i <=$dtLength ; $i++) {
          $query .="SUM( IF( tgl = ".($i+1).", totalAbsen, 0) ) AS '".($i+1)."', ";
        }
        $query .="b.`nama_siswa`,c.`nama`
        FROM (
        	SELECT COUNT(id_siswa) totalAbsen, id_siswa,DAY(absen_time)tgl,a.id_jadwal
        	FROM tb_absen a
        	JOIN tb_jad b ON a.`id_jadwal` = b.id_jadwal
        	WHERE DATE_FORMAT(absen_time,'%m')='".$req->bulan."' AND DATE_FORMAT(absen_time,'%Y')='".$req->tahun."'  AND b.id_ekskul = '".$req->id_ekskul."' ";
        $query .= SESSION::get('userData')['userData']['level']==3? " and a.id_siswa = '".SESSION::get('userData')['userData']['user_id']."'":'';
      	$query.="GROUP BY id_siswa,DAY(absen_time),id_jadwal
        ) AS X
        JOIN tb_siswa b ON x.id_siswa = b.`id`
        JOIN tb_kelas c ON c.`id_kelas` = b.`id_kelas`
        GROUP BY id_siswa,b.`nama_siswa`,c.`nama`
        ";
        $dataReport =  DB::select($query);
      return view('page.reportAbsenBulanan',compact('dataEkskul','dataReport','dtLength'));
    }

    public function nilai (Request $req)
    {
      $dataEkskul = $this->getDataAnggota($req->input('id_jad'));
      $dataAbsen = $this->dataAnggota($req->input('id_ekskul'));
      return view('page.nilai',compact('dataAbsen','dataEkskul'));
    }

    public function tambahEkskul(Request $req)
    {
      $data = [
        'nama' => $req->nama,
        'alamat' => $req->alamat,
        'tgl_gabung' => $req->tgl_gabung,
        'telepon' => $req->telepon
      ];
      //dd(Siswa::insertData($data));
        return redirect()->back()->with(Ekskul::insertData($data));
    }
}
