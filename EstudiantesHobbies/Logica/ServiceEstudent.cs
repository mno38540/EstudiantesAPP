using EstudiantesHobbies.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstudiantesHobbies.Logica
{
    public class ServiceEstudent
    {

        AlumnosEntities db = new   AlumnosEntities();

        public List<Estudiante> StudentAll() 
        {
            return db.Estudiante.ToList();
        }

        public Estudiante studenId(string id) 
        {
            return db.Estudiante.Find(id);
        }
    }
}