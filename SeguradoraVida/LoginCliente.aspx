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
            </div>
       </header>

        <main>
	        <form name="cadastro" runat="server" class="container">
                <h3 style="color: #1b86dd">LOGIN</h3>
                <h4>Preencha para continuar.</h4>
                <div class="fields" style="margin-top: 2rem;">
                    <asp:TextBox ID="txtCpf" Columns="1" runat="server" placeholder="Digite seu CPF"/><br><br>
                    <asp:TextBox ID="txtSenha" Columns="1" runat="server" TextMode="Password" placeholder="Digite sua senha"/><br><br><br />
                </div>
                <div style="display: flex; flex-direction: column; align-items: center;">
                    <asp:Button id="btnLogar" OnClick="logar_Click" runat="server" Text="Entrar"/>            
                    <div style="display: flex; flex-direction:column; margin-top: 1rem;">
                        <p>Ainda não simulou seu seguro? </p>
                        <a href="SimulaSeguros.aspx"> Simule agora mesmo.</a>
                    </div>
                </div>
	        </form>
        </main>


        <footer>
            <div class="ImagemEleven">
                <img src="Imagens/Icones.jpg" width="300" height="100" id="img11">
            </div>
    
            <div class="ImagemTwelve">
                <img src="Imagens/App.jpg" width="300" height="100" id="img12">
            </div>
            <ul><br>
                <li><b>Links rápidos</b></li><br>
                <li><a href="TermosUso.aspx">Termo de uso ></a></li>
                <li><a href="Lgpd.aspx">LGPD - Lei Geral de Proteção de Dados ></a></li>
                <li><a href="Servico.aspx">Serviços></a></li>
            </ul>
        </footer>
    </body>
</html>