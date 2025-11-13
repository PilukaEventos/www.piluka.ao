@extends('layouts.adminLayout')
@section('title', 'Painel Administrativo')
@section('content')

   <!-- MAIN -->

       <main>
			<div class="head-title">
				<div class="left">
                @if(session('Msgx'))
                    <script> alert(`{{session('Msgx')}}`)</script>
                @endif
					
					<ul class="breadcrumb">
						<li>
							<a href="/">Painel Administrativo</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="#">Inicio</a>
						</li>
                        <li>
							<a class="active" href="#">BEM VINDO @if(session('user_info')[0]->name)@endif</a>
						</li>
					</ul>
				</div>
				<a href="/gerarpdf" class="btn">
					<i class='bx bxs-cloud-download' ></i>
					<span class="text">Download PDF</span>
				</a>
			</div>
0
            <br><br><br>
			<ul class="box-info">
				<a href="/agendar">
					<li>
                    {{--         comentario               --}}
							<i class='bx bxs-calendar' ></i>
							<span class="text">
							<center>
									<h3>{{count($eventos)}}</h3>
									<p>Agendados</p>
								</center>
							</span>
				
					</li>
				</a>
                <a href="/agendar">
					<li>

                        
                    <i class='bx bxs-calendar' ></i>
							<span class="text">
								<center>
									<h3>{{count($eventosPendentes)}}</h3>
									<p>Pendentes</p>
								</center>
							</span>
				
					</li>
				</a>
				<a href="/realizados">
					<li>
                    
							<i class='bx bxs-detail' ></i>
							<span class="text">
								<center>
									<h3>0</h3>
									<p>Realizados</p>
								</center>
							</span>
					
					</li>
				</a>
				<a href="/funcionarios">
					<li>

							<i class='bx bxs-group' ></i>
							<span class="text">
								<center>
									<h3>{{count($funcionarios)}}</h3>
									<p>Funcionarios</p>
								</center>
							</span>

					</li>
				</a>
				<a href="/servicos">
					<li>
					
								</span>
								<i class='bx bxs-wrench' ></i>
								<span class="text">
									<center>
										<h3>{{count($Servicos)}}</h3>
										<p>Serviços</p>
									</center>
								</span>
						
					</li>
				</a>
                <a href="/home#opniao">
					<li>
					
							<i class='bx bxs-cool' ></i>
							<span class="text">
								<center>
									<h3>{{count($comentarios)}}</h3>
									<p>Comentarios</p>
								</center>
							</span>
					
					</li>
				</a>
			</ul>
         
		                
            </div>
<br><br>
            
            </div>
    </main>
    <!-- MAIN -->
<section id=content-metricas>
		@if(!empty($searchservico))
		<P>Pesquisou Por: {{$searchservico[0]->nomeCat}}</P>

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
                                    <h1>Encontre rapidamente os dados que você procura apartir da opção de pesquisar...</h1>
                                @endif
                            </tr>
                                
                        </tbody>
                   </table>

                   <!-- section table  -->
			
</section>
<!-- CONTENT -->
            
@endsection