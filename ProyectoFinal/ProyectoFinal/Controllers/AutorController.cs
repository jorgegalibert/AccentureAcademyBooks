using ProyectoFinal.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProyectoFinal.Controllers
{
    public class AutorController : Controller
    {

        private AccentureAcademyBooksEntities db;
        public AutorController()
        {

            this.db = new AccentureAcademyBooksEntities();
        }

        public ActionResult Listar()
        {
            List<Autor> autores = this.db.Autor.ToList();
            this.ViewBag.TituloPagina = "Autores";
            return View(autores);
        }




    }
}