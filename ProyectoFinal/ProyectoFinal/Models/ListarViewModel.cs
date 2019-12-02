using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoFinal.Models
{
    public class ListarViewModel
    {
        public string FiltroTitulo { get; set; }
        public int? FiltroAutor { get; set; }
        public int? FiltroEditorial { get; set; }
        public int? FiltroGenero { get; set; }



    }
}