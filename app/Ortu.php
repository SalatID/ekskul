<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Validator;
use Session;

class Ortu extends Model
{
    protected $table = "tb_ortu";
    public $timestamps = false;
    public static function generateId ()
    {
      $number = date('ymd').sprintf('%04s',mt_rand(0, 9999));
      if (self::where('id',$number)->exists()) {
          return generateId();
      }
      return $number;
    }

    public static function validateForm($data)
    {
      $formValidate = [
          'nama' => 'required',
          'tempat_lahir' => 'required',
          'tgl_lahir' => 'required',
          'id_provinsi' => 'required',
          'id_kota' => 'required',
          'alamat' => 'required',
          'kode_pos' => 'required',
      ];
      $validator = Validator::make($data,$formValidate );

      if ($validator->fails()) {
        return false;
      }
      return true;
    }

    public static function insertData($data)
    {
      if (self::validateForm($data)) {
        if (self::validateForm($data)) {
          $data["id"]=self::generateId();
          $data["created_dt"]=date("Y-m-d H:i:s");
          $data["created_user"]=SESSION::get('userData')['userData']['user_id'];
          //dd(self::insert($data));
          if (self::insert($data)) {
            return ["error"=>false,"message"=>"Tambah Ortu Berhasil"];
          }
          return ["error"=>"001","message"=>"Tambah Ortu Gagal"];
        }
        return ["error"=>"001","message"=>"Field ada yang kosong"];
      }
      return ["error"=>"001","message"=>"Field ada yang kosong"];
    }

    public static function updateData($data,$id)
    {
      if (self::validateForm($data)) {
        $data["updated_dt"]=date("Y-m-d H:i:s");
        $data["updated_user"]=SESSION::get('userData')['userData']['user_id'];
        //dd(self::insert($data));
        if (self::where(['id_siswa'=>$id,"status"=>$data["status"]])->update($data)) {
          return ["error"=>false,"message"=>"Edit Ortu Berhasil"];
        }
        return ["error"=>"001","message"=>"Edit Ortu Gagal"];
      }
      return ["error"=>"001","message"=>"Field ada yang kosong"];
    }
}
