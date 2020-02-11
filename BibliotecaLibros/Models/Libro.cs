using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BibliotecaLibros.Models
{
    public class Libro
    {
        public string Titulo { get; set; }
        public string Autor { get; set; }
        public string Descripción { get; set; }
        public string Imagen { get; set; }
        public int Stock { get; set; }
    }
}