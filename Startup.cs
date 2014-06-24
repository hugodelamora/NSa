using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(NominasSAT.Startup))]
namespace NominasSAT
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
