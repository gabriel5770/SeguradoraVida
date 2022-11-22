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
  <header>
  <div class="navigation">

    <ul>
        <li><a href="TelaHome.html">Home</a></li>
        <li><a href="TelaContato.html">Contato</a></li>
        <li><a href="LoginAreaDoCliente.html">Area do Cliente</a></li>
        <li><a href="TelaServiços.html">Serviços</a> </li>
    </ul>
  </header>


<div>
<input readonly="" type="email" id="Oii" name="xx" placeholder=" Nome completo " value="">
<br>
<br>
<input readonly="" type="email" id="Oii" name="xx" placeholder=" CPF " value="">
<br>
<br>
<input readonly="" type="text" name="xx" placeholder=" Telefone " value="">
<br>
<br>
<input readonly="" type="text" name="xx" placeholder=" Email " value="">
<br>
<br>
<input readonly="" type="email" id="Oii" name="xx" placeholder=" Data de Nascimento " value="">
<br>
<br>
<input readonly="" type="email" id="Oii" name="xx" placeholder=" Seguro " value="">


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
editar.addEventListener("click", function() {
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
  <ul><br>
      <li><b>Links rápidos</b></li>
      <br>
      <li><a href="Termodeuso.html">Termo de uso ></a></li>
      <li><a href="Telaleigeraldeprotecaodedados.html">LGPD - Lei Geral de Proteção de Dados ></a></li>
      <li><a href="TelaServiços.html">Serviços></a></li>
  </ul>
  </footer>
</body>
</html>
