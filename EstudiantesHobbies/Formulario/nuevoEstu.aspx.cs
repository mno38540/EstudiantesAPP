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
    public partial class nuevoEstu : System.Web.UI.Page
    {
        ServiceEstudent student = new ServiceEstudent();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void button_click1(object sender, EventArgs e)
        {
            try
            {
                Estudiante usuario = student.studenId(TextBox1.Text);
                if (usuario != null)
                {
                    throw new Exception(" Usuario ya se encuentra registrado");

                }
                usuario = new Estudiante();
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
                usuario.Direccion = input4.Value.ToLower();
                if (string.IsNullOrWhiteSpace(input4.Value))
                {
                    throw new Exception("La direccion no puede estar en blanco");
                }

                if (!decimal.TryParse(input7.Value, out decimal telefono) || telefono == 0)
                {
                    throw new Exception("El telefono solo pueden ser numero");
                }
                usuario.Identificacion = TextBox1.Text;
                usuario.Nombre = input2.Value;
                usuario.Apelllido = input3.Value;
                usuario.Telefono = input7.Value;


                student.AddStudent(usuario);
                Label9.Text = "Registro exitoso";
                modalEjecucion.Text = "<script type='text/javascript'>modalExito();</script>";

            }
            catch (Exception ex)
            {
                modalEjecucion.Text = "<script type='text/javascript'>modalFallo();</script>";
                Label10.Text = ex.Message;
            }
        }
        protected void button_click2(object sender, EventArgs e)
        {

        }

        protected void button_click3(object sender, EventArgs e)
        {

        }

        protected void button_click4(object sender, EventArgs e)
        {

        }
        protected void button_click5(object sender, EventArgs e)
        {
            Response.Redirect("verEstu.aspx");
        }
    }
}