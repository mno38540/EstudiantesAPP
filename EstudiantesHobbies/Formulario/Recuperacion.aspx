<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recuperacion.aspx.cs" Inherits="EstudiantesHobbies.Formulario.Recuperacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <title>Recuperacion de clave</title>
</head>
<body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
      <a class="navbar-brand" href="#">
        <img src="../Formulario/Images/mit_circulo.jpg" alt="" width="45" height="35" class="d-inline-block align-text-top">
      </a>
    <a class="navbar-brand" href="#">MIT</a></div>
            <label>RECUPERACIÓN DE CONTRASEÑAS</label>
</nav>




    <form id="form1" runat="server" style="margin: auto 8rem 8rem 8rem">
        <div>
    <br />
    <div class="col-md-6">
        <label runat="server" id="label1" class="form-label">Codigo : </label>
        <input runat="server" type="text" class="form-control" id="input1" placeholder="Ingrese Codigo"/>
    </div>
    <br />
    <div class="col-md-6">
        <label runat="server" id="label2" class="form-label">Nombre: </label>
        <input runat="server" type="text" class="form-control" id="input2" placeholder="Ingrese Nombre"/>
    </div>
    <br />
    <div class="col-md-6">
        <label runat="server" id="label3" class="form-label"> Descripcion : </label>
        <input runat="server" type="text" class="form-control" id="input3" placeholder="Descripcion del producto"/>
    </div>
    <br />
    <div class="col-md-6">
        <label runat="server" id="label4" class="form-label">Costo: </label>
        <input runat="server" type="text" class="form-control" id="input4" placeholder="Ingrese El valor de costo"/>
    </div>
    <br />
    <div class="col-md-6">
        <label runat="server" id="label5" class="form-label">Precio: </label>
        <input runat="server" type="text" class="form-control" id="input5" placeholder="Ingrese El precio de venta"/>
    </div>
    <br />
    <div class="col-md-6">
        <label runat="server" id="label6" class="form-label">Margen </label>
      
        <br />
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" ReadOnly ></asp:TextBox>
    </div>
    
    <br />
    <div class="col-md-4">
        <label id="label7" for="inputState" class="form-label">Proveedor</label>
        <select id="input7" runat="server" class="form-select" type="text">
            <option value="">--Selecciona una Opcion--</option>
            <option value="Servientrega">Servientrega</option>
            <option value="Envia">Envia</option>
            <option value="Coordinadora">Coordinadora</option>
            <option value="Domina">Domina</option>
        </select>
    </div>
    </form>
</body>
</html>
