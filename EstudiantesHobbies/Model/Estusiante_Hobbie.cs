//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EstudiantesHobbies.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Estusiante_Hobbie
    {
        public string Codigo { get; set; }
        public string Identificacion { get; set; }
        public string CodigoHobbie { get; set; }
    
        public virtual Estudiante Estudiante { get; set; }
        public virtual Hobbie Hobbie { get; set; }
    }
}
