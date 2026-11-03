using imset.Model;
using System;
using System.Data;
using System.IO;
using System.Text.RegularExpressions;
using System.Web.UI.WebControls;

namespace Imset
{
    public partial class AddProductCatalogue : System.Web.UI.Page
    {
        private const int MaxBytes = 10 * 1024 * 1024;
        private const string PdfFolder = "ProductCatalogues";

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

            if (!IsPostBack)
            {
                // Redirected from the View page with ?id=X: load that record for editing
                int editId;
                if (int.TryParse(Request.QueryString["id"], out editId) && editId > 0)
                {
                    LoadForEdit(editId);
                }
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
                CommonUtilities.FnWriteErrorLog("AddProductCatalogue.LoadGrid", ex.StackTrace);
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
                LoadForEdit(id);
            }
            else
            {
                DeleteRecord(id);
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Page.Validate("vgCatalog");
            if (!Page.IsValid)
                return;

            int catalogId;
            int.TryParse(hfCatalogId.Value, out catalogId);
            bool isEdit = catalogId > 0;

            if (!isEdit && !fuPdf.HasFile)
            {
                ShowMessage("Please select a PDF file.", false);
                return;
            }

            string pdfFileName = null;
            string pdfPath = null;

            try
            {
                if (fuPdf.HasFile)
                {
                    if (!string.Equals(Path.GetExtension(fuPdf.FileName), ".pdf", StringComparison.OrdinalIgnoreCase))
                    {
                        ShowMessage("Only PDF files are allowed.", false);
                        return;
                    }
                    if (fuPdf.PostedFile.ContentLength > MaxBytes)
                    {
                        ShowMessage("File size must be 10 MB or less.", false);
                        return;
                    }

                    string safeName = Regex.Replace(Path.GetFileNameWithoutExtension(fuPdf.FileName), @"[^a-zA-Z0-9 \-_().]", "");
                    if (string.IsNullOrWhiteSpace(safeName))
                    {
                        safeName = "Catalogue";
                    }
                    pdfFileName = safeName + ".pdf";

                    string folder = Server.MapPath("~/" + PdfFolder);
                    Directory.CreateDirectory(folder);

                    // unique name so uploads never overwrite existing catalogues
                    string uniqueName = DateTime.Now.ToString("yyyyMMddHHmmss") + "_" + pdfFileName;
                    fuPdf.SaveAs(Path.Combine(folder, uniqueName));
                    pdfPath = PdfFolder + "/" + uniqueName;
                }

                new ProductCatalogue().Save(catalogId, txtTitle.Text.Trim(), txtDescription.Text.Trim(), pdfFileName, pdfPath);
                Response.Redirect("~/ViewProductCatalogue.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            catch (Exception ex)
            {
                CommonUtilities.FnWriteErrorLog("AddProductCatalogue.Save", ex.StackTrace);
                ShowMessage("Unable to save the catalogue. Please try again.", false);
            }
        }

        private void LoadForEdit(int id)
        {
            try
            {
                DataRow row = new ProductCatalogue().GetById(id);
                if (row == null)
                {
                    ShowMessage("Record not found.", false);
                    return;
                }

                hfCatalogId.Value = id.ToString();
                txtTitle.Text = Convert.ToString(row["Title"]);
                txtDescription.Text = row["Description"] == DBNull.Value ? "" : Convert.ToString(row["Description"]);
                formTitle.InnerText = "Edit Product Catalogue";

                lblCurrentPdf.Visible = true;
                lblCurrentPdf.Text = "<a class='pdf-badge' href='" + ResolveUrl("~/" + Convert.ToString(row["PdfFile"])) +
                    "' target='_blank' rel='noopener'>Current: " + Server.HtmlEncode(Convert.ToString(row["PdfFileName"])) +
                    "</a><br/><small style='color:#888;'>Upload a new PDF to replace it.</small>";
                pdfRequired.Visible = false;
            }
            catch (Exception ex)
            {
                CommonUtilities.FnWriteErrorLog("AddProductCatalogue.LoadForEdit", ex.StackTrace);
                ShowMessage("Error loading record.", false);
            }
        }

        private void DeleteRecord(int id)
        {
            try
            {
                bool deleted = new ProductCatalogue().Delete(id);
                ShowMessage(deleted ? "Record deleted successfully." : "Record not found or already deleted.", deleted);
                ResetForm();
                LoadGrid();
            }
            catch (Exception ex)
            {
                CommonUtilities.FnWriteErrorLog("AddProductCatalogue.Delete", ex.StackTrace);
                ShowMessage("Error deleting record.", false);
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            // Came from the View page: go back there
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                Response.Redirect("~/ViewProductCatalogue.aspx");
            }
            ResetForm();
            LoadGrid();
        }

        private void ResetForm()
        {
            hfCatalogId.Value = "0";
            txtTitle.Text = string.Empty;
            txtDescription.Text = string.Empty;
            formTitle.InnerText = "Add New Product Catalogue";
            lblCurrentPdf.Visible = false;
            pdfRequired.Visible = true;
        }

        private void ShowMessage(string msg, bool success)
        {
            lblMessage.Visible = true;
            lblMessage.Text = Server.HtmlEncode(msg);
            lblMessage.CssClass = success ? "adm-alert adm-alert-success" : "adm-alert adm-alert-danger";
        }
    }
}
