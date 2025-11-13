@extends('layouts.homeLayout')
@section('title','SOBRE')
@section('content')
    <!--************ sobre **************-->
    <section class="sobre" id="sobre">
        <h1 class="heading"  data-tooltip="um pouco sobre nós">sobre nós</h1>

        <div class="row">
            <div class="image">
                <img src="./img/dancing2.png" alt="Piluka">
            </div>
            <div class="content">
                <p> Bem-vindo à Piluka Eventos! Criada em 2023, somos uma empresa dinâmica e inovadora de organização de eventos, que elimina o estresse de planejar suas ocasiões especiais. Seja uma festa de aniversário, evento corporativo, casamento ou qualquer outro momento marcante, a Piluka Eventos está aqui para proporcionar a você uma experiência inesquecível e sem complicação. Nossa plataforma online oferece uma ampla variedade de serviços, desde catering e decoração até música e bebidas, para que você encontre tudo o que precisa para criar a atmosfera perfeita e alinhar expectativa a realidade.</p>
            </div>
        </div>

    </section>
    <div>
    
        <!--************** objectivos ***********-->
<center>
        <section >
        <div class="objetivos">
            <div class="rows">
            <div class="content">
                <h6 class="card_title">MISSÃO</h6>
            
                
                    <p>Nossa equipe trabalha de perto com cada cliente, garantindo que todos os detalhes sejam cuidados para que você possa aproveitar seu evento ao máximo. Desde a escolha do local até a seleção do serviço de catering ou a definição da decoração, nós cuidamos de tudo. Nosso objetivo é dar vida à sua visão de uma maneira que supere suas expectativas.</p>
            
                <h6 class="card_title">VISÃO</h6>
            
                <p> A Piluka.ao é uma plataforma especializada, comprometida em entregar serviços de alta qualidade e construir relacionamentos duradouros com clientes e parceiros. Conectamos prestadores de serviços confiáveis à salões de eventos e alinhamos as perspectivas dos clientes à uma realidade que parece surreal. Exploramos muitos outros aspectos do sector de eventos  e garantimos que estes sejam tratados de forma profissional e cuidadosa.</p>
            
                <h6 class="card_title">VALORES</h6>
            
                <p>Nossa equipe trabalha para dar vida à sua visão de uma maneira que supere suas expectativas. Para que isso aconteça é necessario ter valores como: O respeito com os parceiros e outros colaboradores, o comprometimento com os clientes, a ética no trabalho e responsabilidade social.</p>
            </div>
        </div>
    </section>
 <!--************** Staff **************-->
 <section class="staff" id="staff">
        <h1 class="heading"  data-tooltip="a equipa do piluka">staff</h1>
        <div class="filterable_cards">
            <div class="card">
                <img src="./img/perfil.png" alt="Paulo">
                <div class="card_body">
                    <h6 class="card_title">Paulo Epalanga</h6>
                    <a class="card_text"><i class="fas fa-envelope "></i> bartolome.epalanga@piluka.com <br>
                    <i class="fas fa-phone "> </i> +244 929 080 952</a>
                    <center><p class="card_text">Fundador</p></center>
                </div>
            </div>

            <div class="card">
                <img src="./img/perfil.png" alt="Sérgio">
                <div class="card_body">
                    <h6 class="card_title">Sérgio dos Santos Reis</h6>
                    <a class="card_text"><i class="fas fa-envelope "> </i> sergioreis@piluka.com <br>
                    <i class="fas fa-phone "></i> +244 921 528 794</a>
                    <center><p class="card_text">Co-Fundador.</p></center>
                </div>
            </div>
        </div>
    </section>

   <!--************** perguntas **************-->
   <section class="perguntas" id="perguntas">

        <h1 class="heading"  data-tooltip="as perguntas mais frequentes">perguntas</h1>
        <div class="row">
            <div class="content">
                <div class="box active">
                <h3>Como participar do projecto Piluka Eventos?</h3>
                <p>Há três maneiras de participar deste projecto: organizar um evento, ser prestador de serviço qualificado ou possuir um espaco de eventos para cadastrar na plataforma e fazer a gestão do mesmo.</p>
                </div>

                <div class="box">
                <h3>Posso fazer e receber pagamentos apartir deste site?</h3>
                <p>Não configuramos uma sessão de pagamentos automaticos, porque devido a complexidade de se realizar um evento é necessaria uma comprovação da pessoa física para acertar com detalhes e alinhar as expectativas.</p>
                </div>

                <div class="box">
                <h3>Porquê eu devo confiar nos fornecedores de serviços e salões registados aqui ?</h3>
                <p>Uma solução para estabelecer a confiança é trabalhar com informações verdadeiras e previamente verficadas, assim mantemos a comunicação e recebemos feedbacks de todos os participantes do sistema.</p>
                </div>

                <div class="box">
                <h3>Em caso de um agendamento apartir deste site, consigo selecionar os serviços todos que preciso para a minha festa?</h3>
                <p>No formulario reservar que aparece quando escolhe um salão, é possivel selecionar alguns serviços básicos como musica, bebidas, decoracao e buffet, ao desmarcar um destes automaticamente entendemmos que não irá precisar deste serviço no seu evento ou já tem algum outro fornecedor para o ajudar. </p>
                </div>

                <div class="box">
                <h3>Como criar uma conta?</h3>
                <p>Para se tornar cliente basta fazer uma reserva e a conta cria automaticamente, enviamos em seguida informações de login para seu email, por isso é importante passar dados verdadeiros. Para outro tipo de conta pode enviar uma mensagem apartir do formulario de contacto abaixo.</p>
                </div>
            </div>
        </div>
    </section>

    <!--************ contacto **************-->
    <section class="contacto" id="contacto">
        <h1 class="heading"  data-tooltip="entre em contacto para mais informações">contacto</h1>

        <div class="row">
            <div class="hero">
                <form method="POST" action="{{route('sent_email')}}" enctype="multipart-form-data">
                @csrf
                        <div class="input-group">
                            <input type="text" name="nomecompleto" id="nomecompletomsg" required>
                            <label for="nome"><i class="fas fa-user"></i> Nome</label>
                        </div>
                    <div class="rows">
                        <div class="input-group">
                            <input type="text" name="telefonemsg" id="numeromsg" required>
                            <label for="numero"><i class="fas fa-phone"></i> Contacto</label>
                        </div>
                    
                        <div class="input-group">
                            <input type="text" name="emailmsg" id="emailmsg" required>
                            <label for="email"><i class="fas fa-envelope"></i> Email</label>
                        </div>
                    </div>
                     <div class="input-group">
                        <textarea id="mensagem" name="mensagem" rows="7" required></textarea>
                        <label for="mensagem"><i class="fas fa-comments"></i> A sua opinião</label>
                    </div>
                    <center><button type="submit" class="btn"><i class="fas fa-paper-plane"></i> SUBMIT</button></center>
                </form>
            </div>
        </div>
    </section>


@endsection