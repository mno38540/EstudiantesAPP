using EstudiantesHobbies.Logica;
using EstudiantesHobbies.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstudiantesHobbies.Formulario
{
    public partial class Login : System.Web.UI.Page
    {
        Ingreso log = new Ingreso();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_click1(object sender, EventArgs e)
        {
            Usuario usu = log.Validar(log1.Value);
            try
            {
                if (usu != null)
                {
                    if (usu.contraseña == log2.Value)
                    {
                        Response.Redirect("Home.aspx");
                    }
                    throw new Exception("Contraseña invalidas");
                }
                throw new Exception("Coreo invalidas");
            }
            catch (Exception ex) 
            {
                modalEjecucion.Text = "<script type='text/javascript'>modalFallo();</script>";
                Label10.Text = ex.Message;
            }


        }


        protected void button_click2(object sender, EventArgs e)
        {
            // CREAR REGISTRO
        }
    }
}