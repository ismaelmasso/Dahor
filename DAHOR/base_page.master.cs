using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Configuration;
using System.Web.Security;
using System.Configuration;
using System.Net.Configuration;
 
public partial class base_page : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        EncryptMailSettings();
    }

    /// <summary>
    /// Método para encriptar la sección de configuración de la cuenta de correo
    /// </summary>
    protected void EncryptMailSettings()
    {
        Configuration config = WebConfigurationManager.OpenWebConfiguration(Request.ApplicationPath);        
        MailSettingsSectionGroup settings = (System.Net.Configuration.MailSettingsSectionGroup)
                                            config.GetSectionGroup("system.net/mailSettings");
        if (!settings.Smtp.SectionInformation.IsProtected)
        {
            settings.Smtp.SectionInformation.ProtectSection("RsaProtectedConfigurationProvider");
            config.Save();
        }
    }
}
