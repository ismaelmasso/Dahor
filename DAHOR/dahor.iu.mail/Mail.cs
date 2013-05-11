using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;

using dahor.mail.lib;
using dahor.iu.model;
using dahor.iu.mail.Resources;

namespace dahor.iu.mail
{
    public class Mail
    {
        #region Métodos públicos

        public static void EnviarMail(Presupuesto presupuesto)
        {
            TipoPresup eFormatoMail = (TipoPresup)Enum.Parse(typeof(TipoPresup), ConfigurationManager.AppSettings.Get(Resources.MailInfo.AppSettingTipoMailPresup));
            dahor.mail.lib.Mail.SendMail(ConfigurationManager.AppSettings.Get(Resources.MailInfo.AppSettingMailFrom),
                                         ConfigurationManager.AppSettings.Get(Resources.MailInfo.AppSettingMailTo), 
                                         Resources.MailInfo.SubjectPresupuesto, obtenerBody(presupuesto,eFormatoMail),
                                         (eFormatoMail == TipoPresup.html)?true:false);
        }


        public static void EnviarMail(Candidatura candidatura)
        {
            TipoCand eFormatoMail = (TipoCand)Enum.Parse(typeof(TipoCand), ConfigurationManager.AppSettings.Get(Resources.MailInfo.AppSettingTipoMailCand));
            dahor.mail.lib.Mail.SendMail(ConfigurationManager.AppSettings.Get(Resources.MailInfo.AppSettingMailFrom),
                                         ConfigurationManager.AppSettings.Get(Resources.MailInfo.AppSettingMailTo),
                                         Resources.MailInfo.SubjectCandidatura, obtenerBody(candidatura, eFormatoMail),
                                         (eFormatoMail == TipoCand.html) ? true : false);
        }

        #endregion

        #region Métodos para la constucción del cuerpo del correo

        private static string obtenerBody(Presupuesto presupuesto, TipoPresup formatoMail)
        {
            string sBody = string.Empty;
            switch (formatoMail)
            {
                case TipoPresup.txt:
                    sBody = obtenerTexto(presupuesto);
                    break;
                case TipoPresup.html:
                    sBody = obtenerHTMLBody(presupuesto);
                    break;
            }
            return sBody;
        }

        private static string obtenerBody(Candidatura candidatura, TipoCand formatoMail)
        {
            string sBody = string.Empty;
            switch (formatoMail)
            {
                case TipoCand.txt:
                    sBody = obtenerTexto(candidatura);
                    break;
                case TipoCand.html:
                    sBody = obtenerHTMLBody(candidatura);
                    break;
            }
            return sBody;        }

        #region Texto Plano

        #region Candidaturas

        private static string obtenerTexto(Candidatura candidatura)
        {
            StringBuilder sTexto = new StringBuilder();
            sTexto.AppendLine(obtenerCabecera(candidatura));
            sTexto.AppendLine(obtenerDatos(candidatura));
            sTexto.AppendLine(obtenerPie());
            return sTexto.ToString();
        }

        private static string obtenerCabecera(Candidatura candidatura)
        {
            StringBuilder sTexto = new StringBuilder();
            sTexto.AppendLine(string.Format("Candidatura                                                     {0}", DateTime.Today.ToString("dd/MM/yyyy")));
            sTexto.AppendLine("---------------------------------------------------------------------------");
            return sTexto.ToString();
        }

        private static string obtenerDatos(Candidatura candidatura)
        {
            StringBuilder sTexto = new StringBuilder();
            sTexto.AppendLine(string.Format("Nombre: {0}\r\n", candidatura.Nombre));
            sTexto.AppendLine(string.Format("Apellidos: {0}\r\n", candidatura.Apellidos));
            sTexto.AppendLine(string.Format("Fecha de Nacimiento: {0}\r\n", candidatura.Fecha_Nacimiento.ToString(Resources.MailInfo.date_format)));
            sTexto.AppendLine(string.Format("Nacionalidad: {0}\r\n", candidatura.Nacionalidad));
            sTexto.AppendLine(string.Format("Teléfono: {0}\r\n", candidatura.Telefono));
            sTexto.AppendLine(string.Format("Email: {0}\r\n", candidatura.EMail));
            sTexto.AppendLine(string.Format("Puesto de trabajo a realizar\r\n{0}", obtenerTipoEmpleo(candidatura.Tipos_Empleo, TipoCand.txt)));
            sTexto.AppendLine(string.Format("Experiencia\r\n{0}", candidatura.Experiencia));
            sTexto.AppendLine(string.Format("Observaciones: {0}", candidatura.Observaciones));
            return sTexto.ToString();
        }

