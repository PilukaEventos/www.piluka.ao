@extends('layouts.adminLayout')
@section('title', 'Painel Administrativo - Eventos Agendados')
@section('content')
       
		<!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
					<h1>Painel Administrativo</h1>
					<ul class="breadcrumb">
						<li>
							<a href="#">Painel Administrativo</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="#">Agendados</a>
						</li>
					</ul>
				</div>
				<a href="#" class="btn">
					<i class='bx bxs-cloud-download' ></i>
					<span class="text">Download PDF</span>
				</a>
			</div>
     
            <!-- section table  -->
			<div class="table-data">
				<div class="order">
                <a href="/salao?id={{ session('fun_info')->idEsp}}#reserva" onclick="return confirm('Você será redirecionado para home na sessão de reserva do salão clica em OK para continuar')" class="btn">Novo Agendamento</a>
                    <h2 class="heading">Agendamentos Pendentes</h2>
                    <table>
                        <center>
                            <thead>
                        
                                <tr>
                                    <td>IDRESERVA</td>
                                    <td>&nbsp;&nbsp;NOME</td>
                                    <td>TELEFONE&nbsp;</td>
                                    <td>&nbsp;EMAIL</td>
                                    <td>DATAEVENTO&nbsp;&nbsp;&nbsp;</td>
                                    <td>&nbsp;&nbsp;&nbsp;CONVIDADOS&nbsp;&nbsp;</td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DATAVISITA</td> 
                                    <td>Ações</td>
                                </tr>
                            
                            </thead>
                        </center>
                            <tbody>
                            <tr>
                                @if (count($eventosPendentes) > 0)
                                    @foreach($eventosPendentes as $Res)
                                    <center>
                                        <tr>
                                            <td>{{$Res->idRes}}</td>
                                            <td>{{$Res->nomeRes}}</td>
                                            <td>{{$Res->contactoRes}}</td>
                                            <td>{{$Res->emailRes}}</td>
                                            <td>{{implode(",",$Res->servicos)}}</td>
                                            <td>{{$Res->dataEvento}}</td>
                                            <td>{{$Res->numConv}}</td>
                                            <td>{{$Res->dataVisita}}</td>
                                           
                                            <td>
                                                 <a href="#" id='$id' onclick="visUsuario($id)">
                                                   <span class="icon">
                                                        confirm<i class="bx bx-show-alt" style="color: #006400;"></i>
                                                    </span>
                                                </a>
                                               <!--?php
                                                    if (isset($_SESSION['id_fun']) || isset($_SESSION['id_forn'])) {
                                                        //verificando se é o usuario
                                                ?-->
                                                        |
                                                         <a href="agendar_editar?id={{$Res->idEsp}}&idRes={{$Res->idRes}}#reserva" onclick="return confirm('Você tem permissão para esta ação que deseja executar? se não sabe contacta um Administrador para ajudar-lo')">
                                                            <span class="icon">
                                                                    Editar<i class="bx bxs-edit-alt" style="color: #00FFFF;"></i>
                                                            </span>
                                                        </a>
                                                        |
                                                        <a href="#">
                                                            <span class="icon">
                                                                Deletar<i class="bx bxs-trash-alt" style="color: #8B0000;"></i>
                                                            </span>
                                                            <span class="title"></span>
                                                        </a>
                                                <!--?php
                                                    }elseif (isset($_SESSION['id_gerente']) || isset($_SESSION['id_admin'])) {
                                                ?->
                                                        |
                                                        <a href="./editar_espaco.php?id=<--?php echo $v['idEsp']; ?->">
                                                            <span class="icon">
                                                                <i class="bx bxs-edit-alt" style="color: #00FFFF;"></i>
                                                            </span>
                                                        </a>
                                                        |
                                                        <a href="#">
                                                            <span class="icon">
                                                                <i class="bx bxs-trash-alt" style="color: #8B0000;"></i>
                                                            </span>
                                                            <span class="title"></span>
                                                        </a>
                                                <--?php
                                                        }  
                                                ?-->     
                                            </td>
                                        </tr>
                                    </center>
                                    @endforeach
                                @else
                                    <p>Ainda Não Há Rtilizadores Registrados!</p>
                                @endif
                            </tr>
                                
                        </tbody>
                   </table>

                   <!-- section table  -->
			<div class="table-data">
				<div class="order">
                    <h2 class="heading">Eventos Agendados</h2><table>
                            <thead>
                                <tr>
                                    <td>CLIENTE</td>
                                    <td>TELEFONE</td>
                                    <td>EMAIL</td>
                                    <td>SERVIÇO</td>
                                    <td>ESPACO</td>
                                    <td>DATA EVENTO</td>
                                    <td>CONVIDADOS</td>
                                    <td><center>TIPO EVENTO</center></td>
                                    <td>ORÇAMENTO</td>
                                    {{-- <td><center>FUNCIONARIO</center></td> funcionario que confirmou --}}
                                    
                                </tr>
                            </thead>

                            <tbody>
                                
                                @if (count($eventos) > 0)
                                    @foreach($eventos as $ev)
                                
                                            <tr>
                                                <td>{{$ev->nomeCli}}</td>
                                                <td>{{$ev->telefoneCli}}</td>
                                                <td>{{$ev->emailCli}}</td>
                                                <td>{{$ev->servicos}}</td>
                                                <td>{{$ev->nomeEsp}}</td>
                                                <td>{{$ev->dataEvento}}</td>
                                                <td>{{$ev->numConv}}</td>
                                                <td>{{$ev->nomeEve}}</td>        
                                                <td>{{$ev->precoPla}}</td>
                                                {{--<td></td> nome do funcionario que confirmou o evento--}}
                                                
                                            </tr>
                                    @endforeach
                                @else
                                    <p>Ainda não há Agendamentos Registrados!</p>
                                @endif
                            </tbody>
                        </table><br><br>
                </div>
            </div>
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->
            
@endsection
