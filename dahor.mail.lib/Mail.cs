using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Net.Mail;

namespace dahor.mail.lib
{
    public class Mail
    {
        public static void SendMail(string from, string to, string subject, string body, bool isHtml)
        {
            MailMessage msg = new MailMessage(from, to, subject, body);
            SmtpClient mailClient = new SmtpClient();
            msg.IsBodyHtml = isHtml;
            mailClient.EnableSsl = true;
            mailClient.Send(msg);
        }
    }
}
