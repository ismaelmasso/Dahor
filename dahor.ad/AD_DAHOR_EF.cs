using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using dahor.ad.model;

namespace dahor.ad.ef
{
    public class AD_DAHOR_EF
    {
        #region Métodos Públicos

        #region Inserción de información

        /// <summary>
        /// Inserta el presupuesto y toda su información derivada (Solicitantes y Empresas)
        /// </summary>
        /// <param name="presup"></param>
        public static void InsertInfoPresup(Presupuesto presup)
        {
            SOLICITANTES sol = getInfoSolicitante(presup);
            PRESUPUESTOS presupDB = getInfoPresup(presup, ref sol);
            saveInfo(ref presupDB, ref sol);
        }

        /// <summary>
        /// Inserción de una candidatura
        /// </summary>
        /// <param name="candidatura"></param>
        public static void InsertCandidatura(Candidatura candidatura)
        {
            CANDIDATURAS dbCand = getInfoCandidatura(candidatura);
            saveInfo(dbCand);
        }

        #endregion

        #region Obtención de datos

        public static List<Centro> GetTiposCentro()
        {
            //GetCandidaturas(new Candidatura(string.Empty,string.Empty,new DateTime(),string.Empty,string.Empty,string.Empty,string.Empty,string.Empty,string.Empty));

            List<Centro> lc = new List<Centro>();
            DAHOREntities dEnt = new DAHOREntities();
            var lTc = from tc
                      in dEnt.TIPOS_CENTRO
                      select new { tc.Codigo, tc.Nombre };
            foreach (var ltipocentro in lTc)
                lc.Add(new Centro(ltipocentro.Nombre, ltipocentro.Codigo));
            return lc;
        }

        public static List<Centro> GetTiposCentro(Centro centro)
        {
            List<Centro> lc = new List<Centro>();
            DAHOREntities dEnt = new DAHOREntities();
            var lTc = from tc in dEnt.TIPOS_CENTRO
                      where tc.Nombre.Contains(centro.Nombre)
                      select new { tc.Codigo, tc.Nombre };
            foreach (var ltipocentro in lTc)
                lc.Add(new Centro(ltipocentro.Nombre, ltipocentro.Codigo));
            return lc;
        }

        public static List<Servicio> GetTiposServicio()
        {
            List<Servicio> lc = new List<Servicio>();
            DAHOREntities dEnt = new DAHOREntities();
            var lTs = from tc
                      in dEnt.TIPOS_SERVICIO
                      select new { tc.Codigo, tc.Nombre };
            foreach (var ltiposerv in lTs)
                lc.Add(new Servicio(ltiposerv.Nombre, ltiposerv.Codigo));
            return lc;
        }

        public static List<Servicio> GetTiposServicio(Servicio servicio)
        {
            List<Servicio> lc = new List<Servicio>();
            DAHOREntities dEnt = new DAHOREntities();
            var lTs = from tc in dEnt.TIPOS_SERVICIO
                      where tc.Nombre.Contains(servicio.Nombre)
                      select new { tc.Codigo, tc.Nombre };
            foreach (var ltiposerv in lTs)
                lc.Add(new Servicio(ltiposerv.Nombre, ltiposerv.Codigo));
            return lc;
        }

        public static List<Puesto> GetTiposPuesto()
        {
            List<Puesto> lc = new List<Puesto>();
            DAHOREntities dEnt = new DAHOREntities();
            var lTs = from tc
                      in dEnt.TIPOS_EMPLEO
                      select new { tc.Codigo, tc.Tipo };
            foreach (var ltipoemp in lTs)
                lc.Add(new Puesto(ltipoemp.Tipo, ltipoemp.Codigo));
            return lc;
        }

        public static List<Puesto> GetTiposPuesto(Puesto puesto)
        {
            List<Puesto> lc = new List<Puesto>();
            DAHOREntities dEnt = new DAHOREntities();
            var lTs = from tc in dEnt.TIPOS_EMPLEO
                      where tc.Tipo.Contains(puesto.Nombre)
                      select new { tc.Codigo, tc.Tipo };
            foreach (var ltipoemp in lTs)
                lc.Add(new Puesto(ltipoemp.Tipo, ltipoemp.Codigo));
            return lc;
        }

