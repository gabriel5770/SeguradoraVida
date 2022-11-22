<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SimulaSeguros.aspx.cs" Inherits="SeguradoraVida.SimulaSeguros" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=!, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title>Tela Simular Seguro</title>
    <link rel="stylesheet" href="Css/SimulaSeguros.css" />

</head>
<body>

  <div class="navigation">
      <ul>
        <li><a href="Default.aspx">Home</a></li>
        <li><a href="Contato.aspx">Contato</a></li>
        <li><a href="LoginCliente.aspx">Area do Cliente</a></li>
        <li><a href="Servico.aspx">Serviços</a> </li>
    </ul>
</div>

<div class="Familia">
    <img src="Imagens/Familia.jpg" width="500" height="400" id="img01">
</div>

<div class="Segurodevida">
    <h3> Contrate um <b>Seguro de Vida!</b></h3>
    
    A Dream Life tem o produto ideal para as suas necessidades</div>

    <div class="Ola">
        .
    </div>

    <form action="">

        <fieldset>
          <legend><b>Simular Seguro</b></legend>

          <div class="">                
          <label>Nome</label>
          
          </br>
          <input type="nome" required placeholder="Nome completo">                
          </div>
        
          <div>
            <label>Data Nascimento</label>
          </br>             
            <input type="date" required>                
          </div>

          <div>
            <label>E-mail</label>
          </br>
          
            <input type="text" required placeholder="Pessoa@hotmail.com">
             
          </div>
        
          <div>
            <label>Telefone</label>
            </br>
            
            <input type="text" required placeholder="(12)3456-78910">
              
          </div>
                    
          <div>
            <label>CPF</label>
            <br>
            <input type="text" name="cpf" placeholder="xxx.xxx.xxx-xx"
		        	pattern="\d{3}\.\d{3}\.\d{3}-\d{2}" \
		        	title="Digite um CPF no formato: xxx.xxx.xxx-xx">
            
          </div>

          <div>
            Sexo
            <br>
           <input type="radio" required name="sexo" value="M">
           Masculino
           <input type="radio" required name="sexo" value="F">
           Feminino
         </div>

         <div>
            Seguro<br>
            <input name="Seguro" type="radio" required id="I">
            <label for="Invalido">Invalidez</label>
          
            <input name="Seguro" type="radio" required id="M">
            <label for="Morte">Morte acidental</label>
          <br>
             <input name="Seguro" type="radio"required id="D">
            <label for="Doença">Doença hereditaria</label>

          <br />

      <input type="submit" name="submit" id="submit" onclick="avancar()" / required>
      <div>

        <div class="container">
            .
          </div>

          <div class="oii">
            .
          </div>
                  
        </div>
        <div class="ImagemEleven">
          <img src="Imagens/Icones.jpg" width="290" height="100" id="img11">
      </div>
      
      <div class="ImagemTwelve">
          <img src="Imagens/App.jpg" width="290" height="100" id="img12">
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
