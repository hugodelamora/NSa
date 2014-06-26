using Mvc.Mailer;
using System.Net.Mail;

namespace NominasSAT.Mailers
{ 
    public class UserMailer : MailerBase, IUserMailer 	
	{
		public UserMailer()
		{
			MasterName="_Layout";
		}
		/*
		public virtual MvcMailMessage Welcome()
		{
			//ViewBag.Data = someObject;
			return Populate(x =>
			{
				x.Subject = "Welcome";
				x.ViewName = "Welcome";
				x.To.Add("some-email@example.com");
			});
        }
        */
        public virtual MvcMailMessage Welcome(string email, string subject, 
            string name,string userName, string password)
        {
            var mailMessage = new MvcMailMessage { Subject = subject };
            mailMessage.To.Add(email);
            ViewBag.Name = name;
            ViewBag.UserName = userName;
            ViewBag.Password = password;

            PopulateBody(mailMessage, viewName: "Welcome");
            return mailMessage;

        }
 
        public virtual MvcMailMessage RecoveryPassword(string email,string subject,
            string url,string userName)
        {
            var mailMessage = new MvcMailMessage { Subject = subject };
            mailMessage.To.Add(email);            
            ViewBag.UserName = userName;
            ViewBag.Url = url;

            PopulateBody(mailMessage, viewName: "RecoveryPassword");
            return mailMessage;

        }

        public virtual MvcMailMessage SendPayroll(string email, string subject,
            string name, string period, string UID, string attachmentPath,string attachmentPath2,string attachmentPath3)
        {
            var mailMessage = new MvcMailMessage { Subject = subject };
            mailMessage.To.Add(email);
            mailMessage.Attachments.Add(new Attachment(attachmentPath));
            if(attachmentPath2!=null)
                mailMessage.Attachments.Add(new Attachment(attachmentPath2));
            if (attachmentPath3 != null)
                mailMessage.Attachments.Add(new Attachment(attachmentPath3));
            

            ViewBag.Name = name;
            ViewBag.Period = period;
            ViewBag.UID = UID;

            PopulateBody(mailMessage, viewName: "SendPayroll");
            return mailMessage;

        }
        /*
		public virtual MvcMailMessage GoodBye()
		{
			//ViewBag.Data = someObject;
			return Populate(x =>
			{
				x.Subject = "GoodBye";
				x.ViewName = "GoodBye";
				x.To.Add("some-email@example.com");
			});
		}*/
 	}
}