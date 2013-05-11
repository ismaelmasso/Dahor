using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace dahor.ln.model
{
    public class Candidatura
    {
        #region Atributos

        private string nombre;
        private string apellidos;
        private DateTime fecha_nacimiento;
        private string nacionalidad;
        private string telefono;
        private string email;
        private List<Puesto> tipos_empleo;
        private string experiencia;
        private string observaciones;

        #endregion

        #region Constructor

        public Candidatura()
        {
        }

        public Candidatura(string Nombre, string Apellidos, DateTime Fecha_Nacimiento, string Nacionalidad,
                           string Telefono, string Email, string Tipos_Empleo, string Observaciones, string Experiencia)
        {
            nombre = Nombre;
            apellidos = Apellidos;
            fecha_nacimiento = Fecha_Nacimiento;
            nacionalidad = Nacionalidad;
            telefono = Telefono;
            email = Email;
            tipos_empleo = obtenerListaPuestos(Tipos_Empleo);
            experiencia = Experiencia;
            observaciones = Observaciones;
        }

        public Candidatura(string Nombre, string Apellidos, DateTime Fecha_Nacimiento, string Nacionalidad,
                           string Telefono, string Email, List<Puesto> Tipos_Empleo, string Observaciones, string Experiencia)
        {
            nombre = Nombre;
            apellidos = Apellidos;
            fecha_nacimiento = Fecha_Nacimiento;
            nacionalidad = Nacionalidad;
            telefono = Telefono;
            email = Email;
            tipos_empleo = Tipos_Empleo;
            experiencia = Experiencia;
            observaciones = Observaciones;
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

        public DateTime Fecha_Nacimiento
        {
            get { return fecha_nacimiento; }
            set { fecha_nacimiento = value; }
        }

        public string Nacionalidad
        {
            get { return nacionalidad; }
            set { nacionalidad = value; }
        }

        public string Telefono
        {
            get { return telefono; }
            set { telefono = value; }
        }

        public string EMail
        {
            get { return email; }
            set { email = value; }
        }

        public List<Puesto> Tipos_Empleo
        {
            get { return tipos_empleo; }
            set { tipos_empleo = value; }
        }

        public string Observaciones
        {
            get { return observaciones; }
            set { observaciones = value; }
        }

        public string Experiencia
        {
            get { return experiencia; }
            set { experiencia = value; }
        }

        #endregion

        #region Metodos Privados

        private List<Puesto> obtenerListaPuestos(string Tipos_Empleo)
        {
            List<Puesto> lc = new List<Puesto>();
            string[] sArrayPuestos = Tipos_Empleo.Split(',');
            for (int i = 0; i < sArrayPuestos.Length; i++)
                lc.Add(new Puesto(sArrayPuestos[i]));
            return lc;
        }

        #endregion
    }
}
