using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using dahor.ln.model;
using dahor.ad.model;

namespace dahor.ln
{
    public class Transform
    {
        #region Métodos públicos

        #region Presupuesto

        public static ad.model.Presupuesto TransformarPresupuesto(ln.model.Presupuesto from)
        {
            ad.model.Presupuesto to = new ad.model.Presupuesto();
            to.Solicitante = TransformarSolicitante(from.Solicitante);
            to.Empresa = from.Empresa;
            to.Centros = TransformarListaCentros(from.Centros);
            to.Servicios = TransformarListaServicios(from.Servicios);
            to.Consulta = from.Consulta;
            return to;
        }

        public static ln.model.Presupuesto TransformarPresupuesto(ad.model.Presupuesto from)
        {
            ln.model.Presupuesto to = new ln.model.Presupuesto();
            to.Solicitante = TransformarSolicitante(from.Solicitante);
            to.Empresa = from.Empresa;
            to.Centros = TransformarListaCentros(from.Centros);
            to.Servicios = TransformarListaServicios(from.Servicios);
            to.Consulta = from.Consulta;
            return to;
        }

        #endregion

        #region Solicitante

        public static ad.model.Solicitante TransformarSolicitante(ln.model.Solicitante from)
        {
            ad.model.Solicitante to = new ad.model.Solicitante();
            to.Apellidos = from.Apellidos;
            to.CP = from.CP;
            to.Direccion = from.Direccion;
            to.EMail = from.EMail;
            to.Hora = from.Hora;
            to.Nombre = from.Nombre;
            to.Poblacion = from.Poblacion;
            to.Telefono = from.Telefono;
            return to;
        }

        public static ln.model.Solicitante TransformarSolicitante(ad.model.Solicitante from)
        {
            ln.model.Solicitante to = new ln.model.Solicitante();
            to.Apellidos = from.Apellidos;
            to.CP = from.CP;
            to.Direccion = from.Direccion;
            to.EMail = from.EMail;
            to.Hora = from.Hora;
            to.Nombre = from.Nombre;
            to.Poblacion = from.Poblacion;
            to.Telefono = from.Telefono;
            return to;
        }

        #endregion

        #region Centro

        public static ad.model.Centro TransformarCentro(ln.model.Centro from)
        {
            ad.model.Centro to = new ad.model.Centro();
            to.Nombre = from.Nombre;
            to.Codigo = from.Codigo;
            return to;
        }

        public static ln.model.Centro TransformarCentro(ad.model.Centro from)
        {
            ln.model.Centro to = new ln.model.Centro();
            to.Nombre = from.Nombre;
            to.Codigo = from.Codigo;
            return to;
        }

        public static List<ln.model.Centro> TransformarListaCentros(List<ad.model.Centro> from)
        {
            List<ln.model.Centro> to = new List<ln.model.Centro>();
            foreach (ad.model.Centro cent in from)
                to.Add(TransformarCentro(cent));
            return to;
        }

        public static List<ad.model.Centro> TransformarListaCentros(List<ln.model.Centro> from)
        {
            List<ad.model.Centro> to = new List<ad.model.Centro>();
            foreach (ln.model.Centro cent in from)
                to.Add(TransformarCentro(cent));
            return to;
        }

        #endregion

        #region Servicio

        public static ad.model.Servicio TransformarServicio(ln.model.Servicio from)
        {
            ad.model.Servicio to = new ad.model.Servicio();
            to.Nombre = from.Nombre;
            to.Codigo = from.Codigo;
            return to;
        }

        public static ln.model.Servicio TransformarServicio(ad.model.Servicio from)
        {
            ln.model.Servicio to = new ln.model.Servicio();
            to.Nombre = from.Nombre;
            to.Codigo = from.Codigo;
            return to;
        }

        public static List<ln.model.Servicio> TransformarListaServicios(List<ad.model.Servicio> from)
        {
            List<ln.model.Servicio> to = new List<ln.model.Servicio>();
            foreach (ad.model.Servicio serv in from)
                to.Add(TransformarServicio(serv));
            return to;
        }

        public static List<ad.model.Servicio> TransformarListaServicios(List<ln.model.Servicio> from)
        {
            List<ad.model.Servicio> to = new List<ad.model.Servicio>();
            foreach (ln.model.Servicio serv in from)
                to.Add(TransformarServicio(serv));
            return to;
        }

        #endregion

        #region Puesto

        public static ad.model.Puesto TransformarPuestos(ln.model.Puesto from)
        {
            ad.model.Puesto to = new ad.model.Puesto();
            to.Nombre = from.Nombre;
            to.Codigo = from.Codigo;
            return to;
        }

        public static ln.model.Puesto TransformarPuestos(ad.model.Puesto from)
        {
            ln.model.Puesto to = new ln.model.Puesto();
            to.Nombre = from.Nombre;
            to.Codigo = from.Codigo;
            return to;
        }

        public static List<ln.model.Puesto> TransformarListaPuestos(List<ad.model.Puesto> from)
        {
            List<ln.model.Puesto> to = new List<ln.model.Puesto>();
            foreach (ad.model.Puesto serv in from)
                to.Add(TransformarPuestos(serv));
            return to;
        }

        public static List<ad.model.Puesto> TransformarListaPuestos(List<ln.model.Puesto> from)
        {
            List<ad.model.Puesto> to = new List<ad.model.Puesto>();
            foreach (ln.model.Puesto serv in from)
                to.Add(TransformarPuestos(serv));
            return to;
        }
        #endregion

        #region Candidatura

        public static ad.model.Candidatura TransformarCandidatura(ln.model.Candidatura from)
        {
            ad.model.Candidatura to = new ad.model.Candidatura();
            to.Nombre = from.Nombre;
            to.Apellidos = from.Apellidos;
            to.Fecha_Nacimiento = from.Fecha_Nacimiento;
            to.Nacionalidad = from.Nacionalidad;
            to.EMail = from.EMail;
            to.Nombre = from.Nombre;
            to.Telefono = from.Telefono;
            to.Tipos_Empleo = TransformarListaPuestos(from.Tipos_Empleo);
            to.Experiencia = from.Experiencia;
            to.Observaciones = from.Observaciones;
            return to;
        }

        public static ln.model.Candidatura TransformarCandidatura(ad.model.Candidatura from)
        {
            ln.model.Candidatura to = new ln.model.Candidatura();
            to.Nombre = from.Nombre;
            to.Apellidos = from.Apellidos;
            to.Fecha_Nacimiento = from.Fecha_Nacimiento;
            to.Nacionalidad = from.Nacionalidad;
            to.EMail = from.EMail;
            to.Nombre = from.Nombre;
            to.Telefono = from.Telefono;
            to.Tipos_Empleo = TransformarListaPuestos(from.Tipos_Empleo);
            to.Experiencia = from.Experiencia;
            to.Observaciones = from.Observaciones;
            return to;
        }

        #endregion

        #endregion
    }
}
