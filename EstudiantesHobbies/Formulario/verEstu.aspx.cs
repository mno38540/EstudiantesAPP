using EstudiantesHobbies.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstudiantesHobbies.Formulario
{
    public partial class verEstu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ServiceEstudent d = new ServiceEstudent();
            GridView1.DataSource = d.StudentAll();
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void button_click1(object sender, EventArgs e)
        {
            Response.Redirect("nuevoEstu.aspx");
        }
    }
}