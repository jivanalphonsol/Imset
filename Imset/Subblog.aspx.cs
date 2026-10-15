using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Imset
{
    public partial class Subblog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RoutePage(RouteTable.Routes);

        }
        static void RoutePage(RouteCollection route)
        {
           
           // route.MapPageRoute("Sub1", "PageBlock", "~/Subblog.aspx#Blog2");

        }
    }
}