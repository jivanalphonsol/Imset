using imset.Model;
using System;
using System.Web.UI.WebControls;

namespace Imset
{
    public partial class ViewProductCatalogue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Admin page: never cache, so Back after logout cannot show it
            Response.Cache.SetCacheability(System.Web.HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            if (string.IsNullOrEmpty(Convert.ToString(Session["UserName"])))
            {
                Session.Clear();
                Session.Abandon();
                Response.Redirect("~/Login.aspx");
                return;
            }
            LoadGrid();
        }

        private void LoadGrid()
        {
            try
            {
                gvCatalog.DataSource = new ProductCatalogue().GetAll();
                gvCatalog.DataBind();
            }
            catch (Exception ex)
            {
                CommonUtilities.FnWriteErrorLog("ViewProductCatalogue.LoadGrid", ex.StackTrace);
                ShowMessage("Error loading catalogue list.", false);
            }
        }

        protected void gvCatalog_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName != "EditRow" && e.CommandName != "DeleteRow")
                return;

            int id;
            if (!int.TryParse(Convert.ToString(e.CommandArgument), out id) || id <= 0)
            {
                ShowMessage("Invalid record ID.", false);
                return;
            }

            if (e.CommandName == "EditRow")
            {
                // Edit form lives on the Add page
                Response.Redirect("~/AddProductCatalogue.aspx?id=" + id);
            }
            else
            {
                DeleteRecord(id);
            }
        }

        private void DeleteRecord(int id)
        {
            try
            {
                bool deleted = new ProductCatalogue().Delete(id);
                ShowMessage(deleted ? "Record deleted successfully." : "Record not found or already deleted.", deleted);
                LoadGrid();
            }
            catch (Exception ex)
            {
                CommonUtilities.FnWriteErrorLog("ViewProductCatalogue.Delete", ex.StackTrace);
                ShowMessage("Error deleting record.", false);
            }
        }

        private void ShowMessage(string msg, bool success)
        {
            lblMessage.Visible = true;
            lblMessage.Text = Server.HtmlEncode(msg);
            lblMessage.CssClass = success ? "adm-alert adm-alert-success" : "adm-alert adm-alert-danger";
        }
    }
}
