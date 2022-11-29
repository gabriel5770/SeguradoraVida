<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AreaCliente.aspx.cs" Inherits="SeguradoraVida.AreaCliente" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=!, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title>Tela Area do cliente</title>
    <link rel="stylesheet" href="Css/AreaCliente.css" />

</head>
<body>
    <form runat="server">

        <header>
            <div class="navigation">

                <ul>
                    <li><a href="Default.aspx">Home</a></li>
                    <li><a href="Contato.aspx">Contato</a></li>
                    <li><a href="LoginCliente.aspx">Area do Cliente</a></li>
                    <li><a href="Servico.aspx">Serviços</a> </li>
                </ul>
        </header>


        <div>
            <asp:TextBox ID="txtNome" Width="180px" Enabled="false"  Columns="1" runat="server" />
            <br>
            <br>
            <asp:TextBox ID="txtCpf" Width="180px" Enabled="false"  Columns="1" runat="server" />
            <br>
            <br>
            <asp:TextBox ID="txtTelefone" Width="180px" Enabled="false"  Columns="1" runat="server" />
            <br>
            <br>
            <asp:TextBox ID="txtEmail" Width="180px" Enabled="false"  Columns="1" runat="server" />
            <br>
            <br>
            <asp:TextBox ID="txtDataNascimento" Width="180px" Enabled="false"  Columns="1" runat="server" />
            <br>
            <br>
            <asp:TextBox ID="txtSeguro" Width="180px" Enabled="false"  Columns="1" runat="server" />


            <label for="editar">Alterar</label>
            <input type="checkbox" name="check" value="sim" id="editar" />
            <input type="submit" value="Salvar Dados" />

        </div>

        <div class="container">
            .
        </div>

        <script>
            var editar = document.getElementById("editar");


            // No click verifico se o editar esta marcado e desativo os 
            // readOnly dos inputs type text
            editar.addEventListener("click", function () {
                if (this.checked) {
                    toggleReadOnly(false);
                } else {
                    toggleReadOnly(true);
                }
            });

            // Percorro  os elementos inputs type text e habilito/desabilito
            function toggleReadOnly(bool) {
                var inputs = document.getElementsByTagName("input");
                for (var i = 0; i < inputs.length; i++) {
                    if (inputs[i].type === "text") {
                        inputs[i].readOnly = bool;
                    }
                }
            }

        </script>


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
    </form>
</body>
</html>
