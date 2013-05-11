using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DAHOR.controls
{
    /// <summary>
    /// Clase base para los controles. Implementa operaciones comunes
    /// </summary>
    public class contenido : System.Web.UI.UserControl
    {
        #region Eventos

        protected void Page_Load(object sender, EventArgs e)
        {
            cargaSeccion(HttpContext.Current.Request.QueryString[Resources.Generics.param_aptdo]);
        }

        #endregion

        #region Métodos privados

        /// <summary>
        /// Carga la seccion indicada
        /// </summary>
        /// <param name="sSeccion"></param>
        protected void cargaSeccion(string sSeccion)
        {
            Control ctrAptdo = FindControl(sSeccion);
            if (ctrAptdo != null && ctrAptdo is Panel)
                ((Panel)ctrAptdo).Visible = true;
        }

        #endregion
    }
}
