<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Main.Master" AutoEventWireup="true" CodeBehind="CrearStudiante.aspx.cs" Inherits="EstudiantesHobbies.Formulario.CrearStudiante" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <br />
     <div class="col-md-6">
         <label runat="server" id="label1" class="form-label">Codigo : </label>
         <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Campo  automatico" ></asp:TextBox>
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

  <div class="col-md-6">
    <label runat="server" id="label8" class="form-label"> Telefono: </label>
    <input runat="server" type="text" class="form-control" id="Text2" placeholder="Numero de telefono"/>
</div>
<br />

<asp:Button class="btn btn-success"   OnClick="button_click2" Text=" Guardar "  runat="server"/>

<br />
</asp:Content>
