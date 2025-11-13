@extends('layouts.adminLayout')
@section('title', 'Painel Administrativo - Salões')
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
						<a class="active" href="#">Servicos</a>
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
                <h2 class="heading">Servicos realizados neste espaco</h2>
                
                <div class="container-fluid">
                    <div class="row">
                        @if(session('msg'))
                            <p class="msg">{{session('msg')}}</p>
                      @endif
                    </div>
                </div> 
                 
                @yield('content')
                @if(session('user_info')[0]->tipo=="Gerente" || session('user_info')[0]->tipo=="Admin")
                <div class="cardHeader">
                    
                         
                            <a href="/servicos/novo" class="btn">novo servico</a>
                            <a href="/espaco/create_plano" class="btn">novo plano</a>
                            <a href="/servicos/associar_me" class="btn">associar-me a um espaco</a>
                        
                </div>
				@endif	
            </div>
        </div>
        <!-- section table eventos realizados  -->
        <tbody>
                            <tr>
                                @if (count($eventosRealizados) > 0)
                                    @foreach($eventosRealizados as $Real)
                                    <center>
                                        <tr>
                                            <td>{{$Real->idRes}}</td>
                                            <td>{{$Real->nomeRes}}</td>
                                            <td>{{$Real->contactoRes}}</td>
                                            <td>{{$Real->emailRes}}</td>
                                            <td>{{implode(",",$Res->servicos)}}</td>
                                            <td>{{$Real->dataEvento}}</td>
                                            <td>{{$Real->numConv}}</td>
                                            <td>{{$Real->dataVisita}}</td>
                                           
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
                                    <p>Ainda Não Há Eventos  Registrados Aqui!</p>
                                @endif
                            </tr>
                                
                        </tbody>
                   </table>

        </main>       
    
        <!--  -->
  
@endsection