        #endregion

        #region Presupuestos

        private static string obtenerTexto(Presupuesto presupuesto)
        {
            StringBuilder sTexto = new StringBuilder();
            sTexto.AppendLine(obtenerCabecera(presupuesto));
            sTexto.AppendLine(obtenerDatos(presupuesto));
            sTexto.AppendLine(obtenerPie());
            return sTexto.ToString();
        }

        private static string obtenerCabecera(Presupuesto presupuest)
        {
            StringBuilder sTexto = new StringBuilder();
            sTexto.AppendLine(string.Format("Presupuesto                                                     {0}", DateTime.Today.ToString("dd/MM/yyyy")));
            sTexto.AppendLine("---------------------------------------------------------------------------");
            return sTexto.ToString();
        }

        private static string obtenerDatos(Presupuesto presupuesto)
        {
            StringBuilder sTexto = new StringBuilder();
            sTexto.AppendLine(string.Format("Nombre: {0}\r\n", presupuesto.Solicitante.Nombre));
            sTexto.AppendLine(string.Format("Apellidos: {0}\r\n", presupuesto.Solicitante.Apellidos));
            sTexto.AppendLine(string.Format("Teléfono: {0}\r\n", presupuesto.Solicitante.Telefono));
            sTexto.AppendLine(string.Format("Dirección: {0}\r\n", presupuesto.Solicitante.Direccion));
            sTexto.AppendLine(string.Format("Población: {0}\r\n", presupuesto.Solicitante.Poblacion));
            sTexto.AppendLine(string.Format("CP: {0}\r\n", presupuesto.Solicitante.CP));
            sTexto.AppendLine(string.Format("Empresa: {0}\r\n", presupuesto.Empresa));
            sTexto.AppendLine(string.Format("Hora: {0}", presupuesto.Solicitante.Hora));
            sTexto.AppendLine(string.Format("Email: {0}\r\n", presupuesto.Solicitante.EMail));
            sTexto.AppendLine(string.Format("Tipo de Centro\r\n{0}", obtenerTipoCentro(presupuesto.Centros,TipoPresup.txt)));
            sTexto.AppendLine(string.Format("Tipo de Servicio\r\n{0}", obtenerTipoServicio(presupuesto.Servicios,TipoPresup.txt)));
            sTexto.AppendLine(string.Format("Detalle: {0}", presupuesto.Consulta));
            return sTexto.ToString();
        }

        #endregion

        #region Comunes

        private static string obtenerPie()
        {
            StringBuilder sTexto = new StringBuilder();
            sTexto.AppendLine("---------------------------------------------------------------------------\r\n");
            sTexto.AppendLine("Un Cordial Saludo.");
            sTexto.AppendLine("Marta F.");
            return sTexto.ToString();
        }
        
        #endregion

        #endregion

        #region HTML

        #region Presupuestos

        private static string obtenerHTMLBody(Presupuesto presupuesto)
        {
            StringBuilder sHTML = new StringBuilder();
            sHTML.AppendLine("<html>");
            sHTML.AppendLine(head(presupuesto));
            sHTML.AppendLine(body(presupuesto));
            sHTML.AppendLine("</html>");
            return sHTML.ToString();
        }

        private static string head(Presupuesto presupuesto)
        {
            StringBuilder sHTML = new StringBuilder();
            sHTML.AppendLine("<head>");
            sHTML.AppendLine(title(presupuesto));
            sHTML.AppendLine("</head>");
            return sHTML.ToString();
        }

