﻿using System;
using System.Collections.Generic;

namespace Imagenes.Models
{
    public partial class Categoria
    {
        public Categoria()
        {
            Productos = new HashSet<Producto>();
        }

        public int Id { get; set; }
        public string Nombre { get; set; } = null!;
        public byte[]? Imagen { get; set; }

        public virtual ICollection<Producto> Productos { get; set; }
    }
}
