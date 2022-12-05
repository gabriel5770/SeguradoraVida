<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="SeguradoraVida.Contato" %>

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
    </div>
   </header>
    <main>
        <div class="col-1">
            <div class="Contato"><br><br>
                <h1>Contato</h1>
                <h2>Ligue em nosso número de telefone! <br>Ou envie uma mensagem detalhada que <br> entraremos em contato!</h2>
                <div class="contato-info">
                    <div class="container03" style="display: flex; justify-content: space-around;">
                        <img src="Imagens/Telefone01.png" width="20" height="20" id="imgg01">
                        55+ (11) 96181-6387
                    </div>
                    <div class="container04">Dreamlife@hotmail.com</div>
                    <div class="container05">Alameda araguaia, 5537</div>
                </div>
            </div>
        </div>
       <div class="col-2">
            <div>
                <form action="#" method="POST" class=formContato>
                    <fieldset>
                        <div>
                            <label>Nome Completo</label><br/>
                            <input type="Nome" required placeholder="Digite seu nome">
                        </div>
                        <div>
                            <label>E-mail</label><br/>
                            <input type="email" required placeholder="Digite seu e-mail">
                        </div>
                        <div>
                            <label>Celular</label><br/>             
                            <input type="text" required placeholder="Digite seu telefone">
                        </div>
                        <div>
                            <label form="Mensagem">Mensagem</label><br/>
                            <textarea style="resize: none" name="Mgm" cols="46" rows="7"></textarea><br/><br/>
                        </div>
                        <input type="button" id="btnEnviarContato" value="Enviar" runat="server"/>
                    </fieldset>
                </form>  
            </div>
       </div>
    </main>
    <div class="container-fluid"></div><br/><br/>
    <div class="container"></div>
    <div class="container02"></div>

    <footer>
        <div class="ImagemEleven">
            <img src="Imagens/Icones.jpg" width="300" height="100" id="img11">
        </div>
    
        <div class="ImagemTwelve">
            <img src="Imagens/App.jpg" width="300" height="100" id="img12">
        </div>
        <ul>
            <li><b>Links rápidos</b></li>
            <li><a href="TermosUso.aspx">Termo de uso ></a></li>
            <li><a href="Lgpd.aspx">LGPD - Lei Geral de Proteção de Dados ></a></li>
            <li><a href="Servico.aspx">Serviços></a></li>
        </ul>
    </footer>
</body>
</html>