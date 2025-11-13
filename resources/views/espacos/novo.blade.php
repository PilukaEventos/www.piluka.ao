@extends('layouts.adminLayout')
@section('title', 'Painel Administrativo - Novo espaco')
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
						<a class="active" href="#">Novo Salão</a>
					</li>
				</ul>
			</div>
			<a href="#" class="btn">
				<i class='bx bxs-cloud-download' ></i>
				<span class="text">Download PDF</span>
			</a>      
            @if(session('msg'))
            <br>
            {{session('msg')}}
            @endif
		</div>

     @if(!empty($editarSalao))
     @foreach($salao as $detalhesSalao)
     <div class="novoReg">
            <div class="row">
                <div class="hero">
                    <form method="POST" action="/espaco_update_info?idSalao={{$detalhesSalao->idEsp}}" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <h1 class="heading">Atualizar info do salão</h1>
 
                        <div class="input-group">
                            <input type="file" id="foto"  name="foto"  class="from-control-file">
                            <!--label for="foto">Foto Salão:</label-->
                        </div>
                        
                        <div class="input-group">
                            <input type="text" name="nomeEsp" id="nomeSalao" value="{{$detalhesSalao->nomeEsp}}" >
                            <label for="nomeEsp">Nome:</label>
                        </div>

                        <div class="rows">
                            <div class="input-group">
                                <input type="text" name="telefoneEsp" id="telefoneSalao" value="{{$detalhesSalao->telefoneEsp}}" maxlength="20">
                                <label for="telefoneEsp">telefone:</label>
                            </div>
                            




                            <div class="input-group">
                                <input type="text" name="telefoneAlternativo" id="telefoneSalao" value="{{$detalhesSalao->telefoneAlternativo}}" maxlength="20">
                                <label for="telefoneAlternativo">telefone Alternativo:</label>
                            </div>

                            <div class="input-group">
                                <input type="email" name="emailEsp" id="emailSalao" value="{{$detalhesSalao->emailEsp}}" maxlength="100" >
                                <label for="emailEsp">emailSalao:</label>
                            </div>
                            
                        </div>
                        <div class="rows">
                        <div class="input-group">
                            <input type="number" name="limitePax" id="numConv" maxlength="40" >
                            <label for="limitePax">Limite de Convidados:</label>
                        </div>  
                        <div class="input-group">
                                <input type="text" name="moradaEsp" id="moradaSalao" value="{{$detalhesSalao->moradaEsp}}" maxlength="80" >
                                <label for="moradaEsp">Cidade:</label>
                            </div>
                            <div class="input-group">
                                <input type="text" name="moradaSalao" id="moradaSalao" value="Luanda"  >
                                <label for="moradaSalao">Municipio:</label>
                            </div>
                        </div>
                        <div class="input-group">
                            <textarea name="descricaoEsp" id="sobreSalao" maxlength="100" rows="7" >{{$detalhesSalao->descricaoEsp}}</textarea>
                            <label for="descricaoEsp">Sobre:</label>
                        </div>
                        

                        <div class="rows">
                          
                            <div class="input-group">
                                <input type="text" name="redes" id="redesSalao" maxlength="40" >
                                <label for="redes">redesSalao Sociais:</label>
                            </div>
                        </div>
                        <center>
                            <div>
                              
                                <button value="REGISTRAR" class="btn" ><i class="fas fa-paper-plane">Atualizar agora</i></button>
                            </div>
                        </center>
                    </form>
                </div>
            </div>
        </div>
        @endforeach
     @else
        <div class="novoReg">
            <div class="row">
                <div class="hero">
                    <form method="POST" action="/espaco_create" enctype="multipart/form-data">
                        @csrf
                        <h1 class="heading">Registrar um novo salão</h1>
 
                        <div class="input-group">
                            <input type="file" id="foto" name="foto" class="from-control-file" required>
                            <!--label for="foto">Foto Salão:</label-->
                        </div>
                        
                        <div class="input-group">
                            <input type="text" name="nomeSalao" id="nomeSalao" maxlength="40" required>
                            <label for="nomeSalao">Nome:</label>
                        </div>

                        <div class="rows">
                            <div class="input-group">
                                <input type="text" name="telefoneSalao" id="telefoneSalao" maxlength="40" required>
                                <label for="telefoneSalao">telefone:</label>
                            </div>
                            <div class="input-group">
                                <input type="text" name="AlttelefoneSalao" id="telefoneSalao" maxlength="40" required>
                                <label for="AlttelefoneSalao">telefone Alternativo:</label>
                            </div>

                            <div class="input-group">
                                <input type="emailSalao" name="emailSalao" id="emailSalao" maxlength="40" required>
                                <label for="emailSalao">emailSalao:</label>
                            </div>

                            
                        </div>
                        <div class="rows">
                        <div class="input-group">
                            <input type="number" name="numConv" id="numConv" maxlength="40" required>
                            <label for="numConv">Capacidade max de PAX:</label>
                        </div>  
                        <div class="input-group">
                                <input type="text" name="moradaSalao" id="moradaSalao" maxlength="80" required>
                                <label for="moradaSalao">Cidade:</label>
                            </div>
                            <div class="input-group">
                                <input type="text" name="moradaSalao" id="moradaSalao" maxlength="80" required>
                                <label for="moradaSalao">Municipio:</label>
                            </div>
                        </div>
                        <div class="input-group">
                            <textarea name="sobreSalao" id="sobreSalao" maxlength="100" rows="7" required></textarea>
                            <label for="sobreSalao">Sobre:</label>
                        </div>
                        

                        <div class="rows">
                          
                            <!--div class="input-group">
                                <input type="text" name="redesSalao" id="redesSalao" maxlength="40" required>
                                <label for="redesSalao">redesSalao Sociais:</label>
                            </div-->
                        </div>
                        <center>
                            <div>
                              
                                <button value="REGISTRAR" class="btn" ><i class="fas fa-paper-plane">REGISTRAR</i></button>
                            </div>
                        </center>
                    </form>
                </div>
            </div>
        </div>
    @endif
    </main>
                    
@endsection