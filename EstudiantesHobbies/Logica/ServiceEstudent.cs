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

        public void AddStudent(Estudiante estudiante) 
        {
            db.Estudiante.Add(estudiante);
            db.SaveChanges();
        }
        public void ModifyStudent(Estudiante estudiante)
        {
            db.Entry(estudiante).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
        public void RmStudent(Estudiante estudiante)
        {
            db.Estudiante.Remove(estudiante);
            db.SaveChanges();
        }

    }
}