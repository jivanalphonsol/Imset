using Imset.Model;
using System;
using System.Collections.Generic;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Imset.Model.AddContent;

using System.Web.Services;
using System.Reflection.Emit;

namespace Imset
{
    public partial class DBlog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the "id" parameter exists in the URL
                if (!string.IsNullOrEmpty(Request.QueryString["id"]))
                {
                    string id = Request.QueryString["id"];
                    if (int.TryParse(id, out int blogId))
                    {
                        getdata(blogId);
                        GetSidebar();
                    }
                }
            }
          
        }
        public void getdata(int Blogid)
        {
            List<Addblogcontentparam> getblockdata = new List<Addblogcontentparam>();
            //List<Addblogcontentparam> getblockdata = new List<Addblogcontentparam>();
            AddContent addContent = new AddContent();
            //getblockdata = addContent.GetItemsFromDatabase();
           
            getblockdata = addContent.GetTag_And_Description(Blogid);
            rptHtmlTags.DataSource = getblockdata;
            rptHtmlTags.DataBind();
        }
        public void GetSidebar()
        {
            List<Addblogcontentparam> getblockdata = new List<Addblogcontentparam>();
            //List<Addblogcontentparam> getblockdata = new List<Addblogcontentparam>();
            AddContent addContent = new AddContent();
            //getblockdata = addContent.GetItemsFromDatabase();

            getblockdata = addContent.GetSidebar();
            MenuSidebar.DataSource = getblockdata;
            MenuSidebar.DataBind();
        }

        //public  void YourCodeBehindFunction(string Blogid)
        //{
        //    getdata(1);
        //  //  return "Response from YourWebMethod: " + Blogid;
        //    // You can access the 'title' parameter
        //}
        protected void MyServerSideFunction(object sender, EventArgs e)
        {
            // Your server-side logic here
            // You can access and modify server-side controls, variables, etc.
            // For example, you can update a Label's text.
            Button btn = (Button)sender;
            string blogId = btn.CommandArgument;
            int Blog_id = Convert.ToInt32(blogId);
            getdata(Blog_id);
        }
    }
}