using Imset.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Imset.Model.AddContent;

namespace Imset
{
    public partial class Block : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getdata();
        }
        public void getdata()
        {
            List<Addblogcontentparam> getblockdata = new List<Addblogcontentparam>();
            //List<Addblogcontentparam> getblockdata = new List<Addblogcontentparam>();
            AddContent addContent = new AddContent();
            getblockdata = addContent.GetItemsFromDatabase();
            BlogRepeater.DataSource=getblockdata;
            BlogRepeater.DataBind();

        }
    }
}