        public static List<Candidatura> GetCandidaturas()
        {
            List<Candidatura> lc = new List<Candidatura>();
            DAHOREntities dEnt = new DAHOREntities();
            var lCand = from tc in dEnt.CANDIDATURAS
                        select new
                        {
                            tc.Id,
                            tc.Nombre,
                            tc.Apellidos,
                            tc.Fecha_Nacimiento,
                            tc.Nacionalidad,
                            tc.Telefono,
                            tc.EMail,
                            tc.Puestos,
                            tc.Experiencia,
                            tc.Observaciones
                        };
            foreach (var cand in lCand)
                lc.Add(new Candidatura(cand.Nombre, cand.Apellidos, cand.Fecha_Nacimiento, cand.Nacionalidad, cand.Telefono,
                                       cand.EMail, cadenaFromBDToObject(cand.Puestos), cand.Observaciones, cand.Experiencia));
            return lc;
        }

        public static List<Candidatura> GetCandidaturas(Candidatura candidatura)
        {
            List<Candidatura> lc = new List<Candidatura>();
            DAHOREntities dEnt = new DAHOREntities();
            var query = from cnd in dEnt.CANDIDATURAS.AsEnumerable()
                        where ContainsStringLambda(cnd.Nombre, candidatura.Nombre) //&&
                              //ContainsStringLambda(cnd.Apellidos,candidatura.Apellidos) //&&
                              //cnd.Fecha_Nacimiento.Equals((candidatura.Fecha_Nacimiento == null) ? cnd.Fecha_Nacimiento : candidatura.Fecha_Nacimiento) &&
                              //cnd.Nacionalidad.Contains(string.IsNullOrEmpty(candidatura.Nacionalidad) ? cnd.Nacionalidad : candidatura.Nacionalidad) &&
                              //cnd.Telefono.Contains(string.IsNullOrEmpty(candidatura.Telefono) ? cnd.Telefono : candidatura.Telefono) &&
                              //cnd.EMail.Contains(string.IsNullOrEmpty(candidatura.EMail) ? cnd.EMail : candidatura.EMail) &&
                              //includePuestos(cnd.Puestos, candidatura.Tipos_Empleo) &&
                              //cnd.Experiencia.Contains(string.IsNullOrEmpty(candidatura.Experiencia) ? cnd.Experiencia : candidatura.Experiencia) &&
                              //cnd.Observaciones.Contains(string.IsNullOrEmpty(candidatura.Observaciones) ? cnd.Observaciones : candidatura.Observaciones)
                        select new
                        {
                            cnd.Nombre,
                            cnd.Apellidos,
                            cnd.Fecha_Nacimiento,
                            cnd.Nacionalidad,
                            cnd.Telefono,
                            cnd.EMail,
                            cnd.Puestos,
                            cnd.Observaciones,
                            cnd.Experiencia
                        };

            return lc;
        }

        /// <summary>
        /// Devuelve true si todos los puestos del la lista de puestos están incluidos
        /// en el array tipos_empleo
        /// </summary>
        /// <param name="tipos_empleo"></param>
        /// <param name="puestos"></param>
        /// <returns></returns>
        private static bool includePuestos(string tipos_empleo, List<Puesto> puestos)
        {
            bool bRetorno = true;
            if (puestos != null && puestos.Count > 0)
                for (int i = 0; i < puestos.Count && bRetorno; i++)
                    if (!tipos_empleo.Contains(puestos[i].Nombre))
                        bRetorno = false;
            return bRetorno;
        }

        /// <summary>
        /// Indica si campoBD contiene str. Esto se ha de hacer a parte porque las funciones lambda no reconocen
        /// Nombre.Contains(Nombre) cuando Nombre es vacío.
        /// </summary>
        /// <param name="campoBD"></param>
        /// <param name="str2"></param>
        /// <returns></returns>
        private static bool ContainsStringLambda(string campoBD, string str)
        {
            bool bRetorno = true;
            if (!(string.IsNullOrEmpty(campoBD) && string.IsNullOrEmpty(str)))
                bRetorno = campoBD.Contains(str);
            return bRetorno;
        }

