@extends('layouts.homeLayout')
@section('title', 'Sistema de Gestão de Salões de Eventos e Serviços - PILUKA')
@section('content')

    <!-- disponibilidade começa aqui -->
    <section class="disponibilidade" id="disponibilidade">
        <h1 class="heading"  data-tooltip="veja a disponibilidade da sua data desejada">disponibilidade</h1>

        <div class="row">
            <div class="hero">
                <form action="/" method="GET">
                    @csrf
                    <div class="rows" id="rowdisponibilidade">
                        <div class="input-group">
                                <input type="date" name="date" id="dataEvento" required>
                                <label for="dataEvento"> data do evento</label>
                        </div>
                        <div class="input-group">
                                <select name="nomeSalao" id="nomeSalao" class="input">
                                    <option value="0">Selecionar</option>
                                    @foreach($espacos as $e)
                                        <option value="{{$e->nomeEsp}}" {{old('nomeEsp') == $e->idEsp ? 'Selected' : ''}}>{{$e->nomeEsp}}</option>
                                    @endforeach
                                </select>
                                <label for="nomeSalao">Salão</label>
                        </div>
                    
                        <div class="input-group">
                            <input type="number" id="numconv" required>
                            <label for="numconv"> Nº de Convidados</label>
                        </div>
                    
                        <div class="input-group">
                            <input type="text" id="tipoEvento" required>
                            <label for="tipoEvento">tipo de Evento</label>
                        </div>
                    </div>

                    <center><button type="submit" class="btn"><i class="fas fa-paper-plane"></i>RESERVAR AGORA</button></center>
                </form>
            </div>
        </div>      
<!-- CONTENT -->

