<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Keluhan;
use Session;

class KeluhanController extends Controller 
{
    public function index ()
    {
      if (SESSION::get('userData')['userData']['level']==1) {
        $dataKeluhan = Keluhan::orderBy('created_dt','desc')->get();
      } else {
        $dataKeluhan = Keluhan::where('created_user',SESSION::get('userData')['userData']['user_id'])->orderBy('created_dt','desc')->get();
      }
      return view('page.keluhan',compact('dataKeluhan'));
    }
    public function addKeluhan(Request $req)
    {
      return redirect()->back()->with(Keluhan::insertData(["keluhan"=>$req->keluhan,"status"=>0]));
    }
    public function changeKeluhan(Request $req)
    {
      return response()->json(Keluhan::updateData(["status"=>$req->status],$req->id_keluhan));
    }
    public function saveFeedback(Request $req)
    {
      return response()->json(Keluhan::updateData(["feedback"=>$req->feedback,"status" => 2],$req->id_keluhan));
    }
}
