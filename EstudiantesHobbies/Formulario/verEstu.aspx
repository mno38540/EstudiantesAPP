<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Main.Master" AutoEventWireup="true" CodeBehind="verEstu.aspx.cs" Inherits="EstudiantesHobbies.Formulario.verEstu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        &nbsp;&nbsp;
<br />
&nbsp;
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>

        <br />
        <br />

    <asp:Button class="btn btn-secondary"   OnClick="button_click1" Text=" Nuevo Registro "  runat="server"/>

</asp:Content>
