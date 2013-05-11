using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace dahor.ln.model
{
    public class Servicio
    {
        #region Atributos

        private string nombre;
        private short codigo;

        #endregion

        #region Constructo

        public Servicio()
        {
        }

        public Servicio(string Servicio)
        {
            nombre = Servicio;
        }

        public Servicio(string Servicio, short Codigo)
        {
            nombre = Servicio;
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
