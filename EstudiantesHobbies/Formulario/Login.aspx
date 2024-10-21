<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EstudiantesHobbies.Formulario.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <title>LOGIN</title>
</head>
<body>
    <form id="form1" runat="server">

            <section class="vh-100">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
        <img src="Images/MIT-Logo.png"
          class="img-fluid" alt="Sample image">
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
          <br />
          <br />
          <br />

            <h3>  &nbsp;</h3>
            <h3>  &nbsp;</h3>
            <h3>  
                <label >Bienvenido a la revolución del futuro</label> </h3>
            <p>  &nbsp;</p>

          
          <div data-mdb-input-init class="form-outline mb-4">
              <label class="form-label" for="form3Example3">Correo</label>
            <input type="email" id="log1" class="form-control form-control-lg"
              placeholder="Usuario" />
          </div>

         
          <div data-mdb-input-init class="form-outline mb-3">
              <label class="form-label" for="form3Example4">Contraseña </label>
            <input type="password" id="log2" class="form-control form-control-lg"
              placeholder="Contraeña" />
          </div>

          <div class="d-flex justify-content-between align-items-center">
          
            <div class="form-check mb-0">
              <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
              <label class="form-check-label" for="form2Example3">
                Recordarme
              </label>
            </div>
            <a href="Recuperacion.aspx" class="text-body"> Olvidaste la clave?</a>
          </div>
         
          <!--  CREACION DE MODAL PARA EL REGISTRO DE UN USUARIO  -->
          <div class="text-center text-lg-start mt-4 pt-2">
            <button  type="button" data-bs-toggle="modal" data-bs-target="#crear" class="btn btn-secondary btn-lg"
              style="padding-left: 2.5rem; padding-right: 2.5rem;">Registrarse</button>

    <div class="modal fade" id="crear" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
          <a class="navbar-brand" href="#">
            <img src="../Formulario/Images/mit_circulo.jpg" alt="" width="45" height="35" class="d-inline-block align-text-top">
          </a>
        <h5 class="modal-title" id="exampleModalToggleLabel">REGISTRO</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <!--  CONTENIDO DEL REGISTRO DE USUARIO -->
           <br />
             <div class="col-md-6">
                 <label runat="server" id="label1" class="form-label">Codigo : </label>
                 <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Campo  automatico"    ReadOnly ></asp:TextBox>
             </div>
             <br />
             <div class="col-md-6">
                 <label runat="server" id="label2" class="form-label">Nombre: </label>
                 <input runat="server" type="text" class="form-control" id="input2" placeholder="Ingrese Nombre"/>
             </div>
             <br />
          <div class="col-md-6">
            <label runat="server" id="label3" class="form-label"> Apellido </label>
            <input runat="server" type="text" class="form-control" id="input3" placeholder="Apellido"/>
        </div>
        <br />
        <div class="col-md-6">
            <label runat="server" id="label4" class="form-label">Correo: </label>
            <input runat="server" type="email" class="form-control" id="input4" placeholder="Correo electronico"/>
        </div>
        <br />
        <div class="col-md-6">
            <label runat="server" id="label5" class="form-label">Contraseña: </label>
            <input runat="server" type="text" class="form-control" id="input5" placeholder="Ingrese la clave"/>
        </div>
        <br />
          <div class="col-md-6">
            <label runat="server" id="label6" class="form-label">Contraseña: </label>
            <input runat="server" type="text" class="form-control" id="Text1" placeholder="Repita la contraseña"/>
        </div>
          <br />
          <div class="col-md-6">
            <label runat="server" id="label8" class="form-label"> Telefono: </label>
            <input runat="server" type="text" class="form-control" id="Text2" placeholder="Numero de telefono"/>
        </div>
        <br />
        <div class="col-md-4">
            <label id="label7" for="inputState" class="form-label">Area</label>
            <select id="input7" runat="server" class="form-select" type="text">
                <option value="">--Selecciona una Opcion--</option>
                <option value="Registro Academico">Registro Academico</option>
                <option value="Desarrollo">Desarrollo</option>
                <option value="Puebas">Puebas</option>
                <option value="Mercadeo">Mercadeo</option>
            </select>
        </div>
        <br />


      </div>
      <div class="modal-footer">
       <asp:Button class="btn btn-success"   OnClick="button_click2" Text=" Guardar "  runat="server"/>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>











                &nbsp;











                <asp:Button ID="Button1" runat="server" Text="Ingresar" class="btn btn-danger btn-lg"  OnClick="button_click1" />
               
                </a></p>
          </div>
      <p class="small fw-bold mt-2 pt-1 mb-0">
          <br />
    </p>
    <p class="small fw-bold mt-2 pt-1 mb-0">
        &nbsp;</p>
    <p class="small fw-bold mt-2 pt-1 mb-0">
        &nbsp;</p>
    <p class="small fw-bold mt-2 pt-1 mb-0">
        &nbsp;</p>
      </div>
    </div>
  </div>
  <div
    class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-secondary">

    <div class="text-white mb-3 mb-md-0">
      Copyright © 2024. Todos los derechos reservados.
    </div>
</section>
    </form>
</body>
</html>
