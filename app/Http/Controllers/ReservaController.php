<?php

namespace App\Http\Controllers;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Mail;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\EspacoController;
use App\Http\Controllers\ClienteController;

use App\Mail\message;
use App\Models\Espaco;
use App\Models\Reserva;
use App\Models\Evento;
use App\Models\Cliente;
use App\Models\Servico;
use App\Models\Plano;
use App\Models\Foto;
class ReservaController extends Controller
{
    //efetuar a reserva conforme os dados da tabela reserva

    public function store(Request $request){
            
        /*$dados=$request->validate([
                'nomeCli'=>'required',
                'telefoneCli'=>'required',
                'emailCli'=>'required',
                'dataEve'=>'required',
                'nomedoespaco'=>'required',
                'tipoEve'=>'required',
                'numConv'=>'required',
                'servicos[]'=>'required',
                'dataVi'=>'required'
            ]);*/
            
            /*Criacao das variaveis */
            $reserva=Reserva::all();
            $espacos=Espaco::all();

            $dataAtual=Carbon::today()->format('Y-m-d');
            
            $emailcli=$request->emailCli;
            $dataForm=$request->dataEve;
            $nomeSalaoForm=$request->nomedoespaco;
            $dataVisita=$request->dataVi; 
            
            $DataDeHoje=strtotime($dataAtual);
            $DataDoFormulario=strtotime($dataForm);
            
            /*query para ver os dados do salao*/
            $buscaDadosSalao=Espaco::where('nomeEsp','like','%'.$request->nomedoespaco.'%')->get();
                                  
            /*query para ver se a data existe em algum agendamento */
            $buscaDadosReserva=Reserva::where([
                ['dataEvento','like','%'.$dataForm.'%']])
                ->join('espacos','reservas.idEsp','=','espacos.idEsp')
                ->select('*')
                ->distinct()
                ->get();


            /* Contacto de reserva Reservas  */
            $mesmoContacto=Reserva::where('contactoRes',$request->telefoneCli)->get();
            /*condição para verificar se as datas já existem na BD*/
                if (!empty($buscaDadosReserva[0])){
                    $dataPendente=$buscaDadosReserva[0]->dataEvento;
                    $SalaoBD=$buscaDadosReserva[0]->nomeEsp;
                }
                else{
                    $dataPendente=$reserva[0]->dataEvento;
                    $SalaoBD=$espacos[0]->nomeEsp;
                }   
            /*condição para verificar se as datas do form e da BD são iguais*/
                    
                    if (empty($buscaDadosSalao[0])){
                            return view('home',['espacos'=>$espacos,'SalaoBD'=>$SalaoBD,'nomeSalaoForm'=>$nomeSalaoForm,'dataPendente'=>$dataPendente],['agendamentos'=>$agendamentos,'dataPendente'=>$dataPendente,'dataForm'=>$dataForm,'fotos'=>$fotos],['planos'=>$planos]); 
                    }
                    elseif(($DataDoFormulario)<=($DataDeHoje)+2600000){
                            return redirect()->back()->with('Msgx','Detetamos algum problema na definição entre as datas de visita e a data do evento'); 
                    }
                    else {

                        if (!empty($buscaDadosSalao[0])) {
                            $idEsp=$buscaDadosSalao[0]->idEsp;
                            $dataAgendada=$buscaDadosSalao[0]->dataEvento;
                            

                            if ($dataAgendada==$dataForm && $idEsp==$idEsp) {
                                return redirect()->back()->with('Msgx','A Data configurada já tem evento agendado procure outra data ou salao'); 
                            }
                            elseif (count($mesmoContacto)>3){
                                return redirect()->back()->with('Msgx','Já tem muitas reservas pendente. consulte os dados dos seus eventos no seu email ou inicie sessão na area de clientes com usando seu email e contacto de telefone para senha');   
                            }                   
                                
                            else{ 
                                    /***** Salvar dados na tabela reserva ******/
                                        $espacos= Espaco::all();
                                        $ConfirmarReserva = new Reserva;
                                        $nomeEsp=$buscaDadosSalao[0]->nomeEsp;

                                        $ConfirmarReserva->nomeRes=$request->nomeCli;
                                        $ConfirmarReserva->contactoRes=$request->telefoneCli;
                                        $ConfirmarReserva->emailRes=$request->emailCli;
                                        $ConfirmarReserva->dataEvento=$request->dataEve;
                                        $ConfirmarReserva->reserva=$request->nomeCli;
                                        $ConfirmarReserva->tipoEve = $request->tipoEve;
                                        $ConfirmarReserva->numConv = $request->numConv;
                                        $ConfirmarReserva->servicos = $request->servicos;
                                        $ConfirmarReserva->idEsp=$idEsp;
                                        $ConfirmarReserva->dataVisita = $request->dataVi;
                                        
                                    
                                        /***** Salvar dados na tabela cliente ******/
                                        $NovoCliente= new Cliente;
                                        $NovoCliente->telefoneCli=$request->telefoneCli;
                                        $NovoCliente->nomeCli=$request->nomeCli;
                                        $NovoCliente->emailCli = $request->emailCli;
                                        $NovoCliente->nomeEsp = $nomeEsp;
                                        $NovoCliente->numConv=$request->numConv;
                                        $NovoCliente->dataEvento = $request->dataEve;
                                        $NovoCliente->nomeEve = $request->tipoEve;                                    
                                        $ConfirmarReserva->save();
                                        $NovoCliente->save();
                                        Session::put('email_reserva',$mesmoContacto);

                                        Mail::to(['pilukaeventos@gmail.com',$emailcli])->send(new message($request->all()));
                                        

                                        if (session('cliente_info')){
  
                                         return redirect(route('logout'))->with('Msgx','Reserva pendente. Inicia sessão para consultar os dados do seu evento ou consulte seu email');       
                                        }
                                        else{
                                              
                                            return redirect('logout')->with('Msgx','Reserva pendente. Inicia sessão para consultar os dados do seu evento usando o seu email e o numero de telefone como senha');   
                                        }
                            }
                                
                            }
                        
                        else{
                                return redirect()->back()->with('Msgx','Detetamos algum problema na definição entre as datas de visita e a data do evento ultima msgx'); 
                        }
                            
                    }

    }

