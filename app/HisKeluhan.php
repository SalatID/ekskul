<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Validator;
use Session;

class HisKeluhan extends Model
{
  protected $table = "tb_his_keluhan";
  public $timestamps = false;
  public static function generateId ()
  {
    $number = date('ymd').sprintf('%04s',mt_rand(0, 9999));
    if (self::where('id_his',$number)->exists()) {
        return generateId();
    }
    return $number;
  }
  public static function validateForm($data)
  {
    $formValidate = [
        'id_keluhan' => 'required',
        'status' => 'required',
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
      $data["id_his"]=self::generateId();
      $data["created_dt"]=date("Y-m-d H:i:s");
      $data["created_user"]=SESSION::get('userData')['userData']['user_id'];
      //dd(self::insert($data));
      if (self::insert($data)) {
        return ["error"=>false,"message"=>"Keluhan Berhasil ditambahkan"];
      }
      return ["error"=>"001","message"=>"Gagal Memproses Keluhan"];
    }
    return ["error"=>"001","message"=>"Field ada yang kosong"];
  }
}
