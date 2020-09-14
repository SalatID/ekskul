<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Keluhan;

class HisKeluhanController extends Controller
{
  public function addHistory(Request $req)
  {
    return redirect()->back()->with(HisKeluhan::insertData(["status"=>$req->status,"id_keluhan"=>$req->id_keluhan]));
  }
}
