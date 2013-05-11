using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

using dahor.lib.error.Resources;

namespace dahor.lib.error
{
    public class DAHOR_ERROR
    {
        public static void RegistrarError(Exception exception)
        {
            string sNombreCompleto = HttpContext.Current.Server.MapPath(FicheroError.nombre_completo);
            if (FileManager.TamanyoFichero(sNombreCompleto) >= long.Parse(FicheroError.long_max))
                FileManager.BorrarFichero(sNombreCompleto);
            FileManager.EscribirRegistroError(sNombreCompleto, DateTime.Now.ToString(), exception.Message, exception.StackTrace);
        }
    }
}
