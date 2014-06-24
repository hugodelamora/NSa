using Mvc.Mailer;

namespace NominasSAT.Mailers
{ 
    public interface IUserMailer
    {
			MvcMailMessage Welcome();
            MvcMailMessage GoodBye();
	}
}