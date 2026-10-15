using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using imset.Model;
using Imset.Model;

namespace Imset
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Access-Control-Allow-Origin", "*");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataTable dtUserDetails = new DataTable();
            if (!string.IsNullOrEmpty(txtUserName.Text) && !string.IsNullOrEmpty(txtPassword.Text))
            {
                LoginDetails login = new LoginDetails();
                LoginParam loginParam = new LoginParam();
                loginParam.Type = "GetUserDetails";
                loginParam.UserName = txtUserName.Text;
                loginParam.Password = txtPassword.Text;
                dtUserDetails = login.CheckUser(loginParam);
                if (dtUserDetails.Rows.Count > 0 && Convert.ToString(dtUserDetails.Rows[0]["Result"]) == "Success")
                {
                    Session["UserName"] = txtUserName.Text;
                    Session["UserFullName"] = dtUserDetails.Rows[0]["userfullname"];
                    Response.Redirect("ViewLeadgeneration");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please enter valid UserName and Password.')", true);
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please enter UserName and Password.')", true);
            }

        }
    }
}