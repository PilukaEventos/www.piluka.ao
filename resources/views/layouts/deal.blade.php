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
								<i class='bx bxs-wrench'></i>
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
					
							<i class='bx bxs-cool'></i>
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
  
            </div>  
    
    </main>
  
    <!-- MAIN -->
    <br><br>


<section id="content-metricas">
		<center>
			@if(!empty($searchservico))
			
			<!-- section table  -->
			<div class="table-data">
				<div class="order">
            	   <a href="/salao?id={{ session('fun_info')->idEsp}}#reserva" onclick="return confirm('Você será redirecionado para home na sessão de reserva do salão clica em OK para continuar')" class="btn">Novo Agendamento</a>
				   <br><br><hr/>
                    <h2 class="heading">Resultados encontrados Por: {{$categoriaServicos}} </h2>
					<hr/><br><br>
                    <table>
						    
						@if (empty($Servicos))
							<p>Ainda não há servicos registrados aqui!</p>
						@else
						<center>
							<thead>
								<tr>
									<td>FORNECEDOR</td>
									<td>TELEFONE</td>
									<td>TELEFONE DE SERVICO</td>
									<td><center>EMAIL</center></td>
									<td><center>NIF</center></td>
									<td><center>DESCRICAO</center></td>
									<td>ACÇÕES</td>
								</tr>
							</thead>
						</center>
							@foreach ($Servicos as $sv)
								
									<tr>
										<center>
                                            <td>{{$sv->nomeServ}}&nbsp;&nbsp;</td>
											
                                            <td>&nbsp;&nbsp;{{$sv->telefoneFor}}</td>
											
											<td><center>{{$sv->telefoneServ}}</center></td>
                                            
                                            <td>{{$sv->emailFor}}</td>
                                            <td>{{$sv->nif}}</td>
                                            <td>{{$sv->descricaoServ}}</td>
                                            <td>
                                                 <a href="#" id='$id' onclick="visUsuario($id)">
                                                   <span class="icon">
                                                        <i class="bx bx-show-alt" style="color: #006400;"></i>
                                                    </span>
                                                </a>                                               
                                                    @if(session('fun_info') || session('user_info'))
                                                        |
                                                        <a href="/servicos_editar?id={{$sv->idServ}}">
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
                                                    @endif
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
										</center>
                                        </tr>
								
							@endforeach
						@endif
                    
                   </table>
				                      <br><br>
                   <br>
				   <br>
				   
                   <br><br>
                   <br>
				   <br>
				   
          
                   @else
                   <br>
				   
					<div class="rows">
						<br>
							<h1>WELCOME TO THE MANAGEMENT SYSTEM</h1>
							<P>YOU CAN LOOK FOR ANY CATEGORY DATAs OR PEOPLE NAME</P>
						<br>
					</div>
                                       <br><br>
                   <br>
				   <br>
				   
                   <br><br>
                   <br>
				   <br>
				   
          
        @endif
                   <!-- section table  -->
			</center>

		
</section>
<!-- CONTENT -->
            
@endsection