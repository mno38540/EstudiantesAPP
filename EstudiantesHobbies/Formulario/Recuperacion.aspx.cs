using EstudiantesHobbies.Logica;
using EstudiantesHobbies.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace EstudiantesHobbies.Formulario
{
    
    public partial class Recuperacion : System.Web.UI.Page
    {
        Ingreso val = new Ingreso();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_click1(object sender, EventArgs e)
        {
            try
            {
                Usuario usuario = val.Validar(input4.Value);
                if (usuario != null)
                {
                    Label9.Text = "Registro encontrado";
                    modalEjecucion.Text = "<script type='text/javascript'>modalExito();</script>";
                }
            }
            catch (Exception ex) 
            {
                modalEjecucion.Text = "<script type='text/javascript'>modalFallo();</script>";
                Label10.Text = ex.Message;
            }
        }

        protected void button_click2(object sender, EventArgs e)
        {
            try
            {
                Usuario usuario = val.Validar(input4.Value);
                if (usuario != null)
                {
                    
                    if (string.IsNullOrWhiteSpace(input4.Value))
                    {
                        throw new Exception("El Correo no puede estar en blanco");
                    }
                    if (string.IsNullOrWhiteSpace(input5.Value))
                    {
                        throw new Exception("La contraseña no puede esta en blanco");
                    }
                    if (string.IsNullOrWhiteSpace(input6.Value))
                    {
                        throw new Exception("La contraseña no puede esta en blanco");
                    }
                    if (input5.Value != input6.Value)
                    {
                        throw new Exception(" contraseñas no coinciden");
                    }
                    usuario.contraseña = input5.Value;
                    val.Contra(usuario);
                    Label9.Text = "Actualizacion correcta";
                    modalEjecucion.Text = "<script type='text/javascript'>modalExito();</script>";

                }
            }
            catch (Exception ex) 
            {
                modalEjecucion.Text = "<script type='text/javascript'>modalFallo();</script>";
                Label10.Text = ex.Message;
            }

        }
        protected void button_click3(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
            
        }

    }
}