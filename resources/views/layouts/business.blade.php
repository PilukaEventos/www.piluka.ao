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
  <h1></h1>
    <!-- MAIN -->
    <br><br>


	<section id="content-metricas">
		<center>
		

					<div class="sessaoMetricas">
				 		<div id="bloco4" class="card">
							<h1>cliques</h1>
							<p> Saudações a todos os nossos queridos amigos e publico em geral, é com grande satisfação que apresentamos o nosso projeto: PilukaEventos.
							criado Por, Paulo Epalanga e Sergio Reis, desenvolvemos o site piluka.ao, uma plataforma especialista em eventos.</p>
						</div>
						<div id="bloco5" class="card">
							<h1>visitas</h1>
							<p> Saudações a todos os nossos queridos amigos e publico em geral, é com grande satisfação que apresentamos o nosso projeto: PilukaEventos.
							criado Por, Paulo Epalanga e Sergio Reis, desenvolvemos o site piluka.ao, uma plataforma especialista em eventos.</p>
						</div>
						<div id="bloco6" class="card">
							<h1>sessoes</h1>
							<p> Saudações a todos os nossos queridos amigos e publico em geral, é com grande satisfação que apresentamos o nosso projeto: PilukaEventos.
							criado Por, Paulo Epalanga e Sergio Reis, desenvolvemos o site piluka.ao, uma plataforma especialista em eventos.</p>
						</div>			   
          			</div>
                   
				   <div class="sessaoEstatisticas">
						<div id="bloco1" class="card">
							@if (empty($eservaPendente))
							<h1>0</h1>
								<p> Saudações a todos os nossos queridos amigos e publico em geral, é com grande satisfação que apresentamos o nosso projeto: PilukaEventos.
								criado Por, Paulo Epalanga e Sergio Reis, desenvolvemos o site piluka.ao, uma plataforma especialista em eventos.</p>   
							@else
								<h1>{{count($eservaPendente)}}</h1>
								<p> Saudações a todos os nossos queridos amigos e publico em geral, é com grande satisfação que apresentamos o nosso projeto: PilukaEventos.
								criado Por, Paulo Epalanga e Sergio Reis, desenvolvemos o site piluka.ao, uma plataforma especialista em eventos.</p>   
							@endif
						
						</div>
						<div id="bloco2">
						@if (empty($eservaPendente))
							<h1>0</h1>
								<p> Saudações a todos os nossos queridos amigos e publico em geral, é com grande satisfação que apresentamos o nosso projeto: PilukaEventos.
								criado Por, Paulo Epalanga e Sergio Reis, desenvolvemos o site piluka.ao, uma plataforma especialista em eventos.</p>   
							@else
								<h1>{{count($eservaPendente)}}</h1>
								<p> Saudações a todos os nossos queridos amigos e publico em geral, é com grande satisfação que apresentamos o nosso projeto: PilukaEventos.
								criado Por, Paulo Epalanga e Sergio Reis, desenvolvemos o site piluka.ao, uma plataforma especialista em eventos.</p>   
							@endif
						
						</div>
						<div id="bloco3" class="card">
						@if (empty($eservaPendente))
							<h1>0</h1>
								<p> Saudações a todos os nossos queridos amigos e publico em geral, é com grande satisfação que apresentamos o nosso projeto: PilukaEventos.
								criado Por, Paulo Epalanga e Sergio Reis, desenvolvemos o site piluka.ao, uma plataforma especialista em eventos.</p>   
							@else
								<h1>{{count($eservaPendente)}}</h1>
								<p> Saudações a todos os nossos queridos amigos e publico em geral, é com grande satisfação que apresentamos o nosso projeto: PilukaEventos.
								criado Por, Paulo Epalanga e Sergio Reis, desenvolvemos o site piluka.ao, uma plataforma especialista em eventos.</p>   
							@endif
						
						</div>
					</div>
					
                   <!-- section table  -->
					<div id="bloco0">
						<!--******Grafico de linhas ******** -->
						<div id="graficoAlinha" width="800" height="200">
								SEM GRAFICO PARA MOSTRAR NO MOMENTO
						</div>
						<br>
						<div id="graficoAlinha" width="800" height="200">
								<h1>SEM GRAFICO PARA MOSTRAR NO MOMENTO</h1>
						</div>
						<!--****** fim do Grafico ******** -->
					</div>
	</center>
	</section>

	<section>
		
			<br>
			<div class="rows">
				<br>
				<center>
					<h1>WELCOME TO THE MANAGEMENT SYSTEM</h1>
					<P>YOU CAN LOOK FOR ANY CATEGORY DATAs OR PEOPLE NAME</P>
				</center>
				<br>
			</div>
								<br><br>
			<br>
			<br>
			
			<br><br>
			<br>
			<br>
		
	</section>
<!-- CONTENT -->
            
@endsection