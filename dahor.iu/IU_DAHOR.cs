using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using dahor.iu.mail;
using dahor.iu.model;
using dahor.ln.model;
using dahor.ln;

namespace dahor.iu
{
    public class IU_DAHOR
    {
        #region Métodos publicos

        #region Envio de correo

        public static void EnviarMail(iu.model.Presupuesto presup)
        {
            Mail.EnviarMail(presup);
        }

        public static void EnviarMail(iu.model.Candidatura candidatura)
        {
            Mail.EnviarMail(candidatura);
        }

        #endregion

        #region Inserciones

        public static void InsertarPresupuesto(iu.model.Presupuesto presup)
        {
            LN_DAHOR.InsertarPresupuesto(Transform.TransformarPresupuesto(presup));
        }

        public static void InsertarCandidatura(iu.model.Candidatura candidatura)
        {
            LN_DAHOR.InsertarCandidatura(Transform.TransformarCandidatura(candidatura));
        }

        #endregion

        #region Consultas

        public static List<iu.model.Centro> ObtenerTiposCentro()
        {
            return Transform.TransformarListaCentros(LN_DAHOR.ObtenerTiposCentro());
        }

        public static List<iu.model.Servicio> ObtenerTiposServicio()
        {
            return Transform.TransformarListaServicios(LN_DAHOR.ObtenerTiposServicio());
        }

        public static List<iu.model.Puesto> ObtenerTiposPuesto()
        {
            return Transform.TransformarListaPuestos(LN_DAHOR.ObtenerTiposPuesto());
        }

        #endregion

        #endregion
    }
}
