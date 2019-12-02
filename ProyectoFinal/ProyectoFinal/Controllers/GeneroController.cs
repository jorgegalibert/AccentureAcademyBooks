using ProyectoFinal.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProyectoFinal.Controllers
{
    public class GeneroController : Controller
    {
        private AccentureAcademyBooksEntities db;
        public GeneroController()
        {

            this.db = new AccentureAcademyBooksEntities();
        }

        public ActionResult Listar()
        {
            List<Genero> generos = this.db.Genero.ToList();
            this.ViewBag.TituloPagina = "Géneros";

            return View(generos);
        }



    }
}