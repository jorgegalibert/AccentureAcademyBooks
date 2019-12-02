using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ProyectoFinal.Models
{
    public class LibroMetadata
    {


        [Required(ErrorMessage = "Inserte el campo Nombre")]
        [StringLength(50, MinimumLength = 2, ErrorMessage = "La longitud no alcanza el mínimo permitido")]
        public string Titulo { get; set; }

              
         [Required(ErrorMessage = "Inserte la fecha de publicación")]
         public System.DateTime FechaDePublicacion { get; set; }

        [Required(ErrorMessage = "Inserte el campo Idioma")]
        [StringLength(20, MinimumLength = 2, ErrorMessage = "La longitud no alcanza el mínimo permitido")]
        public string Idioma { get; set; }

        [Required(ErrorMessage = "Inserte el campo ISBN")]
        [Range(1, 9999999999999, ErrorMessage = "Longitud inválida. Se admite el rango de 0-999999999999")]
        public int ISBN { get; set; }

        [Required(ErrorMessage = "Inserte la cantidad de páginas")]
        [Range(0, 1500, ErrorMessage = "La longitud no alcanza el mínimo permitido")]
        public int NumPags { get; set; }

        

    }
}