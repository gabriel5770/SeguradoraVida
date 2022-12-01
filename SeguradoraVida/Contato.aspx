﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="SeguradoraVida.Contato" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=!, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title>Tela Contato</title>
    <link rel="stylesheet" href="Css/contato.css" />

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

    <div class="ImagemTelefone">
        <img src="Imagens/Telefone01.png" width="20px" height="20px" id="imgg01">
    </div>


    <div class="container-fluid">
    </div>
    <br>
        <br>
            <form action="#" method="POST" class="formContato" runat="server">
                <fieldset>

                    <div>
                        <label>Nome Completo</label>
        </br>

        <asp:TextBox ID="txtNome" Width="180px" Columns="1" runat="server" />

        </div>

    <div>
        <label>E-mail</label>
    </br>
    <asp:TextBox ID="txtEmail" Width="180px"  Columns="1" runat="server" />


    </div>

    <div>
        <label>Celular</label>
        </br>             
           <asp:TextBox ID="txtCelular" Width="180px"   Columns="1" runat="server" />

    </div>

    <label form="Mensagem">Mensagem</label>
    </br>
           <asp:TextBox ID="TextBox1" Width="250px" Height="100px"   Columns="2" runat="server" />
    </br>
    </br>

    <asp:Button ID="btnEnviar"
        OnClick="btnEnviar_Click"
        runat="server" />
    </fieldset>
</form>  

  <div class="Contato">
      <br>
      <br>
      <h1>Contato</h1>
      <h2>Ligue em nosso número de telefone!
          <br>
          Ou envie uma mensagem detalhada que
          <br>
          entraremos em contato!</h2>
  </div>

    <div class="container">
    </div>

    <div class="container02">
    </div>

    <div class="container03">
        55+ (11) 96181-6387
    </div>

    <div class="container04">
        Dreamlife@hotmail.com
    </div>

    <div class="container05">
        Alameda araguaia, 5537
    </div>

    <div class="ImagemEleven">
        <img src="Imagens/Icones.jpg" width="300" height="100" id="img11">
    </div>

    <div class="ImagemTwelve">
        <img src="Imagens/App.jpg" width="300" height="100" id="img12">
    </div>


    <footer>
        <ul>
            <br>
            <li><b>Links rápidos</b></li>
            <br>
            <li><a href="TermosUso.aspx">Termo de uso ></a></li>
            <li><a href="Lgpd.aspx">LGPD - Lei Geral de Proteção de Dados ></a></li>
            <li><a href="Servico.aspx">Serviços></a></li>
        </ul>
    </footer>
