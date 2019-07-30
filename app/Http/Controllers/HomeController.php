<?php

namespace coloquio\Http\Controllers;

use Illuminate\Http\Request;
use coloquio\User;

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
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $inscritos = User::where('tipo', null)->get();
        return view('home')->with(compact('inscritos'));
    }
    
    public function teste(Request $request)
    {
       $teste = User::find($request->id);
       return response()->json($teste);
    }
    public function confirmacao(Request $request)
    {
        $up = User::find(Auth::user()->id);
        $up->situacao = "confirmada";
        $up->save();
        $teste="Foi";
        return response()->json($teste);

    }
 
    public function inscricao_atividade(Request $request)
    {
        # code...
    }

    
}
