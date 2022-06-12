<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Cursos;
use App\User;
use App\Attachments;
use App\StatusHoras;
use Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $curso_user = Cursos::find(Auth::user()->curso_id);
        $horas = StatusHoras::find(Auth::user()->id);

        // relacionar curso_id com user_id
        $attachements = Attachments::where('user_id', Auth::user()->id)->where('curso_id',Auth::user()->curso_id)->get();
        // dd($attachements);
        return view('home',[
            'curso' => $curso_user,
            'horas' => $horas,
            'attachments' => $attachements,
        ]);
    }

    
}