        private static string title(Presupuesto presupuesto)
        {
            StringBuilder sHTML = new StringBuilder();
            sHTML.AppendLine("<title>Presupuesto on-line</title>");
            return sHTML.ToString();
        }

        private static string body(Presupuesto presupuesto)
        {
            StringBuilder sHTML = new StringBuilder();
            //Inicio
            sHTML.AppendLine("<body>");
            //Título
            sHTML.AppendLine(titulo(presupuesto));
            //Tabla
            sHTML.AppendLine(table(presupuesto));
            //Fin
            sHTML.AppendLine("</body>");
            return sHTML.ToString();
        }

        public static string titulo(Presupuesto presupuesto)
        {
            StringBuilder sHTML = new StringBuilder();
            sHTML.AppendLine( string.Format("<p style=\"{0}\">Presupuesto on-line</p>",Classes.p_titulo));
            return sHTML.ToString();
        }

        public static string table(Presupuesto presupuesto)
        {
            StringBuilder sHTML = new StringBuilder();

            sHTML.AppendLine(string.Format("<table style=\"{0}\">",Classes.body_table));

            sHTML.AppendLine(" <tr>");
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><label style=\"{1}\">Nombre</label></td>",
                             Classes.body_table_tr_td_tipoinfo,Classes.body_table_tr_td_label));
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><p>{1}</p></td>",
                             Classes.body_table_tr_td, presupuesto.Solicitante.Nombre));
            sHTML.AppendLine(" </tr>");

            sHTML.AppendLine(" <tr>");
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><label style=\"{1}\">Apellidos</label></td>",
                             Classes.body_table_tr_td_tipoinfo, Classes.body_table_tr_td_label));
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><p>{1}</p></td>",
                             Classes.body_table_tr_td, presupuesto.Solicitante.Apellidos));
            sHTML.AppendLine(" </tr>");

            sHTML.AppendLine(" <tr>");
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><label style=\"{1}\">Teléfono</label></td>",
                             Classes.body_table_tr_td_tipoinfo, Classes.body_table_tr_td_label));
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><p>{1}</p></td>",
                             Classes.body_table_tr_td, presupuesto.Solicitante.Telefono));
            sHTML.AppendLine(" </tr>");

            sHTML.AppendLine(" <tr>");
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><label style=\"{1}\">Dirección</label></td>",
                             Classes.body_table_tr_td_tipoinfo, Classes.body_table_tr_td_label));
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><p>{1}</p></td>",
                             Classes.body_table_tr_td, presupuesto.Solicitante.Direccion));
            sHTML.AppendLine(" </tr>");

            sHTML.AppendLine(" <tr>");
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><label style=\"{1}\">CP</label></td>",
                             Classes.body_table_tr_td_tipoinfo, Classes.body_table_tr_td_label));
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><p>{1}</p></td>",
                             Classes.body_table_tr_td, presupuesto.Solicitante.CP));
            sHTML.AppendLine(" </tr>");

            sHTML.AppendLine(" <tr>");
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><label style=\"{1}\">Empresa</label></td>",
                             Classes.body_table_tr_td_tipoinfo, Classes.body_table_tr_td_label));
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><p>{1}</p></td>",
                             Classes.body_table_tr_td, presupuesto.Empresa));
            sHTML.AppendLine(" </tr>");

            sHTML.AppendLine(" <tr>");
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><label style=\"{1}\">Población</label></td>",
                             Classes.body_table_tr_td_tipoinfo, Classes.body_table_tr_td_label));
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><p>{1}</p></td>",
                             Classes.body_table_tr_td, presupuesto.Solicitante.Poblacion));
            sHTML.AppendLine(" </tr>");

            sHTML.AppendLine(" <tr>");
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><label style=\"{1}\">Email</label></td>",
                             Classes.body_table_tr_td_tipoinfo, Classes.body_table_tr_td_label));
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><a href=\"mailto:{1}\"><p>{2}</p></a></td>",
                             Classes.body_table_tr_td, presupuesto.Solicitante.EMail, presupuesto.Solicitante.EMail));
            sHTML.AppendLine(" </tr>");

            sHTML.AppendLine(" <tr>");
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><label style=\"{1}\">Horario de contacto</label></td>",
                             Classes.body_table_tr_td_tipoinfo, Classes.body_table_tr_td_label));
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><p>{1}</p></td>",
                             Classes.body_table_tr_td, presupuesto.Solicitante.Hora));
            sHTML.AppendLine(" </tr>");

            sHTML.AppendLine(" <tr>");
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><label style=\"{1}\">Tipo de Inmueble/s</label></td>",
                             Classes.body_table_tr_td_top, Classes.body_table_tr_td_label));
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><ul style=\"{1}\">", Classes.body_table_tr_td, Classes.body_ul));
            sHTML.AppendLine(obtenerTipoCentro(presupuesto.Centros,TipoPresup.html));
            sHTML.AppendLine("  </ul></td>");
            sHTML.AppendLine(" </tr>");

            sHTML.AppendLine(" <tr>");
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><label style=\"{1}\">Tipo de actividad/es</label></td>",
                             Classes.body_table_tr_td_top, Classes.body_table_tr_td_label));
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><ul style=\"{1}\">",Classes.body_table_tr_td, Classes.body_ul));
            sHTML.AppendLine(obtenerTipoServicio(presupuesto.Servicios,TipoPresup.html));
            sHTML.AppendLine("  </ul></td>");
            sHTML.AppendLine(" </tr>");

            sHTML.AppendLine("</table>");

            sHTML.AppendLine("<table style=\"margin:15px 0px 0px 0px;\">");
            sHTML.AppendLine(" <tr>");
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><label  style=\"{1}\">Consulta</label></td>",
                             Classes.body_table_tr_td_top, Classes.body_table_tr_td_label));
            sHTML.AppendLine(string.Format("  <td style=\"{0}\">{1}</td>", Classes.body_table_tr_td, presupuesto.Consulta));
            sHTML.AppendLine(" </tr>");
            sHTML.AppendLine("</table>");

            return sHTML.ToString();
        }

        #endregion

        #region Candidaturas
        
        private static string obtenerHTMLBody(Candidatura candidatura)
        {
            StringBuilder sHTML = new StringBuilder();
            sHTML.AppendLine("<html>");
            sHTML.AppendLine(head(candidatura));
            sHTML.AppendLine(body(candidatura));
            sHTML.AppendLine("</html>");
            return sHTML.ToString();
        }

        private static string head(Candidatura candidatura)
        {
            StringBuilder sHTML = new StringBuilder();
            sHTML.AppendLine("<head>");
            sHTML.AppendLine(title(candidatura));
            sHTML.AppendLine("</head>");
            return sHTML.ToString();
        }

        private static string title(Candidatura candidatura)
        {
            StringBuilder sHTML = new StringBuilder();
            sHTML.AppendLine("<title>Candidatura</title>");
            return sHTML.ToString();
        }

        private static string body(Candidatura candidatura)
        {
            StringBuilder sHTML = new StringBuilder();
            //Inicio
            sHTML.AppendLine("<body>");
            //Título
            sHTML.AppendLine(titulo(candidatura));
            //Tabla
            sHTML.AppendLine(table(candidatura));
            //Fin
            sHTML.AppendLine("</body>");
            return sHTML.ToString();
        }

        public static string titulo(Candidatura candidatura)
        {
            StringBuilder sHTML = new StringBuilder();
            sHTML.AppendLine(string.Format("<p style=\"{0}\">Candidatura</p>", Classes.p_titulo));
            return sHTML.ToString();
        }

        public static string table(Candidatura candidatura)
        {
            StringBuilder sHTML = new StringBuilder();

            sHTML.AppendLine(string.Format("<table style=\"{0}\">", Classes.body_table));

            sHTML.AppendLine(" <tr>");
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><label style=\"{1}\">Nombre</label></td>",
                             Classes.body_table_tr_td_tipoinfo, Classes.body_table_tr_td_label));
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><p>{1}</p></td>",
                             Classes.body_table_tr_td, candidatura.Nombre));
            sHTML.AppendLine(" </tr>");

            sHTML.AppendLine(" <tr>");
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><label style=\"{1}\">Apellidos</label></td>",
                             Classes.body_table_tr_td_tipoinfo, Classes.body_table_tr_td_label));
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><p>{1}</p></td>",
                             Classes.body_table_tr_td, candidatura.Apellidos));
            sHTML.AppendLine(" </tr>");

            sHTML.AppendLine(" <tr>");
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><label style=\"{1}\">Fecha de Nacimiento</label></td>",
                             Classes.body_table_tr_td_tipoinfo, Classes.body_table_tr_td_label));
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><p>{1}</p></td>",
                             Classes.body_table_tr_td, candidatura.Fecha_Nacimiento.ToString(MailInfo.date_format)));
            sHTML.AppendLine(" </tr>");

            sHTML.AppendLine(" <tr>");
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><label style=\"{1}\">Nacionalidad</label></td>",
                             Classes.body_table_tr_td_tipoinfo, Classes.body_table_tr_td_label));
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><p>{1}</p></td>",
                             Classes.body_table_tr_td, candidatura.Nacionalidad));
            sHTML.AppendLine(" </tr>");

            sHTML.AppendLine(" <tr>");
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><label style=\"{1}\">Teléfono</label></td>",
                             Classes.body_table_tr_td_tipoinfo, Classes.body_table_tr_td_label));
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><p>{1}</p></td>",
                             Classes.body_table_tr_td, candidatura.Telefono));
            sHTML.AppendLine(" </tr>");

            sHTML.AppendLine(" <tr>");
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><label style=\"{1}\">Email</label></td>",
                             Classes.body_table_tr_td_tipoinfo, Classes.body_table_tr_td_label));
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><a href=\"mailto:{1}\"><p>{2}</p></a></td>",
                             Classes.body_table_tr_td, candidatura.EMail, candidatura.EMail));
            sHTML.AppendLine(" </tr>");

            sHTML.AppendLine(" <tr>");
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><label style=\"{1}\">Puesto de trabajo a realizar</label></td>",
                             Classes.body_table_tr_td_top, Classes.body_table_tr_td_label));
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><ul style=\"{1}\">", Classes.body_table_tr_td, Classes.body_ul));
            sHTML.AppendLine(obtenerTipoEmpleo(candidatura.Tipos_Empleo, TipoCand.html));
            sHTML.AppendLine("  </ul></td>");
            sHTML.AppendLine(" </tr>");

            sHTML.AppendLine("</table>");

            sHTML.AppendLine("<table style=\"margin:15px 0px 0px 0px;\">");
            sHTML.AppendLine(" <tr>");
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><label  style=\"{1}\">Experiencia</label></td>",
                             Classes.body_table_tr_td_top, Classes.body_table_tr_td_label));
            sHTML.AppendLine(string.Format("  <td style=\"{0}\">{1}</td>", Classes.body_table_tr_td, (!string.IsNullOrEmpty(candidatura.Experiencia)? candidatura.Experiencia : "Ninguna" )));
            sHTML.AppendLine(" </tr>");
            sHTML.AppendLine("</table>");

            sHTML.AppendLine("<table style=\"margin:15px 0px 0px 0px;\">");
            sHTML.AppendLine(" <tr>");
            sHTML.AppendLine(string.Format("  <td style=\"{0}\"><label  style=\"{1}\">Observaciones</label></td>",
                             Classes.body_table_tr_td_top, Classes.body_table_tr_td_label));
            sHTML.AppendLine(string.Format("  <td style=\"{0}\">{1}</td>", Classes.body_table_tr_td, candidatura.Observaciones));
            sHTML.AppendLine(" </tr>");
            sHTML.AppendLine("</table>");

            return sHTML.ToString();
        }

        #endregion

        #region Comunes

        private static string cssStyle()
        {
            StringBuilder sHTML = new StringBuilder();

            sHTML.AppendLine("<style type=\"text/css\">");
            sHTML.AppendLine("body p.titulo");
            sHTML.AppendLine("{");
            sHTML.AppendLine("  font: normal 28px Georgia,Trebuchet MS,Arial, Helvetica, sans-serif;");
            sHTML.AppendLine("  color:#000066;");
            sHTML.AppendLine("  padding: 0px 0px 0px 0px;");
            sHTML.AppendLine("  margin: 0px 0px 0px 0px;");
            sHTML.AppendLine("}");

            sHTML.AppendLine("body table");
            sHTML.AppendLine("{");
            sHTML.AppendLine("  width:900px;");
            sHTML.AppendLine("}");

            sHTML.AppendLine("body table tr td");
            sHTML.AppendLine("{");
            sHTML.AppendLine("  border-style:solid;");
            sHTML.AppendLine("  border-width:1px;");
            sHTML.AppendLine("}");

            sHTML.AppendLine("body table tr td label");
            sHTML.AppendLine("{");
            sHTML.AppendLine("  margin:0px 0px 0px 10px;");
            sHTML.AppendLine("  padding:0px;");
            sHTML.AppendLine("  font:bold 90%/180% \"Trebuchet MS\", \"Lucida Grande\", \"Bitstream Vera Sans\", Arial, Helvetica, sans-serif;");
            sHTML.AppendLine("  color:#000000;");
            sHTML.AppendLine("}");

            sHTML.AppendLine("body table tr td.top");
            sHTML.AppendLine("{");
            sHTML.AppendLine("  vertical-align:top;");
            sHTML.AppendLine("  width:170px;");
            sHTML.AppendLine("}");

            sHTML.AppendLine("body table tr td.tipoinfo");
            sHTML.AppendLine("{");
            sHTML.AppendLine("  width:170px;");
            sHTML.AppendLine("}");

            sHTML.AppendLine("body ul");
            sHTML.AppendLine("{");
            sHTML.AppendLine("  margin:0px 0px 0px 15px;");
            sHTML.AppendLine("}");

            sHTML.AppendLine("</style>");

            return sHTML.ToString();
        }
        
        #endregion

        #endregion

        #region Métodos de formateo de datos

        private static string obtenerTipoCentro(List<Centro> centros, TipoPresup eTipoPres)
        {
            StringBuilder sHTML = new StringBuilder();
            //Recojemos los datos del combo de inmuebles
            for (int i = 0; i < centros.Count; i++)
                if (!string.IsNullOrEmpty(centros[i].Nombre))
                    switch (eTipoPres)
                    {
                        case TipoPresup.html:
                            sHTML.AppendLine(string.Format("  <li>{0}</li>", centros[i].Nombre));
                            break;
                        case TipoPresup.txt:
                            sHTML.AppendLine(string.Format(" - {0}", centros[i].Nombre));
                            break;
                    }
            return sHTML.ToString();
        }

        private static string obtenerTipoServicio(List<Servicio> servicios, TipoPresup eTipoPres)
        {
            StringBuilder sHTML = new StringBuilder();
            //Recojemos los datos del combo de inmuebles
            for (int i = 0; i < servicios.Count; i++)
                if (!string.IsNullOrEmpty(servicios[i].Nombre))
                    switch (eTipoPres)
                    {
                        case TipoPresup.html:
                            sHTML.AppendLine(string.Format("  <li>{0}</li>", servicios[i].Nombre));
                            break;
                        case TipoPresup.txt:
                            sHTML.AppendLine(string.Format(" - {0}", servicios[i].Nombre));
                            break;
                    }
            return sHTML.ToString();
        }

        private static string obtenerTipoEmpleo(List<Puesto> tipos_empleo, TipoCand eTipoCand)
        {
            StringBuilder sHTML = new StringBuilder();
            //Recojemos los datos del combo de inmuebles
            for (int i = 0; i < tipos_empleo.Count; i++)
                if (!string.IsNullOrEmpty(tipos_empleo[i].Nombre))
                    switch (eTipoCand)
                    {
                        case TipoCand.html:
                            sHTML.AppendLine(string.Format("  <li>{0}</li>", tipos_empleo[i].Nombre));
                            break;
                        case TipoCand.txt:
                            sHTML.AppendLine(string.Format(" - {0}", tipos_empleo[i].Nombre));
                            break;
                    }
            return sHTML.ToString();
        }

        #endregion

        #endregion
    }
}
