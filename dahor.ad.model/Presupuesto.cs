using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace dahor.ad.model
{
    public class Presupuesto
    {
        #region Atributos

        private Solicitante solicitante;
        private string empresa;
        private List<Centro> centros;
        private List<Servicio> servicios;
        private string consulta;

        #endregion

        #region Constructor

        public Presupuesto()
        {
        }

        public Presupuesto(string Nombre, string Apellidos, string Telefono, string Direccion, string Poblacion, string CP,
                           string Hora, List<Centro> Centros, List<Servicio> Servicios, string Consulta, string EMail, string Empresa)
        {
            solicitante = new Solicitante(Nombre, Apellidos, Telefono, Direccion, Poblacion, CP, Hora, EMail);
            empresa = Empresa;
            centros = Centros;
            servicios = Servicios;
            consulta = Consulta;
        }

        public Presupuesto(string Nombre, string Apellidos, string Telefono, string Direccion, string Poblacion, string CP,
                           string Hora, string Centros, string Servicios, string Consulta, string EMail, string Empresa)
        {
            solicitante = new Solicitante(Nombre, Apellidos, Telefono, Direccion, Poblacion, CP, Hora, EMail);
            empresa = Empresa;
            centros = obtenerListaCentros(Centros);
            servicios = obtenerListaServicios(Servicios);
            consulta = Consulta;
        }

        #endregion

        #region Propiedades

        public string Empresa
        {
            get { return empresa; }
            set { empresa = value; }
        }

        public List<Centro> Centros
        {
            get { return centros; }
            set { centros = value; }
        }

        public List<Servicio> Servicios
        {
            get { return servicios; }
            set { servicios = value; }
        }

        public Solicitante Solicitante
        {
            get { return solicitante; }
            set { solicitante = value; }
        }

        public string Consulta
        {
            get { return consulta; }
            set { consulta = value; }
        }

        #endregion

        #region Metodos Privados

        private List<Centro> obtenerListaCentros(string Centros)
        {
            List<Centro> lc = new List<Centro>();
            string[] sArrayCentros = Centros.Split(',');
            for (int i = 0; i < sArrayCentros.Length; i++)
                lc.Add(new Centro(sArrayCentros[i]));
            return lc;
        }

        private List<Servicio> obtenerListaServicios(string Servicios)
        {
            List<Servicio> lc = new List<Servicio>();
            string[] sArrayServicios = Servicios.Split(',');
            for (int i = 0; i < sArrayServicios.Length; i++)
                lc.Add(new Servicio(sArrayServicios[i]));
            return lc;
        }

        #endregion
    }
}
