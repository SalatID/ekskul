<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\HisKeluhan;
use Session;
use Validator;

class Keluhan extends Model
{
  protected $table = "tb_keluhan";
  public $timestamps = false;
  public static function generateId ()
  {
    $number = date('ymd').sprintf('%04s',mt_rand(0, 9999));
    if (self::where('id_keluhan',$number)->exists()) {
        return generateId();
    }
    return $number;
  }
  public static function validateForm($data)
  {
    $formValidate = [
        'keluhan' => 'required',
        'status' => 'required'
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
      $data["id_keluhan"]=self::generateId();
      $data["created_dt"]=date("Y-m-d H:i:s");
      $data["created_user"]=SESSION::get('userData')['userData']['user_id'];
      //dd(self::insert($data));
      if (self::insert($data)) {
        if (!HisKeluhan::insertData(["status"=>$data['status'],"id_keluhan"=>$data["id_keluhan"]])['error']) {
          return ["error"=>false,"message"=>"Keluhan Berhasil ditambahkan"];
        }
        return ["error"=>"003","message"=>"History Keluhan Gagal"];
      }
      return ["error"=>"001","message"=>"Gagal Memproses Keluhan"];
    }
    return ["error"=>"002","message"=>"Field ada yang kosong"];
  }
  public static function updateData($data,$id_keluhan)
  {
    $data["updated_dt"]=date("Y-m-d H:i:s");
    $data["updated_user"]=SESSION::get('userData')['userData']['user_id'];
    if (self::where('id_keluhan',$id_keluhan)->update($data)) {
      if (!HisKeluhan::insertData(["status"=>$data['status'],"id_keluhan"=>$id_keluhan])['error']) {
        return ["error"=>false,"message"=>"Keluhan Berhasil diupdate"];
      }
      return ["error"=>"003","message"=>"History Keluhan Gagal"];
    }
    return ["error"=>"001","message"=>"Gagal Update Keluhan"];
  }
}
