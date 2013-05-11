using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

using dahor.iu.model;
using dahor.iu;
using dahor.lib.error;

namespace DAHOR.controls
{
    public partial class presup : contenido
    {
        #region Eventos

        protected void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);
            registrarVbesGlobalesJavascript();
            configurarEntorno();
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Presupuesto pPresup = new dahor.iu.model.Presupuesto(tbNombre.Text, tbApell.Text, tbTelefono.Text, tbDirección.Text, tbPoblacion.Text,
                                  tbCP.Text, obtenerHora(), obtenerTipoCentro(), obtenerTipoServicio(), tbConsulta.Text,tbEmail.Text,tbEmpresa.Text);
            //Envio Por correo
            try { IU_DAHOR.EnviarMail(pPresup); }
            catch (Exception ex) { DAHOR_ERROR.RegistrarError(ex); throw ex; }
            //Registro de los datos
            try { IU_DAHOR.InsertarPresupuesto(pPresup); }
            catch (Exception ex) { DAHOR_ERROR.RegistrarError(ex); }
            //Proceso finalizado correctamente
            Response.Redirect(Resources.Generics.pagepresup);
        }

        #endregion

        #region Métodos privados

        #region Métodos para la configuración del entorno

        protected void configurarEntorno()
        {
            tbNombre.Focus();
        }

        #endregion

        #region Métodos para el registro de Scripts

        private void registrarVbesGlobalesJavascript()
        {
            StringBuilder sGlobalVbe = new StringBuilder();
            sGlobalVbe.AppendLine(String.Format("var {0} = '{1}';", Resources.Generics.vbe_nomHoraDesde, tbHoraConDesde.ClientID));
            sGlobalVbe.AppendLine(String.Format("var {0} = '{1}';", Resources.Generics.vbe_nomHoraHasta, tbHoraConHasta.ClientID));
            sGlobalVbe.AppendLine(String.Format("var {0} = '{1}';", Resources.Generics.vbe_ddlHorario, ddlHorario.ClientID));
            sGlobalVbe.AppendLine(String.Format("var {0} = '{1}';", Resources.Generics.vbe_btnEnvioMail, btnEnviar.ClientID));
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Vbes Globales", sGlobalVbe.ToString(), true);
        }

        private void registrarAtributos()
        {
            this.ddlHorario.Attributes.Add("onchange", "setHorarioVisible();");            
        }

        #endregion

        #region Métodos para el formateo de datos de presupuesto

        private string obtenerHora()
        {
            StringBuilder sHTML = new StringBuilder();
            if (!string.IsNullOrEmpty(tbHoraConDesde.Text) || !string.IsNullOrEmpty(tbHoraConHasta.Text))
            {
                string sHoraDesde = !string.IsNullOrEmpty(tbHoraConDesde.Text)? tbHoraConDesde.Text : "---";
                string sHoraHasta = !string.IsNullOrEmpty(tbHoraConHasta.Text) ? tbHoraConHasta.Text : "---";
                if (ddlHorario.SelectedValue != "-1")
                    sHTML.Append(string.Format("{0} de {1} a {2}", ddlHorario.SelectedItem.Text, sHoraDesde, sHoraHasta));
                else
                    sHTML.Append(string.Format("De {0} a {1}", sHoraDesde, sHoraHasta));
            }
            else
                if (ddlHorario.SelectedValue != "-1")
                    sHTML.Append(string.Format("{0}", ddlHorario.SelectedItem.Text));
                else
                    sHTML.Append("");
            return sHTML.ToString();
        }

        private string obtenerTipoCentro()
        {
            StringBuilder sbCentros = new StringBuilder();
            //Recojemos los datos del combo de inmuebles
            for (int i = 0; i < cblTipoInmueble.Items.Count; i++)
                if (cblTipoInmueble.Items[i].Selected)
                    sbCentros.Append(string.Format("{0},", cblTipoInmueble.Items[i].Text));
            if (sbCentros.Length > 0)
                sbCentros.Remove(sbCentros.Length - 1, 1);
            return sbCentros.ToString();
        }

        private string obtenerTipoServicio()
        {
            StringBuilder sbServicios = new StringBuilder();
            //Recojemos los datos del combo de inmuebles
            for (int i = 0; i < cblTipoServicio.Items.Count; i++)
                if (cblTipoServicio.Items[i].Selected)
                    sbServicios.Append(string.Format("{0},", cblTipoServicio.Items[i].Text));
            if (sbServicios.Length > 0)
                sbServicios.Remove(sbServicios.Length - 1, 1);
            return sbServicios.ToString();
        }

        #endregion

        #endregion
    }
}