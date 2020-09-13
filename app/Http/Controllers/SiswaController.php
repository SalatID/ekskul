<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Siswa;
use App\Kelas;
use App\Provinsi;
use App\Kota;
use App\Ortu;
use DB;

class SiswaController extends Controller
{
    public function siswaData($idSiswa=null)
    {
      $dataKelas=Kelas::get();
      $dataProvinsi=Provinsi::get();
      if ($idSiswa!=null) {
        $dataKota = Kota::get();
        $dataSiswa= Siswa::select('a.nama as prov_nm','b.nama as kota_nm','tb_siswa.*')
                          ->join('provinsi as a','a.id_provinsi','tb_siswa.id_provinsi')
                          ->join('kota as b', 'b.id_kota','tb_siswa.id_kota')
                          ->where('tb_siswa.id',$idSiswa)
                          ->first();
        $dataOrtu = Ortu::select('a.nama as prov_nm','b.nama as kota_nm','tb_ortu.*')
                          ->join('provinsi as a','a.id_provinsi','tb_ortu.id_provinsi')
                          ->join('kota as b', 'b.id_kota','tb_ortu.id_kota')
                          ->where('tb_ortu.id_siswa',$idSiswa)
                          ->orderBy('tb_ortu.status')
                          ->get();
        return compact('dataSiswa','dataKelas','dataProvinsi','dataKota','dataOrtu');
      }
      $dataSiswa= Siswa::select('a.nama as prov_nm','b.nama as kota_nm','tb_siswa.*')
                        ->join('provinsi as a','a.id_provinsi','tb_siswa.id_provinsi')
                        ->join('kota as b', 'b.id_kota','tb_siswa.id_kota')->get();

      return compact('dataSiswa','dataKelas','dataProvinsi');
    }
    public function index()
    {
      return view('page.siswa',$this->siswaData());
    }

    public function tambahSiswa(Request $req)
    {
      $data = [
        'nis' => $req->nis,
        'nisn' => $req->nisn,
        'email'=>$req->email,
        'nipd' => $req->nipd,
        'nama_siswa' => $req->nama_siswa,
        'id_kelas' => $req->id_kelas,
        'jns_kel' => $req->jns_kel,
        'alamat' => $req->alamat,
        'id_provinsi' => $req->id_provinsi,
        'id_kota' => $req->id_kota,
        'kode_pos' => $req->kode_pos,
        'tempat_lahir' => $req->tempat_lahir,
        'tgl_lahir' => $req->tgl_lahir,
      ];
      //dd(Siswa::insertData($data));
        return redirect()->back()->with(Siswa::insertData($data));
    }

    public function getList(Request $req)
    {
      $queryEkskul = "SELECT a.* FROM tb_siswa a
        LEFT JOIN tb_member_ekskul b ON a.id = b.id_siswa AND b.id_ekskul = '".$req->input('id_ekskul')."'
        WHERE id_kelas='".$req->input('id_kelas')."' AND a.nama_siswa like '".$req->input('nama')."%'AND IFNULL(b.id_siswa,'') = ''";
        //var_dump($queryEkskul);die;
      $dataEkskul =  DB::select($queryEkskul);

      return response()->json($dataEkskul);
    }

    public function detailSiswa (Request $req)
    {
      return view('page.detailSiswa',$this->siswaData($req->input('id')));
    }

    public function updateSiswa(Request $req)
    {
      $data = [
        'nis' => $req->nis,
        'nisn' => $req->nisn,
        'nipd' => $req->nipd,
        'nama_siswa' => $req->nama_siswa,
        'id_kelas' => $req->id_kelas,
        'jns_kel' => $req->jns_kel,
        'alamat' => $req->alamat,
        'id_provinsi' => $req->id_provinsi,
        'id_kota' => $req->id_kota,
        'kode_pos' => $req->kode_pos,
        'tempat_lahir' => $req->tempat_lahir,
        'tgl_lahir' => $req->tgl_lahir,
      ];
      //dd($data);
      //dd(Siswa::insertData($data));
        return redirect()->back()->with(Siswa::updateData($data,$req->id));
    }

    public function updateOrtu(Request $req)
    {
      $realData = [];
      $insertRow = 0;
      for ($i=0; $i <count($req->nama_ortu) ; $i++) {
        $data = [
          'nama' => $req->nama_ortu[$i],
          'tempat_lahir' => $req->tempat_lahir_ortu[$i],
          'status' => $i,
          'tgl_lahir' => $req->tgl_lahir_ortu[$i],
          'id_provinsi' => $req->id_provinsi_ortu[$i],
          'id_kota' => $req->id_kota_ortu[$i],
          'alamat' => $req->alamat_ortu[$i],
          'kode_pos' => $req->kode_pos_ortu[$i],
          "id_siswa"=>$req->id_siswa
        ];
        //array_push($realData,$data);

        if (Ortu::where('id_siswa',$req->id_siswa)->where('status',$i)->exists()) {
          // dd(Ortu::where('id_siswa',$req->id_siswa)->exists());
          $result = Ortu::updateData($data,$req->id_siswa);
          if (!$result['error']) {
            $insertRow = $insertRow +1;
          }
        } else {
          $result = Ortu::insertData($data);
          if (!$result['error']) {
            $insertRow = $insertRow +1;
          }
        }
        //dd($data);
        //dd(Siswa::insertData($data));


      }
      if ($insertRow=count($req->nama_ortu)) {
        return redirect()->back()->with(["error"=>false,"message"=>"Tambah Ortu Berhasil"]);
      }
      return redirect()->back()->with(["error"=>"001","message"=>"Tambah Ortu Gagal"]);



    }

}
