using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace dahor.ln.model
{
    public class Empresa
    {
        #region Atributos

        private string nombre;

        #endregion

        #region Constructor

        public Empresa()
        {
        }

        public Empresa(string Nombre)
        {
            nombre = Nombre;
        }

        #endregion

        #region Propiedades

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        #endregion
    }
}
