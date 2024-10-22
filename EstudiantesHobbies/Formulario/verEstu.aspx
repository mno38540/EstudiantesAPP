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

    <div id="MainContent_ctl00">
	
            <div class="container site-full-width">
                <div class="site-full-width">
                    <div class="col-md-12 site-full-width site-align-center">
                        <div class="login-panel panel panel-default site-full-width">
                            <div class="panel-heading">
                                <h3 class="panel-title">Lista de registros</h3>
                            </div>
                            <div class="panel-body site-full-width">
                                <fieldset>
                                    
                                    
                                    <div id="MainContent_upControlButtonsAddPayment" style="padding-bottom: 50px;">
		<asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  CssClass="table table-striped table-bordered table-hover" >
</asp:GridView>
                                        <div class="form-group">
                                            <div class="col-md-1">
                                                <span class="form-control-static"></span>

                                            </div>
                                            <div class="col-md-4">

                                                    

    <br />
<br />

                                                <asp:Button class="btn btn-secondary"   OnClick="button_click1" Text=" Nuevo Registro "  runat="server"/>
                                            &nbsp;</div>
                                            <div class="col-md-2">
                                            </div>
                                        </div>
                                    
	</div>
                                    <div class="form-group">
                                        <div class="site-full-width">
                                            <div>

	</div>
                                        </div>
                                    </div>
                                    
                                    <div id="MainContent_upControlButtons">
		
                                            <div class="btn-toolbar">
                                                <div class="form-inline">
                                                    
                                                </div>
                                            </div>
                                            
                                        
	</div>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">&nbsp;</div>
            </div>
        
</div>



</asp:Content>
