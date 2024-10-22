using EstudiantesHobbies.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstudiantesHobbies.Logica
{
    public class Ingreso
    {
        AlumnosEntities db = new AlumnosEntities();

        public Usuario Validar(string correo)
        {
            return  db.Usuario.Find(correo);
        }

        public void AddUser(Usuario usu)
        {
            db.Usuario.Add(usu);
            db.SaveChanges();

        }

        public void Contra(Usuario usa) 
        {
            db.Entry(usa).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }

    }
}