using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LanguageSystem.Startup))]
namespace LanguageSystem
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