        #endregion

        #endregion

        #region Métodos Privados

        #region Métodos para la obtencion de objetos de la BD

        private static SOLICITANTES getInfoSolicitante(Presupuesto presup)
        {
            SOLICITANTES cli = SOLICITANTES.CreateSOLICITANTES(0, presup.Solicitante.Nombre, presup.Solicitante.Telefono, presup.Solicitante.EMail);
            cli.Apellidos = presup.Solicitante.Apellidos;
            cli.Direccion = presup.Solicitante.Direccion;
            cli.CP = presup.Solicitante.CP;
            cli.Poblacion = presup.Solicitante.Poblacion;
            cli.Horario = presup.Solicitante.Hora;
            return cli;
        }

        private static PRESUPUESTOS getInfoPresup(Presupuesto presup, ref SOLICITANTES cli)
        {
            PRESUPUESTOS presupDB = PRESUPUESTOS.CreatePRESUPUESTOS(0);
            //Inserción de la referencia al Solicitante, empresa y consulta;
            presupDB.SOLICITANTESReference.Value = cli;
            presupDB.Empresa = presup.Empresa;
            presupDB.Consulta = presup.Consulta;
            //Inserción de los campos de tipo de centro
            string sArray = string.Empty;
            for (int i = 0; i < presup.Centros.Count; i++)
                sArray = string.Concat(sArray, cadenaSharp(i, presup.Centros.Count, presup.Centros[i].Nombre));
            presupDB.Tipos_Centro = sArray;
            //Inserción de los campos de tipo de Servicio
            sArray = string.Empty;
            for (int i = 0; i < presup.Servicios.Count; i++)
                sArray = string.Concat(sArray, cadenaSharp(i, presup.Servicios.Count, presup.Servicios[i].Nombre));
            presupDB.Tipos_Servicio = sArray;
            return presupDB;
        }

        private static CANDIDATURAS getInfoCandidatura(Candidatura candidatura)
        {
            CANDIDATURAS dbCand = CANDIDATURAS.CreateCANDIDATURAS(0, candidatura.Nombre, candidatura.Fecha_Nacimiento, candidatura.Nacionalidad, candidatura.Telefono, candidatura.EMail);
            dbCand.Apellidos = candidatura.Apellidos; ;
            dbCand.Experiencia = candidatura.Experiencia;
            dbCand.Observaciones = candidatura.Observaciones;
            //Inserción de los campos de tipo de centro
            string sArray = string.Empty;
            for (int i = 0; i < candidatura.Tipos_Empleo.Count; i++)
                sArray = string.Concat(sArray, cadenaSharp(i, candidatura.Tipos_Empleo.Count, candidatura.Tipos_Empleo[i].Nombre));
            dbCand.Puestos = sArray;
            return dbCand;
        }

        #endregion

        #region Inserción en la base de datos

        private static void saveInfo(ref PRESUPUESTOS presup, ref SOLICITANTES cli)
        {
            DAHOREntities eDB = new DAHOREntities();
            eDB.AddToPRESUPUESTOS(presup);
            eDB.SaveChanges();
        }

        private static void saveInfo(CANDIDATURAS cand)
        {
            DAHOREntities eDB = new DAHOREntities();
            eDB.AddToCANDIDATURAS(cand);
            eDB.SaveChanges();
        }

        #endregion

        #region Métodos Auxiliares

        private static string cadenaSharp(int i, int count, string valor)
        {
            string sArray = string.Empty;
            if (i < count - 1)
                sArray = string.Format("{0}#", valor);
            else
                sArray = valor;
            return sArray;
        }

        private static string cadenaFromBDToObject(string cadena)
        {
            return cadena.Replace('#', ',');
        }

        #endregion

        #endregion

    }
}
