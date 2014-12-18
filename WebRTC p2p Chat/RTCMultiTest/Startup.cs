using Owin;
using Microsoft.Owin;
[assembly: OwinStartup(typeof(RTCMultiTest.Startup))]
namespace RTCMultiTest
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            app.MapSignalR();
        }
    }
}