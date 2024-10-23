﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EstudiantesHobbies.Formulario.Login" %>

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
            <input type="email" id="log1" class="form-control form-control-lg" placeholder="Usuario" runat="server" />
          </div>

         
          <div data-mdb-input-init class="form-outline mb-3">
              <label class="form-label" for="form3Example4">Contraseña </label>
            <input type="password"  id="log2" class="form-control form-control-lg" placeholder="Contraeña" runat="server" />
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
            <div class="container text-center">
            <div class="row justify-content-md-center">
            <div class="col-md-auto">

           <br />
             <div class="">
                 <label runat="server" id="label1" class="form-label"> Identificacion : </label>
                 <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="ingrese un codigo" type="number" ></asp:TextBox>
             </div>
             <br />
             <div class="">
                 <label runat="server" id="label2" class="form-label">Nombre: </label>
                 <input runat="server" type="text" class="form-control" id="input2" placeholder="Ingrese Nombre"/>
             </div>
             <br />
          <div class="">
            <label runat="server" id="label3" class="form-label"> Apellido </label>
            <input runat="server" type="text" class="form-control" id="input3" placeholder="Apellido"/>
        </div>
        <br />
        <div class="">
            <label runat="server" id="label4" class="form-label">Correo: </label>
            <input runat="server" type="email" class="form-control" id="input4" placeholder="Correo electronico"/>
        </div>
        <br />
        <div class="">
            <label runat="server" id="label5" class="form-label">Contraseña: </label>
            <input runat="server" type="password" class="form-control" id="input5" placeholder="Ingrese la clave"/>
        </div>
        <br />
          <div class="">
            <label runat="server" id="label6" class="form-label">Contraseña: </label>
            <input runat="server" type="password" class="form-control" id="input6" placeholder="Repita la contraseña"/>
        </div>
          <br />
          <div class="">
            <label runat="server" id="label8" class="form-label"> Telefono: </label>
            <input runat="server" type="text" class="form-control" id="input7" placeholder="Numero de telefono"/>
        </div>
        <br />
        <div class="">
            <label id="label7" for="inputState" class="form-label">Area</label>
            <select id="input8" runat="server" class="form-select" type="text">
                <option value="">--Selecciona una Opcion--</option>
                <option value="Registro Academico">Registro Academico</option>
                <option value="Desarrollo">Desarrollo</option>
                <option value="Puebas">Puebas</option>
                <option value="Mercadeo">Mercadeo</option>
            </select>
        </div>
        <br />
        </div>
        </div>
        </div>

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
  
        &nbsp;</p>
   
        &nbsp;</p>
   
        &nbsp;</p>
      </div>
    </div>
  </div>
  <div class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-secondary">

    <div class="text-white mb-3 mb-md-0">
      Copyright © 2024. Todos los derechos reservados.
    </div>
    </div>
</section>

                    <!-- ESTE MODAL SE RECARGA CON LA RESPUESTA DEL SERVIDOR-->

<div class="modal fade" id="exitoso" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="resgood">EJECUCION</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        
         
                <div class="alert alert-success d-flex align-items-center" role="alert">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16" role="img" aria-label="Warning:">
                <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                  </svg>
                  <div>
                     <asp:Label ID="Label9" runat="server" Text=" "></asp:Label>
                  </div>
               </div>
      </div>
      <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>

                        <!-- ESTE MODAL SE RECARGA CON LA RESPUESTA DEL SERVIDOR CON ERROR-->

        <div class="modal fade" id="error" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="resbadlabel">EJECUCION</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
                <div class="alert alert-danger d-flex align-items-center" role="alert">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16" role="img" aria-label="Warning:">
                <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                  </svg>
                  <div>
                     <asp:Label ID="Label10" runat="server" Text=" "></asp:Label>
                  </div>
               </div>
           
      </div>
      <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>










                    <!-- SCRIPT PARA VEREL MODAL -->
    <script type="text/javascript">
    function modalExito() {
        var modal = new bootstrap.Modal(document.getElementById('exitoso'));
        modal.show();
    }
    function modalFallo() {
        var modal = new bootstrap.Modal(document.getElementById('error'));
        modal.show();
        }
    </script>
        <asp:Literal ID="modalEjecucion" runat="server"> </asp:Literal>
    </form>
</body>
</html>
