﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recuperacion.aspx.cs" Inherits="EstudiantesHobbies.Formulario.Recuperacion" %>

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
      <label>RECUPERACIÓN DE CONTRASEÑAS</label>
    </div>
            
</nav>

    <form id="form1" runat="server" style="margin: auto 8rem 8rem 8rem">
           <br />
    
<div class="col-md-6">
    <label runat="server" id="label4" class="form-label">Correo: </label>
    <input runat="server" type="email" class="form-control" id="input4" placeholder="Correo electronico"/>
</div>
           <br />
        <asp:Button class="btn btn-primary"   OnClick="button_click1" Text=" Buscar "  runat="server"/>
        <asp:Button class="btn btn-secondary"   OnClick="button_click3" Text=" Regresar "  runat="server"/>
           <br />
           <br />


                            <!-- ESTE MODAL SE RECARGA CON LA RESPUESTA DEL SERVIDOR-->
<div class="modal fade" id="exitoso" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="resgood">ACTUALIZACION DE CLAVE</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        
          <label>   Si este mensaje se muestra por segunda vez quedo actualizada correctamente la clave y puede cerrar esta ventana</label>
                <div class="alert alert-success d-flex align-items-center" role="alert">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16" role="img" aria-label="Warning:">
                <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                  </svg>
                  <div>
                     <asp:Label ID="Label9" runat="server" Text=" "></asp:Label>
                  </div>
               </div>

          <div class="col-md-6">
    <label runat="server" id="label5" class="form-label">Contraseña: </label>
    <input runat="server" type="password" class="form-control" id="input5" placeholder="Ingrese la clave"/>
</div>
<br />
  <div class="col-md-6">
    <label runat="server" id="label6" class="form-label">Contraseña: </label>
    <input runat="server" type="password" class="form-control" id="input6" placeholder="Repita la contraseña"/>
</div>
           <br />
           <br />
        <asp:Button class="btn btn-success"   OnClick="button_click2" Text=" Actualizar "  runat="server"/>

                            <br />
           <br />

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
