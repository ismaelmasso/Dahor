using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Resources;

namespace DAHOR
{
    public partial class Principal : System.Web.UI.Page
    {
        #region Eventos

        protected void Page_Load(object sender, EventArgs e)
        {
            loadInfo();
        }
        
        #endregion

        #region Métodos privados

        private void loadInfo()
        {
            Control ctrInfo = obtenerControl();
            phPrincipal.Controls.Add(ctrInfo);
        }

        private Control obtenerControl()
        {
            Control ctrRetorno = null;
            ctrRetorno = LoadControl(String.Format("~/controls/{0}.ascx", HttpContext.Current.Request.QueryString[Generics.param_info]));
            return ctrRetorno;
        }

        #endregion
    }
}
