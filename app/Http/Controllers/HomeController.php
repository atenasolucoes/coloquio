<?php

namespace coloquio\Http\Controllers;

use Illuminate\Http\Request;
use coloquio\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use coloquio\Mail\ConfirmUser;


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
    public function lista(Request $request)
    {
        $inscritos = User::where('situacao', $request->situacao)->orderBy('name', 'asc')->get();
        return view('listainscritos')->with(compact('inscritos'));
    }
    
    public function teste(Request $request)
    {
       $teste = User::find($request->id);
       return response()->json($teste);
    }

    public function confirmacao(Request $request)
    {
        $user = User::find($request->id);
        $user->situacao = 'confirmada';
        $user->save();
        Mail::to($user->email)->send(new ConfirmUser($user));
        return redirect('/home');
    }
   
 
    public function inscricao_participante(Request $data)
    {
        if ((Auth::user()->tipo == 'admin') && ($data['confirm-doc'] == 1)) {
            User::create([
                'name' => $data['name'],
                'email' => $data['email'],
                'ocupacao' => $data['ocupacao'],
                'situacao' => 'confirmada',
                'pagamento' => 'presencial',
                'vinculo' => 'presencial',
                'password' => Hash::make($data['password']),
            ]);
        }
        return redirect('/home');
    }

    
}
