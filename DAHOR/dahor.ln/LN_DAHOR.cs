using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using dahor.ad.ef;
using dahor.ln.model;

namespace dahor.ln
{
    public class LN_DAHOR
    {
        #region Métodos publicos

        #region Inserciones

        public static void InsertarPresupuesto(ln.model.Presupuesto presup)
        {
            AD_DAHOR_EF.InsertInfoPresup(Transform.TransformarPresupuesto(presup));
        }

        public static void InsertarCandidatura(ln.model.Candidatura candidatura)
        {
            AD_DAHOR_EF.InsertCandidatura(Transform.TransformarCandidatura(candidatura));
        }

        #endregion

        #region Consultas

        public static List<Centro> ObtenerTiposCentro()
        {
            return Transform.TransformarListaCentros(AD_DAHOR_EF.GetTiposCentro());
        }

        public static List<Servicio> ObtenerTiposServicio()
        {
            return Transform.TransformarListaServicios(AD_DAHOR_EF.GetTiposServicio());
        }

        public static List<Puesto> ObtenerTiposPuesto()
        {
            return Transform.TransformarListaPuestos(AD_DAHOR_EF.GetTiposPuesto());
        }

        #endregion

        #endregion
    }
}
