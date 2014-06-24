using Mvc.Mailer;

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
        public virtual MvcMailMessage Welcome(){
            var mailMessage = new MvcMailMessage { Subject = "Welcome" };
            mailMessage.To.Add("hugo.delamora@contpaqi.com");
            ViewBag.Name = "Hajan";           
            PopulateBody(mailMessage, viewName: "Welcome");
            return mailMessage;

		}
 
		public virtual MvcMailMessage GoodBye()
		{
			//ViewBag.Data = someObject;
			return Populate(x =>
			{
				x.Subject = "GoodBye";
				x.ViewName = "GoodBye";
				x.To.Add("some-email@example.com");
			});
		}
 	}
}