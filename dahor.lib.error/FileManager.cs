using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

using dahor.lib.error.Resources;

namespace dahor.lib.error
{
    internal class FileManager
    {
        internal static void EscribirRegistroError(string Path, string Fecha, string Mensaje, string StackTrace)
        {
            StreamWriter str = null;
            try
            {
                str = File.AppendText(Path);
                str.WriteLine(string.Format(FicheroError.registro_error_fecha, Fecha));
                str.WriteLine(string.Format(FicheroError.registro_error_Message, Mensaje));
                str.WriteLine(string.Format(FicheroError.registro_error_Trace, StackTrace));
                str.Write(str.NewLine);
                str.Write(str.NewLine);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (str != null)
                    str.Close();
            }
        }

        internal static bool ExisteFichero(string path)
        {
            return File.Exists(path);
        }

        internal static long TamanyoFichero(string path)
        {
            long lRetorno = 0;
            if (File.Exists(path))
             lRetorno = new FileInfo(path).Length;
            return lRetorno;
        }

        internal static void BorrarFichero(string path)
        {
            File.Delete(path);
        }
    }
}
