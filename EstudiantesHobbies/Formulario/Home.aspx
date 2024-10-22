<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EstudiantesHobbies.Formulario.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex justify-content-center">
        <label> ESTA PAGINA SE CREO GRACIAS A  NUESTROS PATROCINADORES</label>
    </div>

    <div id="carouselExampleIndicators" class="carousel slide"  max-width="800px" max-height="400px"   >
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">x
    <div class="carousel-item active">
      <img src="Images/google.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="Images/vs.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="Images/net-framework.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>





</asp:Content>
