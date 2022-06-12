<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Attachments;
use App\Cursos;
use App\StatusHoras;
use App\User;
use Auth;


class UploadController extends Controller
{
    public function anexar(Request $request){
        $error = false;
            if($request->hasFile('upload')){
                // Get filename with the extension
                $filenameWithExt = $request->file('upload')->getClientOriginalName();
                // Get just filename
                $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);
                // Get just ext
                $extension = $request->file('upload')->getClientOriginalExtension();
                // Filename to store
                $fileNameToStore= $filename.'_'.time().'.'.$extension;
                // Upload Image
                $path = $request->file('upload')->storeAs('public/upload', $fileNameToStore);

                $attachments = new Attachments;
                $attachments->id = null;
                $attachments->curso_id = Auth::user()->curso_id;
                $attachments->user_id = Auth::user()->id;
                $attachments->filename = $fileNameToStore;
                $attachments->path = $path;
                $attachments = $attachments->save();

                //verificar as horas
                $horas = StatusHoras::find(Auth::user()->id);
                $horas_pendentes = '';
                $horas_enviadas = '';

                if(isset($horas->horas_pendentes)) $horas_pendentes = $horas->horas_pendentes;
                if(isset($horas->horas_enviadas)) $horas_enviadas = $horas->horas_enviadas;

                // save in database StatusHoras
                $total_horas = $request->input('total-horas');

                if($total_horas > $horas_pendentes){
                    $total_horas =  $horas_pendentes; 
                }
                $horas = $horas->update([
                    'horas_pendentes' => ($horas_pendentes - $total_horas),
                    'horas_enviadas' =>  ($horas->horas_enviadas + $total_horas),
                ]);

                if(!$attachments){
                    $error = true;
                }

                if(!$horas){
                    $error = true;
                }
                

            } else{
                $error = true;
            }          


            if($error == false){
                return redirect()
                        ->back()
                        ->with('sucesso', 'Seu envio está em Análise!');
            }
            else{
                return redirect()
                ->back()
                ->with('erro', 'Não foi possível completar a ação!');
            }
            
        
    }
}
