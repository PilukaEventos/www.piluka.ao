{{--<!--
 Saudações a todos os nossos queridos amigos e publico em geral, é com grande satisfação que apresentamos o nosso projeto: PilukaEventos.
 criado Por, Paulo Epalanga e Sergio Reis, desenvolvemos o site piluka.ao, uma plataforma especialista em eventos.
 Nosso objetivo é facilitar a organização, divulgação e gestão de eventos e serviços articulados de forma prática e interativa.
 Através de uma navegação intuitiva, o site oferece soluções para organizadores, prestadores de serviços e participantes.
 Sérgio e Eu adotamos como tema "Inovação e resultados", estamos prontos para detalhar à vocês, os desafios que superamos, principais funcionalidades e metas futuras...
 Trabalhamos em equipe, com dedicação e foco na experiência do utilizador.
 Esperamos que o PilukaEventos se torne referência no setor e agradecemos pela atenção de todos e bom proveito.

 Contactos:
 PilukaEventos:975-963-454
 Paulo Epalanga: 929-080-952
 Sergio Reis: 921-528-794
 #INOVAÇÃO_E_RESULTADOS https://piluka.ao
  "
-->--}}


@extends('layouts.homeLayout')
@section('title', 'Sistema de Gestão de Salões de Eventos e Serviços - PILUKA')
@section('content')


    <!-- home -->
    <section class="home" id="home">

        <div class="swiper home-slider">

            <div class="swiper-wrapper">

                <div class="swiper-slide slide" style="background: url(./img/espacos/dancaafricana.png) no-repeat;">
                    <div class="content">
                        <h3>aqui é aonde os sonhos se tornam realidade</h3>
                        <a href="/page_one?categoria=salao" class="btn" id="salao"> visite as nossas ofertas</a>
                    </div>
                </div>

                <div class="swiper-slide slide" style="background: url(/img/espacos/decoracaozuka.jpeg) no-repeat;">
                    <div class="content">
                        <h3>aqui é aonde os sonhos se tornam realidade</h3>
                        <a href="/sobre#contacto" class="btn"> Enviar uma mensagem</a>
                    </div>
                </div>

                <div class="swiper-slide slide" style="background: url(/img/espacos/civil.jpg) no-repeat;">
                    <div class="content">
                        <h3>aqui é aonde os sonhos se tornam realidade</h3>
                        <a href="/page_one?categoria=salao" class="btn" id="salao"> visite as nossas ofertas</a>
                    </div>
                </div>

                <div class="swiper-slide slide" style="background: url(/img/espacos/3lus0.jpg) no-repeat;" >
                    <div class="content">
                        <h3>aqui é aonde os sonhos se tornam realidade</h3>
                        <a href="/sobre#contacto" class="btn"> Tornar-se parceiro</a>
                    </div>
                </div>

            </div>

            <div class="swiper-pagination"></div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-scrollbar"></div>
        </div>
        
    </section>
    <!-- end -->
        @if(session('Msgx'))
            <div class="Msgx">
                <center><p>{{session('Msgx')}}</p></center>
            </div>
        @endif
            <!-- TradingView Widget BEGIN -->


    <div class="tradingview-widget-container" href="https://www.facebook.com/noticiasdeangola.NA">

        <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-ticker-tape.js" async>
            {
            "symbols": [
            {
                "proName": "FOREXCOM:SPXUSD",
                "title": "S&P 500 Index"
            },
            {
                "proName": "FOREXCOM:NSXUSD",
                "title": "US 100 Cash CFD"
            },
            {
                "proName": "FX_IDC:EURUSD",
                "title": "EUR to USD"
            },
            {
                "proName": "FX_IDC:EURKWZ",
                "title": "EUR to KWZ"
            },
            {
                "proName": "BITSTAMP:BTCUSD",
                "title": "Bitcoin"
            },
            {
                "proName": "BITSTAMP:ETHUSD",
                "title": "Ethereum"
            }
            ],
            "showSymbolLogo": true,
            "isTransparent": false,
            "displayMode": "adaptive",
            "colorTheme": "light",
            "locale": "br"
            }
        </script>
    </div>

    <!-- TradingView Widget END -->
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
         
                    @if(isset($dataBD))
                           <script>
                                alert(' <p>A data escolhida: {{$dataBD}} , não está disponivel neste salão, por favor tente outra data ou salão.</p>');
                           </script>
                    
                    @elseif(isset($Msgxs))
                        <script>
                            alert('{{$Msgxs}}');
                        </script>   
                    @else
                        
                    @endif
                    
    </section>
    <!-- disponibilidade termina aqui -->

    <!-- saloes -->
    <section class="salao" id="salao">
    <a href="/page_one"><h1 class="heading"  data-tooltip="os nossos salões de eventos">salões</h1></a>
        <div class="swiper room-slider">
            <div class="swiper-wrapper">
                @if (empty($espacos))
                    <p>Ainda não há salões registrados aqui!</p>
                @else
                    @foreach ($espacos as $v)
                    <a href="/page_one">
                        <div class="swiper-slide slide">
                            
                            <div class="image">
                                    <img src="/img/espacos/{{$v->fotoEsp}}" alt="{{$v->nomeEsp}}">
                            </div>
                            
                                <div class="content"><br/>
                                <a href="/page_one"><h3>{{$v->nomeEsp}}</h3></a>
                                    <p>Localização: <span>{{$v->moradaEsp}}</span></p><br><br>
                                    <p>Contacto: <span>{{$v->telefoneEsp}}</span></p>
                                    <center><a href="/salao?id={{ $v->idEsp}}" class="btn">saiba mais</a></center>
                                </div>
                        </div>
                        </a>
			        @endforeach
                @endif
            </div>
            <!--div class="swiper-pagination"></div-->
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
    </section>
    <!-- end -->

    <!-- servicos começa aqui -->
    
    <section class="servicos" id="servicos">
        
    <!-- Categoria e pesquisa de servico começa aqui -->
    <form action="/">        
        <div class="search-container">
    <div id="search-box" class="search-box">
        
      <input type="text" name="searchservico" class="searchCat" onclick="search()" onchange="search()" onkeypress="search()" onkeyup="search()" onkeydown="search()" placeholder="Pesquise... Por categoria">      
    </div>
    <a class="search-btn btn" id="search-btn"><span><i class="fa-solid fa-magnifying-glass"></i></span></a>
  </div>
  </form>

  <!-- Categoria e pesquisa de servico termina aqui -->

  <!--  header servicos -->
  <section class="servicos" id="servicos">
    @if(!empty($searchservico))
        <P>Pesquisou Por: {{$searchservico[0]->nomeCat}}</P>
        <a href="/page_one?categoria=salao" id="salao"><h1 class="heading"  data-tooltip="os nossos serviços">serviços</h1></a>
        <div class="swiper room-slider">
            <div class="swiper-wrapper">
                @if (empty($Servicos[0]))
                    <center><h1 class="heading"  data-tooltip="os nossos serviços">Ainda não há servicos registrados aqui!</h1></center>
                @else
                    @foreach ($Servicos as $Serv)
                    
                        <div class="swiper-slide slide">
                            
                            <div class="image">
                                    <img src="/img/{{$Serv->fotoCapa}}" alt="{{$v->nomeEsp}}">
                            </div>
                            <div class="content"><br/>
                                <h3>{{$Serv->nomeServ}}</h3>
                                <p>Sobre:<span>{{$Serv->descricaoServ}}</span></p><br>
                                <p>Contacto:<span>{{$Serv->telefoneFor}}</span></p>
                                <center><a href="/servico?id={{ $Serv->idServ}}" class="btn">saiba mais</a></center>
                            </div>
                        </div>
			        @endforeach
                @endif
            </div>
            <!--div class="swiper-pagination"></div-->
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
        
    </section>

        
    @else
        <h1 class="heading"  data-tooltip="os nossos serviços">serviços</h1>
        <div class="swiper room-slider">
            <div class="swiper-wrapper">
                @if (empty($Servicos))
                    <p>Ainda não há servicos registrados aqui!</p>
                @else
                    @foreach ($Servicos as $Serv)
                    
                        <div class="swiper-slide slide">
                            
                            <div class="image">
                                    <img src="/img/{{$Serv->fotoCapa}}" alt="{{$v->nomeEsp}}">
                            </div>
                            <div class="content"><br/>
                                <h3>{{$Serv->nomeServ}}</h3>
                                <p>Sobre:<span>{{$Serv->descricaoServ}}</span></p><br>
                                <p>Contacto:<span>{{$Serv->telefoneFor}}</span></p>
                                <center><a href="/servico?id={{ $Serv->idServ}}" class="btn">saiba mais</a></center>
                            </div>
                        </div>
			        @endforeach
                @endif
            </div>
            <!--div class="swiper-pagination"></div-->
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
        @endif
    </section>
    <!-- servicos termina aqui -->

    <!-- opniao -->
    <h1 class="heading"  data-tooltip="os comentários dos nossos clientes">análise dos clientes</h1>
    <section class="opniao" id="opniao">
         
        <!--sessão dos comentarios-->
   
        <div class="swiper opniao-slider">
   
            <div class="swiper-wrapper">
              @foreach($Comentarios as $c) 
                    <div class="swiper-slide slide">  
                           
                        <div class="user">
                            <img src="img/{{$c->nomeImg}}" alt="analise dos clientes">
                            <div class="user-info">
                                <h3>{{$c->nomeCom}}</h3>
                                <div class="icon">
                                    <a href="#"> <i class="fas fa-calender"></i>
                                    {{$c->dia}} 
                                    <br>
                                    {{$c->horario}}</a>
                                </div>
                                <div class="stars">
                                    @for($i=0; $i < $c->estrelas ; $i++)  
                                        <i class="fas fa-star"></i>
                                    @endfor
                                </div>
                            </div>
                        </div>
                        <i class="fas fa-quote-left"></i>
                        <p>O Salão {{$c->nomeEsp}} é {{$c->comentario}}</p>
                        <i class="fas fa-quote-right"></i>
                    
                    </div>
                @endforeach
            </div>
      
            </div>

        <div class="swiper-pagination"></div>
        <!--div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div-->
        

    </section>
    <!-- end -->
               
@endsection