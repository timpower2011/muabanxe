using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MuaBanXe.Startup))]
namespace MuaBanXe
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
