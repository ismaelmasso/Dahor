using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace dahor.ln.model
{
    public class Solicitante
    {
        #region Atributos

        private string nombre;
        private string apellidos;
        private string direccion;
        private string poblacion;
        private string cp;
        private string telefono;
        private string email;
        private string hora;

        #endregion

        #region Constructor

        public Solicitante()
        {
        }

        public Solicitante(string Nombre, string Apellidos, string Telefono, string Direccion, string Poblacion, string CP,
                       string Hora, string EMail)
        {
            nombre = Nombre;
            apellidos = Apellidos;
            telefono = Telefono;
            direccion = Direccion;
            poblacion = Poblacion;
            cp = CP;
            hora = Hora;
            email = EMail;
        }

        #endregion

        #region Propiedades

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public string Apellidos
        {
            get { return apellidos; }
            set { apellidos = value; }
        }

        public string Telefono
        {
            get { return telefono; }
            set { telefono = value; }
        }

        public string Direccion
        {
            get { return direccion; }
            set { direccion = value; }
        }

        public string Poblacion
        {
            get { return poblacion; }
            set { poblacion = value; }
        }

        public string CP
        {
            get { return cp; }
            set { cp = value; }
        }

        public string Hora
        {
            get { return hora; }
            set { hora = value; }
        }

        public string EMail
        {
            get { return email; }
            set { email = value; }
        }

        #endregion
    }
}
