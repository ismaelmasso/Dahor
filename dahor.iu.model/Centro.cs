using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace dahor.iu.model
{
    public class Centro
    {
        #region Atributos

        private string nombre;
        private short codigo;

        #endregion

        #region Constructor

        public Centro()
        {
        }

        public Centro(string Centro)
        {
            nombre = Centro;
        }

        public Centro(string Centro, short Codigo)
        {
            nombre = Centro;
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