     /** sobre a informação dos espacos do botão editar reservas por id */
     public function editarReserva(Request $request){
        if (session('user_info') || session('cliente_info')) {
        $id=$request->id;
        $idRes=$request->idRes;

/*Logica para consulta filtradas apartir do ID*/
        $servicos=Servico::where('idEsp',$id)
        ->join('fornecedores','servicos.idFor','=','fornecedores.idFor')
        ->get();;

            # vericar se o id corresponde a um salao no banco
        if (Espaco::where([['idEsp','=',$id]])->exists()){
        
            $salao=Espaco::where([['idEsp','=',$id]])->get();
        }
        else {$salao=Espaco::where(['idEsp',1])->get();
        } 
        # vericar se o salao tem planos associados
        if (Plano::where([['idEsp','=',$id]])->exists()) {
        
            $planos = Plano::where([['idEsp','=',$id]])->get();;
        }
        else {
            $planos = Plano::where([['idEsp',1]])->get();
        }
        if (Reserva::where('idRes',$idRes)->exists()) {
            $dadosReserva=Reserva::where('idRes',$idRes)
            ->join('espacos','reservas.idEsp','=','espacos.idEsp')
            ->select('*')
            ->get();

            $servicosSelect=$dadosReserva[0]->servicos;
        }
        else {
            return redirect()->back()->with('msgx','dados não encontrados na base de dados');
        }
         
        /*Logica de validação para mostrar fotos filtradas apartir do ID*/

        # vericar se o salao tem fotos associadas
        if ($fotos=Foto::where('idEsp','=',$id)->exists()) {
        
            $fotos=Foto::where('idEsp','=',$id)
                ->select('nomeImg')
                ->get();
         
        }
        else {
                $fotos=Foto::where('idEsp',1)
                    ->select('nomeImg')
                    ->get();
        } 


            return view('sobreespaco',['salao'=>$salao,'servicos'=>$servicos,'servicosSelect'=>$servicosSelect,'dadosReserva'=>$dadosReserva,'idRes'=>$idRes,'id'=>$id,'fotos'=>$fotos,'planos'=>$planos])->with('msg', 'Seja bem vindo!');         
        }
        else {
            return redirect(route('home'));
    }

    }
        public function update(Request $request){
            
            
            $idRes=$request->idRes;

            
            Reserva::where('idRes',$idRes)->update(['nomeRes'=>$request->nomeCli,'contactoRes'=>$request->telefoneCli,'emailRes'=>$request->emailCli,'dataEvento'=>$request->dataEve,'tipoEve'=>$request->tipoEve,'numConv'=>$request->numConv,'idEsp'=>$request->nomedoespaco,'servicos'=>$request->servicos,'dataVisita'=>$request->dataVi]);
            return redirect('/agendar');
        }            
    										

}
