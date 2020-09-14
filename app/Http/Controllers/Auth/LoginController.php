<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Auth;
use Session;
use App\User;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    //use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function index()
    {
      return view('login');
    }

    public function validateLogin(Request $req)
    {
      $credentials = $req->only('emailVal', 'password');
      //dd($req->all());
      ///dd(Auth::attempt($credentials));
      if (Auth::attempt($credentials)) {
          // Authentication passed...
          //dd(Auth::user()->id_user);
          $dataLogin = User::select('tb_user.*','a.nama_guru','a.nip','a.email')
                      ->join('tb_guru as a','a.id_guru','tb_user.id_user')
                      ->where('tb_user.id_user',Auth::user()->id_user)
                      ->first();

          $sessionValue = [
            "userData"=>[
              "user_id"=>$dataLogin->id_user,
              "fullName"=>$dataLogin->nama_guru,
              "email"=>$dataLogin->emailVal,
              "picture"=>$dataLogin->images,
              "level"=>$dataLogin->levelId,
            ]
          ];
          //dd($sessionValue);
          Session::put("userData",$sessionValue);
          // if ($dataLogin->levelId==2) {
          //   return redirect('/indexGuru');
          // }
          return redirect('/dashboard');
      }
      return redirect('/')->with(["error"=>"001","message"=>"Password atau Username Salah"]);
    }

    public function logOut()
    {
      Auth::logout();
      Session::flush();
      return redirect('/');
    }
}
