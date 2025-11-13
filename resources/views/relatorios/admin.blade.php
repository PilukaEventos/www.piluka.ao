
   <!-- MAIN -->
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Piluka.ao</title>
</head>
<body>
    <style>
        *{
            clear:both;
            margin:0;
            padding: 1.2rem;
            font-size:10pt;
            color:#8B0000;
            
        }
        body{
            font-size:10pt;
            background:whitesmoke;
            color:#8B0000;
            box-sizing:border-box;
            padding: 1.2rem;
        }
       #imgLogo{
            background-image:url('./img/dancing.ico');
        }

        tr{
            background:#F9F9F9;
            max-height:5rem;
        }
        td{
            background:#F9F9F9;
            max-height:5rem;
        }
        .table-data, .table-data-first{
            box-sizing:border-box;
            justify-content:center;
            text-align:justify;
        }
        .table-data-first .order thead tr td{
            font-size:0.4em;
        }
        .table-data-first .order tbody tr td{
            font-size:0.46em;
        }
        .table-data .order thead tr td{
            font-size:0.7em;
        }
        .table-data .order tbody tr td{
            font-size:0.7em;
        }
    </style>
   <img src="./img/dancing.ico" id="imgLogo" alt="" srcset="">
   <table>
			<tr class="box-info">
				<a href="/agendar">
					<td>
							<center>
                                <p>Agendados</p>
								<h3>{{count($eventos)}}</h3>
							</center>
					</td>
				</a>
                <a href="/agendar">
					<td>                       
                    <i class='bx bxs-calendar' ></i>
							<span class="text">
								<center>
								<p>Pendentes</p>	
                                <h3>{{count($eventosPendentes)}}</h3>
								</center>
							</span>
				
					</td>
				</a>
				<a href="/reatdzados">
					<td>
							<i class='bx bxs-detail' ></i>
							<span class="text">
								<center>
								<p>Reatdzados</p>	
                                <h3>0</h3>
								</center>
							</span>
					
					</td>
				</a>
                </tr>
                <tr>
				<a href="/funcionarios">
					<td>

							<i class='bx bxs-group' ></i>
							<span class="text">
								<center>
								<p>Funcionarios</p>	
                                <h3>{{count($funcionarios)}}</h3>
								</center>
							</span>

					</td>
				</a>
				<a href="/servicos">
					<td>
					
								</span>
								<i class='bx bxs-wrench' ></i>
								<span class="text">
									<center>
									<p>Serviços</p>	
                                    <h3>{{count($Servicos)}}</h3>
									</center>
								</span>
						
					</td>
				</a>
                <a href="/comentarios">
					<td>
					
							<i class='bx bxs-cool' ></i>
							<span class="text">
								<center>
								<p>Comentarios</p>	
                                <h3>{{count($comentarios)}}</h3>
								</center>
							</span>
					
					</td>
				</a>
    </tr>
         </table>
			<!-- section table  -->
			<div class="table-data-first">
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
                                    <td>TIPO EVENTO</td>
                                    <td>ORÇAMENTO</td>
                                    <td>FUNCIONARIO</td>
                                    
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
                                                <td>{{$ev->nomeCli}}</td>
                                                
                                            </tr>
                                    @endforeach
                                @else
                                    <p>Ainda não há Agendamentos Registrados!</p>
                                @endif
                            </tbody>
                        </table><br><br>

         
					<h2 class="heading">Salões</h2>
                    <table>
                        <thead>
                            <tr>
                                <td>&nbsp;ID</td>
                                <td>SALÂO</td>
                                <td>TELEFONE</td>
                                <td>EMAIL</td>
                                <td>REDES</td>
                                <td>LOCALIZAÇÃO</td>
                                <td>&nbsp;Nº MAX</td>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                @if(count($espacos) > 0)
                                    @for($i=0; $i < 3; $i++)
                                    
                                        <tr>
                                            <td>{{$espacos[$i]->idEsp}}</td>
                                            <td>{{$espacos[$i]->nomeEsp}}</td>
                                            <td>{{$espacos[$i]->telefoneEsp}}</td>
                                            <td>{{$espacos[$i]->emailEsp}}</td>
                                            <td>{{$espacos[$i]->redes}}</td>
                                            <td>{{$espacos[$i]->moradaEsp}}</td>
                                            <td>3000</td>

                                        </tr>
                                    @endfor
                                @else
                                    <p>Ainda não há Salões Registrados!</p>
                                @endif
                            </tr>
                                
                        </tbody>
                    </table><br><br>

           
                    <h2 class="heading">Serviços</h2>
                    <table>
                        <thead>
                            <tr>
                                <td>FORNECEDOR</td>
                                <td>TELEFONE</td>
                                <td>EMAIL</td>
                                <td>SERVIÇO</td>
                                <td>CATEGORIA</td>
                                <td>ACÇÕES</td>
                            </tr>
                        </thead>

                        <tbody>

                        </tbody>
                    </table>
                    <br>
                    <br>

                    <h2 class="heading">Eventos Realizados</h2>
                    <table>
                        <thead>
                            <tr>
                                <td>NOME</td>
                                <td>ESPAÇO</td>
                                <td>CONVIDADOS</td>
                                <td>PARCEIRO</td>
                                <td>TIPO</td>
                                <td>DATA EVENTO</td>
                                <td>AÇÔES</td>
                            </tr>
                        </thead>

                        <tbody>
                        </tbody>
                    </table><br><br>  

                    <h2 class="heading">Clientes</h2>
                    <table>
                        <thead>
                            <tr> 
                                <td>CLIENTE</td>
                                <td>EMAIL</td>
                                <td>TELEFONE</td>
                                <td>ACÇÕES</td>
                            </tr>
                        </thead>

                        <tbody>
                        </tbody>
                    </table><br><br>

                    <h2 class="heading">Usuarios</h2>
                    <table>
                        <thead>
                            <tr>
                                <td>USUARIO</td>
                                <td>EMAIL</td>
                                <td>NIVEL</td>
                                <td>ACÇÕES</td>
                            </tr>
                        </thead>

                        <tbody>
                        </tbody>
                    </table><br><br>
					
					<h2 class="heading">Comentarios</h2>
                    <table>
                        <thead>
                            <tr>
                                <td>CLIENTE</td>
                                <td>NOME Espaço</td>
                                <td>COMENTARIO</td>
                                <td>DATA</td>
                                <td>HORA</td>
                                <td>ESTRELAS</td>
                                <td>ACÇÕES</td>
                            </tr>
                        </thead>

                        <tbody>
                        </tbody>
                    </table><br><br>

                    <h2 class="heading">Fornecedores</h2>
                    <table>
                        <thead>
                            <tr>
                                <td>FORNECEDOR</td>
                                <td>TELEFONE</td>
                                <td>EMAIL</td>
                                <td>ACÇÕES</td>
                            </tr>
                        </thead>

                        <tbody>

                    </tbody>
                    </table><br><br>

                    <h2 class="heading">Funcionarios</h2>
                    <table>
                        <thead>
                            <tr>
                                <td>FUNCIONARIO</td>
                                <td>DATA NASCIMENTO</td>
                                <td>MORADA</td>
                                <td>TELEFONE</td>
                                <td>EMAIL</td>
                                <td>DATA INGRESSO</td>
                                <td>CARGO</td>
                                <td>FUNÇÃO</td>
                                <td>ACÇÕES</td>
                            </tr>
                        </thead>

                        <tbody>

                    </tbody>
                    </table><br><br>

                    <h2 class="heading">Outros Dados</h2><br>
                    <h2 class="heading">Categorias</h2>
                    <table>
                        <thead>
                            <tr>
                                <td>CATEGORIA</td>
                                <td>DESCRIÇÃO</td>
                                <td>ACÇÕES</td>
                            </tr>
                        </thead>

                        <tbody>
                            <!--?php 
                                if (count($servicos) > 0) {
                                    foreach($servicos as $v){
                            ?-->
                                        <tr>
                                            <td><!--?php echo $v['nomeCat']; ?--></td>
                                            <td><!--?php echo $v['descricaoCat']; ?--></td>
                                            <td>
                                                    <!--?php
                                                        if (isset($_SESSION['id_fun']) || isset($_SESSION['id_forn'])) {
                                                            //verificando se é o usuario
                                                    ?-->
                                                            <a href="#">
                                                                <span class="icon">
                                                                    <i class="bx bxs-edit-alt" style="color: #00FFFF;"></i>
                                                                </span>
                                                            </a>
                                                            |
                                                            <a href="#">
                                                                <span class="icon">
                                                                    <i class="bx bxs-trash-alt" ></i>
                                                                </span>
                                                                <span class="title"></span>
                                                            </a>
                                                    <!--?php
                                                        }elseif (isset($_SESSION['id_gerente']) || isset($_SESSION['id_admin'])) {
                                                    ?>
                                                            <a href="./editar_servico.php?id=$id">
                                                                <span class="icon">
                                                                    <i class="bx bxs-edit-alt" style="color: #00FFFF;"></i>
                                                                </span>
                                                            </a>
                                                            |
                                                            <a href="#">
                                                                <span class="icon">
                                                                    <i class="bx bxs-trash-alt" ></i>
                                                                </span>
                                                                <span class="title"></span>
                                                            </a>
                                                    <-?php
                                                            }  
                                                    ?-->     
                                                </td>
                                        </tr>
                            <!--?php   }
                                }else {
                                    echo "Ainda não há Categorias Registradas!";
                                }
                            ?-->
                        </tbody>
                    </table><br><br>

                    <h2 class="heading">Cargos</h2>
                    <table>
                        <thead>
                            <tr>
                                <td>CARGO</td>
                                <td>DESCRIÇÃO</td>
                                <td>ACÇÕES</td>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                            <!--?php 
                                if (count($func) > 0) {
                                    foreach($func as $v){
                            ?-->
                                        <tr>
                                            <td><!--?php echo $v['nomeCargo']; ?--></td>
                                            <td><!--?php echo $v['descricaoCargo']; ?--></td>
                                            <td>
                                                    <!--?php
                                                        if (isset($_SESSION['id_fun']) || isset($_SESSION['id_forn'])) {
                                                            //verificando se é o usuario
                                                    ?-->
                                                            <a href="#">
                                                                <span class="icon">
                                                                    <i class="bx bxs-edit-alt" style="color: #00FFFF;"></i>
                                                                </span>
                                                            </a>
                                                            |
                                                            <a href="#">
                                                                <span class="icon">
                                                                    <i class="bx bxs-trash-alt" ></i>
                                                                </span>
                                                                <span class="title"></span>
                                                            </a>
                                                    <!--?php
                                                        }elseif (isset($_SESSION['id_gerente']) || isset($_SESSION['id_admin'])) {
                                                    ?>
                                                            <a href="./editar_servico.php?id=$id">
                                                                <span class="icon">
                                                                    <i class="bx bxs-edit-alt" style="color: #00FFFF;"></i>
                                                                </span>
                                                            </a>
                                                            |
                                                            <a href="#">
                                                                <span class="icon">
                                                                    <i class="bx bxs-trash-alt" ></i>
                                                                </span>
                                                                <span class="title"></span>
                                                            </a>
                                                    <-?php
                                                            }  
                                                    ?-->     
                                                </td>
                                        </tr>
                            <!--?php   }
                                }else {
                                    echo "Ainda não há Cargos Registrados!";
                                }
                            ?-->
                            </tr>
                                
                        </tbody>
                    </table><br><br>


                    <h2 class="heading">Funções</h2>
                    <table>
                        <thead>
                            <tr>
                                <td>FUNÇÂO</td>
                                <td>DESCRIÇÃO</td>
                                <td>ACÇÕES</td>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                            <!--?php 
                                if (count($func) > 0) {
                                    foreach($func as $v){
                            ?-->
                                        <tr>
                                            <td><!--?php echo $v['nomeFuncao']; ?--></td>
                                            <td><!--?php echo $v['descricaoFuncao']; ?--></td>
                                            <td>
                                                    <!--?php
                                                        if (isset($_SESSION['id_fun']) || isset($_SESSION['id_forn'])) {
                                                            //verificando se é o usuario
                                                    ?-->
                                                            <a href="#">
                                                                <span class="icon">
                                                                    <i class="bx bxs-edit-alt" style="color: #00FFFF;"></i>
                                                                </span>
                                                            </a>
                                                            |
                                                            <a href="#">
                                                                <span class="icon">
                                                                    <i class="bx bxs-trash-alt" ></i>
                                                                </span>
                                                                <span class="title"></span>
                                                            </a>
                                                    <!--?php
                                                        }elseif (isset($_SESSION['id_gerente']) || isset($_SESSION['id_admin'])) {
                                                    ?>
                                                            <a href="./editar_servico.php?id=$id">
                                                                <span class="icon">
                                                                    <i class="bx bxs-edit-alt" style="color: #00FFFF;"></i>
                                                                </span>
                                                            </a>
                                                            |
                                                            <a href="#">
                                                                <span class="icon">
                                                                    <i class="bx bxs-trash-alt" ></i>
                                                                </span>
                                                                <span class="title"></span>
                                                            </a>
                                                    <--?php
                                                            }  
                                                    ?-->     
                                                </td>
                                        </tr>
                            <!--?php   }
                                }else {
                                    echo "Ainda não há Funções Registradas!";
                                }
                            ?-->
                            </tr>
                            
                        </tbody>
                    </table><br><br>
            <!--?php
                }
            ?-->
                </div>
            </div>
            <div>
                
            </div>
    </main>
    <!-- MAIN -->
</section>
<!-- CONTENT -->

</body>
</html>