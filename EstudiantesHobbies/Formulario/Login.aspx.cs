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
            try
            {
                Usuario usuario = log.Validar(input4.Value);
                if (usuario != null)
                {
                    throw new Exception(" Usuario ya se encuentra registrado");

                }
                usuario = new Usuario();
                if (!decimal.TryParse(TextBox1.Text, out decimal codigo) || codigo == 0)
                {
                    throw new Exception("El codigo no puede ser cero o letras");
                }
                if (string.IsNullOrWhiteSpace(input2.Value))
                {
                    throw new Exception("El Nombre no puede estar en blanco");
                }
                if (string.IsNullOrWhiteSpace(input3.Value))
                {
                    throw new Exception("El Apellido no puede estar en blanco");
                }
                usuario.correo = input4.Value.ToLower();
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
                if (!decimal.TryParse(input7.Value, out decimal telefono) || telefono == 0)
                {
                    throw new Exception("El telefono solo pueden ser numero");
                }
                usuario.identificacion = TextBox1.Text;
                usuario.nombre = input2.Value;
                usuario.apellido = input3.Value;
                usuario.area = input8.Value;
                if (string.IsNullOrWhiteSpace(input8.Value) || input8.Value == "--Selecciona una Opcion--")
                {
                    throw new Exception(" El area debe ser valida ");
                }
                usuario.contraseña = input5.Value;
                usuario.telefono = input7.Value;
                

                log.AddUser(usuario);
                Label9.Text = "Registro exitoso";
                modalEjecucion.Text = "<script type='text/javascript'>modalExito();</script>";

            }
            catch (Exception ex) 
            {
                modalEjecucion.Text = "<script type='text/javascript'>modalFallo();</script>";
                Label10.Text = ex.Message;
            }
        }
    }
}