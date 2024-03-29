//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProyectoFinal.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Libro
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Libro()
        {
            this.EscritoPor = new HashSet<EscritoPor>();
            this.GeneroLibro = new HashSet<GeneroLibro>();
            this.PublicadoPor = new HashSet<PublicadoPor>();
        }
    
        public int Id { get; set; }
        public string Titulo { get; set; }
        public string Autor { get; set; }
        public string Formato { get; set; }
        public System.DateTime FechaDePublicacion { get; set; }
        public string Idioma { get; set; }
        public int ISBN { get; set; }
        public int NumPags { get; set; }
        public string Editorial { get; set; }
        public string Genero { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EscritoPor> EscritoPor { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GeneroLibro> GeneroLibro { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PublicadoPor> PublicadoPor { get; set; }
    }
}
