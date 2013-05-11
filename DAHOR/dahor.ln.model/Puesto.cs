using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace dahor.ln.model
{
    public class Puesto
    {
        #region Atributos

        private string nombre;
        private short codigo;

        #endregion

        #region Constructor

        public Puesto()
        {
        }

        public Puesto(string Nombre)
        {
            nombre = Nombre;
        }

        public Puesto(string Nombre, short Codigo)
        {
            nombre = Nombre;
            codigo = Codigo;
        }


        #endregion

        #region Propiedades

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public short Codigo
        {
            get { return codigo; }
            set { codigo = value; }
        }

        #endregion
    }
}
