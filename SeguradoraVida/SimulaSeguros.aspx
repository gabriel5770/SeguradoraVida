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
        <h3>Contrate um <b>Seguro de Vida!</b></h3>

        A Dream Life tem o produto ideal para as suas necessidades
    </div>

    <div class="Ola">
        .
    </div>

    <form action="" runat="server">

        <fieldset>
            <legend><b>Simular Seguro</b></legend>

            <div class="">
                <label>Nome</label>

                </br>
                             <asp:TextBox ID="txtNome" Width="180px" Columns="1" runat="server" />
            </div>

            <div>
                <label>Data Nascimento</label>
                </br>             
                             <asp:TextBox type="date" ID="txtData" Width="180px" Columns="1" runat="server" />
            </div>

            <div>
                <label>E-mail</label>
                </br>
                       
                             <asp:TextBox ID="txtEmail" Width="180px" Columns="1" runat="server" />

            </div>

            <div>
                <label>Telefone</label>
                </br>
            
                             <asp:TextBox ID="txtTelefone" Width="180px" Columns="1" runat="server" />

            </div>

            <div>
                <label>CPF</label>
                <br>
                <asp:TextBox ID="txtCpf" Width="180px" Columns="1" runat="server" />


            </div>

            <div>
                Sexo
            <br>
                <asp:RadioButton ID="RadMasculino" Text="Masculino" Checked="True" GroupName="RadioGroup1" runat="server" /><br />
                <asp:RadioButton ID="RadFeminino" Text="Feminino" Checked="True" GroupName="RadioGroup1" runat="server" /><br />
            </div>
            <div>
                Seguro<br>
                <asp:RadioButton ID="RadInvalidez" Text="Invalidez" Checked="True" GroupName="RadioGroup2" runat="server" /><br />
                <asp:RadioButton ID="RadMorteAcidental" Text="Morte Acidental" Checked="True" GroupName="RadioGroup2" runat="server" /><br />
                <asp:RadioButton ID="RadDoencaHereditaria" Text="Doença Hereditária" Checked="True" GroupName="RadioGroup2" runat="server" /><br />
                <br />
                         <asp:Button ID="btnEnviar" OnClick="btnEnviar_Click" Text="Enviar" runat="server" />
                <div>

                    <div class="container">
                    </div>
                    <div class="oii">
                    </div>

                </div>
                <div class="ImagemEleven">
                    <img src="Imagens/Icones.jpg" width="290" height="100" id="img11">
                </div>

                <div class="ImagemTwelve">
                    <img src="Imagens/App.jpg" width="290" height="100" id="img12">
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
    </form>
