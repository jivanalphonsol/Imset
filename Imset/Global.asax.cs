using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Imset
{
    public class Global : System.Web.HttpApplication
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string requestUrl = Request.Url.AbsolutePath;
            if (!string.IsNullOrEmpty(requestUrl) && requestUrl.Contains(".") && !requestUrl.EndsWith(".aspx", StringComparison.OrdinalIgnoreCase))
            {
                // Redirect to a 404 error page with a 404 status code
                Response.StatusCode = 404;
                Response.StatusDescription = "Not Found";
                return;
            }

            // Your custom 404 page content
        }
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute(
                "WithoutExtensionRoute",
                "{pageName}",
                "~/404page.aspx" // Or whatever page you want to route to
            );
        }

        protected void Application_Start(object sender, EventArgs e)
        {
            RoutePage(RouteTable.Routes);
            RegisterRoutes(RouteTable.Routes);
        }

        static void RoutePage(RouteCollection route)
        {
            route.MapPageRoute("A1", "biosafety-cabinet-class-II-A2", "~/biosafety-cabinet-class-II-A2.aspx");
            route.MapPageRoute("A2", "biosafety-cabinet-class-II-B2", "~/biosafety-cabinet-class-II-B2.aspx");
            route.MapPageRoute("A3", "biosafety-cabinet-class-III", "~/biosafety-cabinet-class-III.aspx");
            route.MapPageRoute("A4", "Customized-safety-cabinet-series", "~/Customized-safety-cabinet-series.aspx");
            route.MapPageRoute("A5", "Vertical-Laminar-Air-Flow-Cabinet", "~/Vertical-Laminar-Air-Flow-Cabinet.aspx");
            route.MapPageRoute("A6", "PCR-Workstation", "~/PCR-Workstation.aspx");
            route.MapPageRoute("A7", "Polypropylene-Biosafety-Cabinet-Laminar-Air-Flow", "~/Polypropylene-Biosafety-Cabinet-Laminar-Air-Flow.aspx");

            route.MapPageRoute("A8", "FAQ", "~/Faq.aspx");
            route.MapPageRoute("A9", "Gallery", "~/gallery.aspx");
            route.MapPageRoute("A10", "Contact", "~/contact.aspx");
            route.MapPageRoute("A11", "our_clients", "~/our_clients.aspx");
            route.MapPageRoute("A12", "Product", "~/Product.aspx");

            //route.MapPageRoute("A14", "Subblog", "~/Subblog.aspx");
            route.MapPageRoute("A15", "Blog", "~/Blog.aspx");
            route.MapPageRoute("Services", "Services", "~/Services.aspx");
            route.MapPageRoute("Home", "Home", "~/Home.aspx");
            //route.MapPageRoute("Blog1", "Types_of_Biosafety_Cabinets", "~/Types_of_Biosafety_Cabinets.aspx");
            //route.MapPageRoute("Blog2", "Working_of_Biological_Safety_Cabinet", "~/Working_of_Biological_Safety_Cabinet.aspx");
            route.MapPageRoute("Login", "Login", "~/Login.aspx");
            route.MapPageRoute("Error", "Error", "~/errorpage.aspx");
            route.MapPageRoute("404", "404", "~/404.aspx");
            route.MapPageRoute("404page", "404page", "~/404page.aspx");
            route.MapPageRoute("Addblog", "Addblog", "~/Addblog.aspx");
            route.MapPageRoute("DBlog", "DBlog", "~/DBlog.aspx");
            route.MapPageRoute("ViewLeadgeneration", "ViewLeadgeneration", "~/ViewLeadgeneration.aspx");
        }

        protected void Application_Error(object sender, EventArgs e)  
        {
            try
            {
                Exception exception = Server.GetLastError();
                Response.Clear();
                Server.ClearError();

                // Exception exception = Server.GetLastError();
                if (exception is HttpException httpException && httpException.GetHttpCode() == 404)
                {

                    Response.RedirectToRoute("404page");
                }
                //else if (exception.Message.Contains("does not exist."))
                //{
                //    Response.Redirect("~/404");
                //}
                else
                {
                    Response.Redirect("~/Error");
                }
            }
            catch (Exception E)
            {
                Response.Redirect("~/Error");
            }

        }


    }
}