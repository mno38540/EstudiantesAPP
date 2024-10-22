<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Main.Master" AutoEventWireup="true" CodeBehind="nuevoEstu.aspx.cs" Inherits="EstudiantesHobbies.Formulario.nuevoEstu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <h2>Registro de nuevo estudiante</h2>
         <div class="col-md-6 ">
             <br />
         <label runat="server" id="label1" class="form-label"> Identificacion : </label>
         <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="ingrese un codigo" type="number" ></asp:TextBox>
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
    <label runat="server" id="label4" class="form-label">Direccion: </label>
    <input runat="server" type="text" class="form-control" id="input4" placeholder="Direccion"/>
</div>
<br />
  <div class="col-md-6">
    <label runat="server" id="label8" class="form-label"> Telefono: </label>
    <input runat="server" type="text" class="form-control" id="input7" placeholder="Numero de telefono"/>
</div>
        <br />
        
        <br />
        <br />
           

                    <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#crear">Crear</button>

  <div class="modal fade" id="crear" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalToggleLabel">VALIDACIÓN</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Seguro que desea Cear el producto
      </div>
      <div class="modal-footer">
        <asp:Button class="btn btn-success"   OnClick="button_click1" Text=" Guardar "  runat="server"/>
      </div>
    </div>
  </div>
</div>

       &nbsp;&nbsp;
   <asp:Button CssClass="btn btn-primary" OnClick="button_click2" Text="BUSCAR" runat="server" />
   &nbsp;&nbsp;&nbsp;
   <asp:Button CssClass="btn btn-warning" OnClick="button_click3" Text="EDITAR" runat="server" />
   &nbsp;&nbsp;&nbsp;

   <!-- CREACION DE MODAL PARA ELIMINAR REGISTROS     -->

               <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#eliminar">
     ELIMINAR
   </button>&nbsp;
    <asp:Button class="btn btn-secondary"   OnClick="button_click5" Text=" Ver Registros "  runat="server"/>

   <div class="modal fade" id="eliminar" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
     <div class="modal-dialog modal-dialog-centered">
       <div class="modal-content">
         <div class="modal-header">
           <h5 class="modal-title" id="eliminarlabel">ADVERTENCIA</h5>
           <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
         </div>
         <div class="modal-body">
           Seguro que desea eliminar el Registro?.....
         </div>
         <div class="modal-footer">
               <asp:Button CssClass="btn btn-danger" OnClick="button_click4" Text="ELIMINAR" runat="server" />
         </div>
       </div>
     </div>
   </div>

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

     <br />
<br />

     <asp:Literal ID="modalEjecucion" runat="server"> </asp:Literal>
<br />
</asp:Content>
