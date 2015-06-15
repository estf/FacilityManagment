using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FacilityManagement.Startup))]
namespace FacilityManagement
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
