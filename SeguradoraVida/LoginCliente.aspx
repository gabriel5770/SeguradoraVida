<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginCliente.aspx.cs" Inherits="SeguradoraVida.LoginCliente" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=!, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title>Tela login do cliente</title>
    <link rel="stylesheet" href="Css/LoginCliente.css" />

</head>
<body>
  <header>
    <div class="navigation">
  <ul>
        <li><a href="Default.aspx">Home</a></li>
        <li><a href="Contato.aspx">Contato</a></li>
        <li><a href="LoginCliente.aspx">Area do Cliente</a></li>
        <li><a href="Servico.aspx">Serviços</a> </li>
    </ul>
   </header>

</div>

	<form name="cadastro">
        <h4>Digite <b>seu CPF </h4></b>Preencha para continuar.<br><br>
		<input type="text" name="cpf" placeholder="CPF"
			pattern="\d{3}\.\d{3}\.\d{3}-\d{2}" \
			title="Digite um CPF no formato: xxx.xxx.xxx-xx">
            <br>
            <br>

        <h4>Digite <b>sua Senha</h4></b>
		<input type="password" name="senha" placeholder="Senha">
            <br>
            <br>
            <br>
            <br>
            
            <input type="submit" value="Enviar">
            
         Ainda não simulou seu seguro? <br> <a href="TelaSimular.html">simule agora mesmo (: </a>
		
	</form>

    <div class="container">
        .
      </div>

      <div class="BotaoVoltar">
        <a href="TelaHome.html"><button type="button" class="btn-Voltar"> <---- </button></a>
    
    </div>

    <div class="ImagemEleven">
        <img src="Imagens/Icones.jpg" width="300" height="100" id="img11">
    </div>
    
    <div class="ImagemTwelve">
        <img src="Imagens/App.jpg" width="300" height="100" id="img12">
    </div>

    <footer>
        <ul><br>
            <li><b>Links rápidos</b></li>
            <br>
            <li><a href="Termodeuso.html">Termo de uso ></a></li>
            <li><a href="Telaleigeraldeprotecaodedados.html">LGPD - Lei Geral de Proteção de Dados ></a></li>
            <li><a href="TelaServiços.html">Serviços></a></li>
        </ul>
        </footer>