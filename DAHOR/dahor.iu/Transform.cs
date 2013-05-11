using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using dahor.iu.model;
using dahor.ln.model;

namespace dahor.iu
{
    public class Transform
    {
        #region Métodos públicos

        #region Presupuesto

        public static iu.model.Presupuesto TransformarPresupuesto(ln.model.Presupuesto from)
        {
            iu.model.Presupuesto to = new iu.model.Presupuesto();
            to.Solicitante = TransformarSolicitante(from.Solicitante);
            to.Empresa = from.Empresa;
            to.Centros = TransformarListaCentros(from.Centros);
            to.Servicios = TransformarListaServicios(from.Servicios);
            to.Consulta = from.Consulta;
            return to;
        }

        public static ln.model.Presupuesto TransformarPresupuesto(iu.model.Presupuesto from)
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

        public static iu.model.Solicitante TransformarSolicitante(ln.model.Solicitante from)
        {
            iu.model.Solicitante to = new iu.model.Solicitante();
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

        public static ln.model.Solicitante TransformarSolicitante(iu.model.Solicitante from)
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

        public static iu.model.Centro TransformarCentro(ln.model.Centro from)
        {
            iu.model.Centro to = new iu.model.Centro();
            to.Nombre = from.Nombre;
            to.Codigo = from.Codigo;
            return to;
        }

        public static ln.model.Centro TransformarCentro(iu.model.Centro from)
        {
            ln.model.Centro to = new ln.model.Centro();
            to.Nombre = from.Nombre;
            to.Codigo = from.Codigo;
            return to;
        }

        public static List<ln.model.Centro> TransformarListaCentros(List<iu.model.Centro> from)
        {
            List<ln.model.Centro> to = new List<ln.model.Centro>();
            foreach (iu.model.Centro cent in from)
                to.Add(TransformarCentro(cent));
            return to;
        }

        public static List<iu.model.Centro> TransformarListaCentros(List<ln.model.Centro> from)
        {
            List<iu.model.Centro> to = new List<iu.model.Centro>();
            foreach (ln.model.Centro cent in from)
                to.Add(TransformarCentro(cent));
            return to;
        }

        #endregion

        #region Servicio

        public static iu.model.Servicio TransformarServicio(ln.model.Servicio from)
        {
            iu.model.Servicio to = new iu.model.Servicio();
            to.Nombre = from.Nombre;
            to.Codigo = from.Codigo;
            return to;
        }

        public static ln.model.Servicio TransformarServicio(iu.model.Servicio from)
        {
            ln.model.Servicio to = new ln.model.Servicio();
            to.Nombre = from.Nombre;
            to.Codigo = from.Codigo;
            return to;
        }

        public static List<ln.model.Servicio> TransformarListaServicios(List<iu.model.Servicio> from)
        {
            List<ln.model.Servicio> to = new List<ln.model.Servicio>();
            foreach (iu.model.Servicio cent in from)
                to.Add(TransformarServicio(cent));
            return to;
        }

        public static List<iu.model.Servicio> TransformarListaServicios(List<ln.model.Servicio> from)
        {
            List<iu.model.Servicio> to = new List<iu.model.Servicio>();
            foreach (ln.model.Servicio cent in from)
                to.Add(TransformarServicio(cent));
            return to;
        }

        #endregion

        #region Puesto

        public static iu.model.Puesto TransformarPuesto(ln.model.Puesto from)
        {
            iu.model.Puesto to = new iu.model.Puesto();
            to.Nombre = from.Nombre;
            to.Codigo = from.Codigo;
            return to;
        }

        public static ln.model.Puesto TransformarPuesto(iu.model.Puesto from)
        {
            ln.model.Puesto to = new ln.model.Puesto();
            to.Nombre = from.Nombre;
            to.Codigo = from.Codigo;
            return to;
        }

        public static List<ln.model.Puesto> TransformarListaPuestos(List<iu.model.Puesto> from)
        {
            List<ln.model.Puesto> to = new List<ln.model.Puesto>();
            foreach (iu.model.Puesto cent in from)
                to.Add(TransformarPuesto(cent));
            return to;
        }

        public static List<iu.model.Puesto> TransformarListaPuestos(List<ln.model.Puesto> from)
        {
            List<iu.model.Puesto> to = new List<iu.model.Puesto>();
            foreach (ln.model.Puesto cent in from)
                to.Add(TransformarPuesto(cent));
            return to;
        }

        #endregion

        #region Candidatura

        public static iu.model.Candidatura TransformarCandidatura(ln.model.Candidatura from)
        {
            iu.model.Candidatura to = new iu.model.Candidatura();
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

        public static ln.model.Candidatura TransformarCandidatura(iu.model.Candidatura from)
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
