using ProyectoFinal.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProyectoFinal.Controllers
{
    public class EditorialController : Controller
    {
        private AccentureAcademyBooksEntities db;
        public EditorialController()
        {

            this.db = new AccentureAcademyBooksEntities();
        }

        public ActionResult Listar()
        {
            List<Editorial> editoriales = this.db.Editorial.ToList();
            ViewBag.Libro = new SelectList(db.Libro, "Titulo", "Titulo");

            this.ViewBag.TituloPagina = "Editoriales";

            return View(editoriales);
        }



    }
}