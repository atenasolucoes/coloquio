<?php

namespace coloquio\Http\Controllers;

use Illuminate\Http\Request;
use coloquio\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use coloquio\Mail\ConfirmUser;

class ArquivoController extends Controller
{
    public function uploadPagamento(Request $request)
    {
        if ($request->file('pagamento')->isValid()) {
            $extension = '.'.$request->pagamento->extension();
            if ($request->pagamento->extension() == 'pdf'){
                $filename = 'pagamento-'.Auth::user()->id.$extension;
                
            $path = $request->file('pagamento')->storeAs(
                'pagamento',
                $filename
            );

            $up = User::find(Auth::user()->id);
            $up->pagamento =  'pagamento-'.Auth::user()->id.$extension;
                if (isset($up->vinculo)) {
                    $up->situacao = 'Aguardando confirmação';
                }
            $up->save();

         
            }else{
                return redirect()
                    ->back()
                    ->withInput(['error'=> 'Só é possivel upload de arquivo em pdf.', 'type_alert' => 'danger']);
            }
            return redirect()
                ->back()
                ->withInput(['success' => 'Upload de pagamento feito com sucesso', 'type_alert' => 'success']); 
          
        }

        
    }

    public function uploadVinculo(Request $request)
    {
        if ($request->file('vinculo')->isValid()) {
            $extension = '.'.$request->vinculo->extension();
            if ($request->vinculo->extension() == 'pdf') {
                $filename = 'vinculo-'.Auth::user()->id.$extension;
                $path = $request->file('vinculo')->storeAs(
                    'vinculo',
                    $filename
                );

                $up = User::find(Auth::user()->id);
                $up->vinculo = 'vinculo-'.Auth::user()->id.$extension;
                if (isset($up->pagamento)) {
                    $up->situacao = 'Aguardando confirmação';
                }
                $up->save();
            } else {
                return redirect()
                    ->back()
                    ->withInput(['error' => 'Só é possivel upload de arquivo em pdf.', 'type_alert' => 'danger']);
            }
        }

        return redirect()
            ->back()
            ->withInput(['success' => 'Upload de vinculo feito com sucesso', 'type_alert' => 'success']);
    }

    public function confirmacao(Request $request)
    {
        $teste = User::find($request->id);
        $teste->situacao = 'confirmada';
        $teste->save();
        Mail::to($teste->email)->send(new ConfirmUser($teste));
        return redirect('/home');
    }


}
