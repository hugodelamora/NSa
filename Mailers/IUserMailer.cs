using Mvc.Mailer;

namespace NominasSAT.Mailers
{ 
    public interface IUserMailer
    {
        MvcMailMessage Welcome(string email, string subject, string name, string userName, string password);
        MvcMailMessage SendPayroll(string email, string subject, string name, string period, string UID, string attachmentPath, string attachmentPath2, string attachmentPath3);
        MvcMailMessage RecoveryPassword(string email, string subject,string url, string userName);
                    
        //MvcMailMessage GoodBye();
	}
}