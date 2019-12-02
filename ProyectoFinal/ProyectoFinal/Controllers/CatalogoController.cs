using ProyectoFinal.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProyectoFinal.Controllers
{
    public class CatalogoController : Controller
    {

        public ActionResult Listar()
        {
            AccentureAcademyBooksEntities db = new AccentureAcademyBooksEntities();
            this.ViewBag.TituloPagina = "Catálogo de libros";
            return View(db.Libro.ToList());
        }

        [HttpPost]
        public ActionResult Listar(ListarViewModel filtros)
        {
            AccentureAcademyBooksEntities db = new AccentureAcademyBooksEntities();

            IQueryable<Libro> qry = db.Libro;

            if (filtros.FiltroTitulo != null)
            {
                qry = qry.Where(lib => lib.Titulo.Contains(filtros.FiltroTitulo));
            }

            if (filtros.FiltroAutor.HasValue)
            {
                qry = qry.Where(lib =>
                    lib.EscritoPor.Any(
                           aut => aut.Id.Equals(filtros.FiltroAutor.Value)
                           )
                );
            }

            if (filtros.FiltroEditorial.HasValue)
            {
                qry = qry.Where(lib =>
                    lib.PublicadoPor.Any(
                           aut => aut.Id.Equals(filtros.FiltroAutor.Value)
                           )
                );
            }

            if (filtros.FiltroGenero.HasValue)
            {
                qry = qry.Where(lib =>
                    lib.GeneroLibro.Any(
                           aut => aut.Id.Equals(filtros.FiltroAutor.Value)
                           )
                );
            }

            return View(qry.ToList());
        }

    }
}