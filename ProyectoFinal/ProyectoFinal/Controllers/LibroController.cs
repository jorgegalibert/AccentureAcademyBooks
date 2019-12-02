using ProyectoFinal.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProyectoFinal.Controllers
{
    public class LibroController : Controller
    {
        //Creo un constructor con el db para que todas las acciones tengan disponible al db para utilizar.
        private AccentureAcademyBooksEntities db;
        public LibroController()
        {

            this.db = new AccentureAcademyBooksEntities();
        }
        
        public ActionResult Listar()
        {
            List<Libro> libros = this.db.Libro.ToList();//Creo la lista que contiene la clase Libros
            this.ViewBag.TituloPagina = "Libros";
            return View(libros);//Retorno en la vista el parametro Libros
        }


        public ActionResult Editar(int id)
        {
            this.ViewBag.TituloPagina = "Editar Libro";
            Libro l = this.db.Libro.Find(id);
            ViewBag.Autor = new SelectList(db.Autor, "Nombre","Nombre");
            ViewBag.Genero = new SelectList(db.Genero, "Genre", "Genre");
            ViewBag.Editorial = new SelectList(db.Editorial, "Nombre", "Nombre");
            

            return View(l);
        }

        [HttpPost]
        public ActionResult Editar(Libro libro)
        {
            this.db.Libro.Attach(libro);
            this.db.Entry(libro).State = System.Data.Entity.EntityState.Modified;
            ViewBag.Autor = new SelectList(db.Autor, "Nombre","Nombre", libro.Autor);
            ViewBag.Genero = new SelectList(db.Genero, "Genre", "Genre", libro.Genero);
            ViewBag.Editorial = new SelectList(db.Editorial, "Nombre", "Nombre",libro.Editorial);
            
            this.db.SaveChanges();

            return RedirectToAction("Listar");
        }

        public ActionResult Agregar()
        {
            this.ViewBag.TituloPagina = "Agregar libro";
            //Opcion 1: pasar un objeto vacio
            Libro l = new Libro();

            ViewBag.Autor = new SelectList(db.Autor, "Nombre", "Nombre");
            ViewBag.Genero = new SelectList(db.Genero, "Genre", "Genre");
            ViewBag.Editorial = new SelectList(db.Editorial, "Nombre", "Nombre");
            return View("Editar", l);
        }

        [HttpPost]
        public ActionResult Agregar(Libro libro)
        {
            this.db.Libro.Add(libro);

            ViewBag.Autor = new SelectList(db.Autor, "Nombre", "Nombre", libro.Autor);
            ViewBag.Genero = new SelectList(db.Genero, "Genre", "Genre", libro.Genero);
            ViewBag.Editorial = new SelectList(db.Editorial, "Nombre", "Nombre", libro.Editorial);
            
            this.db.SaveChanges();
            return RedirectToAction("Listar");
        }

        public ActionResult Eliminar(int id)
        {
            Libro movie = this.db.Libro.Find(id);
            this.db.Libro.Remove(movie);
            this.db.SaveChanges();
            return RedirectToAction("Listar");
        }

        
    }
}