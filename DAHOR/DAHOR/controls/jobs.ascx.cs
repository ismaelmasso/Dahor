using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Text;

using dahor.iu.model;
using dahor.iu;
using dahor.lib.error;
using Resources;

namespace DAHOR.controls
{
    public partial class jobs : contenido
    {
        #region Eventos

        protected void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);
            configRadioButtonExp();
        }


        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            DateTime dtFecNac = DateTime.ParseExact(tbFecNac.Text, Generics.date_format, CultureInfo.InvariantCulture);
            Candidatura cand = new Candidatura(tbNombre.Text, tbApell.Text, dtFecNac, tbNac.Text, tbTelefono.Text, tbEmail.Text,
                                               obtenerTipoEmpleo(), tbObserv.Text, (rblExperiencia.SelectedValue == "si")? tbExperiencia.Text : string.Empty);
            //Envio Por correo
            try { IU_DAHOR.EnviarMail(cand); }
            catch (Exception ex) { DAHOR_ERROR.RegistrarError(ex); throw ex; }
            //Registro de los datos
            try { IU_DAHOR.InsertarCandidatura(cand); }
            catch (Exception ex) { DAHOR_ERROR.RegistrarError(ex); }
            //Proceso finalizado correctamente
            Response.Redirect(Generics.pagejobs);
        }

        #endregion

        #region Métodos Privados

        #region Formateo de datos

        private string obtenerTipoEmpleo()
        {
            StringBuilder sbCentros = new StringBuilder();
            //Recojemos los datos del combo de tipos de puesto
            for (int i = 0; i < cblTipoPuesto.Items.Count; i++)
                if (cblTipoPuesto.Items[i].Selected)
                    sbCentros.Append(string.Format("{0},", cblTipoPuesto.Items[i].Text));
            if (sbCentros.Length > 0)
                sbCentros.Remove(sbCentros.Length - 1, 1);
            return sbCentros.ToString();
        }

        #endregion

        #region Configuracion de Entorno

        private void configRadioButtonExp()
        {
            rblExperiencia.Attributes.Add("onclick", string.Format("{0}('{1}',{2},'{3}','{4}')", Generics.func_configTextoExperiencia,
                rblExperiencia.ClientID, rblExperiencia.Items.Count, tbExperiencia.ClientID, rfvTextoExp.ClientID));
        }

        #endregion

        #endregion

    }
}