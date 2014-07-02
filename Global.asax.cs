using Microsoft.Practices.EnterpriseLibrary.SemanticLogging;
using NominasSAT.Logger;
using System.Diagnostics.Tracing;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

using System.Web.Http;

namespace NominasSAT
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            consumehemc();
        }
        public void consumehemc(){
            AreaRegistration.RegisterAllAreas();

            WebApiConfig.Register(GlobalConfiguration.Configuration);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            //var sqlListener = SqlDatabaseLog.CreateListener("HomeController", "Data Source=.;Initial Catalog=Logging;Integrated Security=True");
            var sqlListener = SqlDatabaseLog.CreateListener("AccountController", "Data Source=.;Initial Catalog=Logging;Integrated Security=True");
            sqlListener.EnableEvents(BasicLogger.Log, EventLevel.Error);
        }
    }
}