<div class="container-geral">

        <div id="container-category" class="container-category">
			
			<center>
				<div class="input-group">
					
						<input type="search" id="btnprincipalSearch" class="input-field" placeholder="Pesquisar um salao ou categoria...">
                        <div class="input-icon">
							<i class="fa-solid fa-magnifying-glass"></i>
						</div>
			</div>
			</center>
			
			<div id="conteiner-list" class="conteiner-list">
			<div class="rows">
				<nav id="categoria">
					<ul>
						<hr/>   
						<a href="/page_one?categoria=saloes"><li><h6>Salao</h6></li></a> &nbsp;&nbsp;
						<a href="/page_one?Categoria_de_servicos=musica"><li><h6>Musica</h6></li></a>&nbsp;&nbsp;&nbsp;
						<a href="/page_one?Categoria_de_servicos=comida"><li><h6>Bufé</h6></li></a>&nbsp;&nbsp;
						<a href="/page_one?Categoria_de_servicos=decoracao"><li><h6>Decoracao</h6></li></a>
						<hr/>
					</ul>
            </nav>
				</div>
				<ul class="items-menu">
				<li class="item">
					<input type="checkbox" id="btncategoria">
					<label for="btncategoria"><i class="fas fa-bars"></i></label>
				</li>
				<li class="item">
						<div class="content">
						<br>
						<label for="planos"><h3>Preços</h3></label>
							<div class="rows">
								<input type="text" class="input-preco" name="planos" placeholder="Kz">&nbsp;-&nbsp;
								<input type="text" class="input-preco" name="planos" placeholder="Eur">&nbsp;-&nbsp;
								<input type="text" class="input-preco" name="planos" placeholder="USD">
							</div>
					</li>
					
					<li class="item">
							<div class="content">
							<p><span>Boa Comida</span></p>
							<a href="/page_one?Categoria_de_servicos=comida">
							<p>
							<input type="checkbox" name="checkboxcategory" id="Catcozinhas" class="checkboxcategory">&nbsp;&nbsp;
									<label for="checkboxcategory">Restauracao</label>
							</p>
						</a>
						<a href="/page_one?Categoria_de_servicos=mariscos">
							<p>
								<input type="checkbox" name="checkboxcategory" class="checkboxcategory">&nbsp;&nbsp;
								<label for="checkboxcategory">Mariscos</label>
							</p>
						</a>
						<a href="/page_one?Categoria_de_servicos=rodizio">
							<p>
								<input type="checkbox" name="checkboxcategory" class="checkboxcategory">&nbsp;&nbsp;
								<label for="checkboxcategory">Rodizio</label>
							</p>
						</a>
						<a href="/page_one?Categoria_de_servicos=cofeitaria">
							<p>
								<input type="checkbox" name="checkboxcategory" class="checkboxcategory">&nbsp;&nbsp;
								<label for="checkboxcategory">Cofeitaria</label>
							</p>
						</a>
						<a href="/page_one?Categoria_de_servicos=bolos">
							<p>
								<input type="checkbox" name="checkboxcategory" class="checkboxcategory">&nbsp;&nbsp;
								<label for="checkboxcategory">Bolos</label>
							</p>
						</a>
						<a href="/page_one?Categoria_de_servicos=frutas">
							<p>
							<input type="checkbox" name="checkboxcategory" class="checkboxcategory">&nbsp;&nbsp;
								<label for="checkboxcategory">Frutas</label>
							</p>
						</a>
						<a href="/page_one?Categoria_de_servicos=kitutes">
							<p>
								<input type="checkbox" name="checkboxcategory"  class="checkboxcategory">&nbsp;&nbsp;
								<label for="checkboxcategory">kitutes</label>
							</p>
						</a>
							<br>

							<br>
							</div>
							<br>	
					</li>
					<li class="item">
							<div class="content">
							<p><span>Melhor Bebida</span></p>
							<a href="/page_one?Categoria_de_servicos=cocktail">
								<p>	
									<input type="checkbox" name="checkboxcategory" class="checkboxcategory">&nbsp;&nbsp;
									<label for="checkboxcategory">Cocktail</label>
								</p>
							</a>							
							<a href="/page_one?Categoria_de_servicos=serpentinas">
								<p>
									<input type="checkbox" name="checkboxcategory" class="checkboxcategory">&nbsp;&nbsp;
									<label for="checkboxcategory">Serpentinas</label>
								</p>
							</a>
							<a href="/page_one?Categoria_de_servicos=bebidamix">	
								<p>
									<input type="checkbox" name="checkboxcategory" class="checkboxcategory">&nbsp;&nbsp;
									<label for="checkboxcategory">Bebida Mix</label>
								</p>
							</a>
							<a href="/page_one?Categoria_de_servicos=garrafeiras">
								<p>
									<input type="checkbox" name="checkboxcategory" class="checkboxcategory">&nbsp;&nbsp;
									<label for="checkboxcategory">Garrafeiras</label>
								</p>
							</a>
							<a href="/page_one?Categoria_de_servicos=caseiras">
								<p>
									<input type="checkbox" name="checkboxcategory"  class="checkboxcategory">&nbsp;&nbsp;
									<label for="checkboxcategory">Caseiras</label>
								</p>
							</a>
							<br>
							</div>
							<br>	
					</li>
					<li class="item">
							<div class="content">
							<p><span>OUTROS</span></p>
							<a href="/page_one?Categoria_de_servicos=fotografias">	
								<p>
									<input type="checkbox" name="checkboxcategory" class="checkboxcategory">&nbsp;&nbsp;
									<label for="checkboxcategory">Fotografias</label>
								</p>
							</a>
							<a href="/page_one?Categoria_de_servicos=decoracao">	
								<p>
									<input type="checkbox" name="checkboxcategory" class="checkboxcategory">&nbsp;&nbsp;
									<label for="checkboxcategory">decoracao</label>
								</p>
							</a>
							<a href="/page_one?Categoria_de_servicos=musica">
								<p>
									<input type="checkbox" name="checkboxcategory" class="checkboxcategory">&nbsp;&nbsp;
									<label for="checkboxcategory">Dj e Musica</label>
								</p>
							</a>
							<a href="/page_one?Categoria_de_servicos=luzes">
								<p>
									<input type="checkbox" name="checkboxcategory" class="checkboxcategory">&nbsp;&nbsp;
									<label for="checkboxcategory">Luzes</label>
								</p>
							</a>
							<a href="/page_one?Categoria_de_servicos=seguranca">
								<p>
										<input type="checkbox" name="checkboxcategory"  class="checkboxcategory">&nbsp;&nbsp;
										<label for="checkboxcategory">Segurança</label>
								</p>
							</a>	
							<br>
							</div>
							<br>	
					</li>
					
				</ul>
			<ul class="items">
				
			<p>{{count($espacos)}} - Restultados encontrados</p>
				<div class="separador">
					<div class="separador-line"></div> Resultados da pesquisa<i class="fa-solid fa-magnifying-glass"></i>
				</div>
				@if(!empty($categoria))
					@foreach($servicos as $ser)
						<li class="item">
							<div class="item-image">
								<img src="/img/{{$ser->fotoCapa}}">
							</div>
							<div class="content-lists">
								<h3>
									{{$ser->nomeServ}}
								</h3>
								<p>
								<span>Fornecedor:</span> {{$ser->nomeFor}} <br>
								<span>Avaliação:</span>
										@for($i=0; $i<=3; $i++)<i class="fas fa-star"></i>@endfor
								
								<br>
								<span>Contactos:</span> {{$ser->telefoneServ}} - {{$ser->telefoneFor}}
								</p>
								<div class="row">
									<a href="/servico?id={{$ser->idServ}}" class="btn">Reservar Agora</a>
								</div>
								<p>
									<span>Descricao:{{$ser->descricaoServ}}</span></p>
							</div>
						</li>
						@endforeach
						<li id="resultadoNaoEncontrado">
								<h2><a href="/page_one?categoria=saloes">Ver saloes</a></h2>
								<h3 class="heading">NENHUM OUTRO RESULTADO ENCONTRADO...</h3>
							</li>
					@elseif(isset($semResultado))
					<li class="item">
								<div class="item-image">
									<img src="/img/logo.png">
								</div>
								<div class="content-lists">
									<h3>
										Piluka Eventos
									</h3>
									<p>
									<span>Localização:</span> Luanda, Luanda, Angola <br>
									<span>Avaliação:</span>
											@for($i=0; $i<=4; $i++)<i class="fas fa-star"></i>@endfor
									<br>
									<span>Contactos:</span> 924 098 432 - 913 874 000
									<br>
									<span>Email:</span> pilukaeventos@gmail.com
									</p>
									<div class="row">
										<a href="/sobre#contacto" class="btn">Reservar Agora</a>
									</div>
									<p>
										<span>Descricao:Parabéns podes ser o primeiro nesta categoria</span></p>
								</div>
							</li>			
							<li id="resultadoNaoEncontrado">
							<h2><a href="/page_one?categoria=saloes">Ver saloes</a></h2>
							<br><br>
								<h3 class="heading">NENHUM OUTRO RESULTADO ENCONTRADO...</h3>
							</li>
					@else
						@foreach($espacos as $esp)
						<li class="item">
								<div class="item-image">
									<img src="/img/espacos/{{$esp->fotoEsp}}">
								</div>
								<div class="content-lists">
									<h3>
										{{$esp->nomeEsp}}
									</h3>
									<p>
									<span>Localização:</span> {{$esp->moradaEsp}} <br>
									<span>Avaliação:</span>
											@for($i=0; $i<=3; $i++)<i class="fas fa-star"></i>@endfor
											
									<br>
									<span>Contactos:</span> {{$esp->telefoneEsp}} - {{$esp->telefoneAlternativo}}
									<br>
									<span>Email:</span> {{$esp->emailEsp}}
									</p>
									<div class="row">
										<a href="/salao?id={{$esp->idEsp}}" class="btn">Reservar Agora</a>
									</div>
									<p>
										<span>Descricao:{{$esp->descricaoEsp}}</span></p>
								</div>
							</li>			
							@endforeach
							<li id="resultadoNaoEncontrado">
								<h3 class="heading">NENHUM OUTRO RESULTADO ENCONTRADO...</h3>
							</li>
					@endif
					
				</ul>
			</div>
		 </div>
	</div>
		<script src="./js/scriptsearch.js"></script>
@endsection