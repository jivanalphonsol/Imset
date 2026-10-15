using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using imset.Model;

namespace imset
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Access-Control-Allow-Origin", "*");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(txtName.Text))
                {
                    if (!string.IsNullOrEmpty(txtMobileNo.Text))
                    {
                        if (!string.IsNullOrEmpty(txtEmail.Text))
                        {

                            if (CommonUtilities.IsEmailIdValid(txtEmail.Text))
                            {
                                if (!txtName.Text.Contains("Henry"))
                                {
                                    GenerateNewLead();
                                    sidesuggestion.Style.Add("display", "none");
                                }
                                else
                                {
                                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('We have registered your request. We will get back to you As Soon As Possible')", true);
                                    sidesuggestion.Style.Add("display", "none");
                                    ClearAll();
                                }
                            }
                            else
                            {
                                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please enter valid email id')", true);
                                sidesuggestion.Style.Add("display", "block");
                                txtEmail.Focus();
                            }
                        }
                        else
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Email Id cannot be blank')", true);
                            sidesuggestion.Style.Add("display", "block");
                            txtEmail.Focus();
                        }
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Contact No cannot be blank')", true);
                        sidesuggestion.Style.Add("display", "block");
                        txtMobileNo.Focus();
                    }
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Name cannot be blank')", true);
                    sidesuggestion.Style.Add("display", "block");
                    txtName.Focus();

                }

            }
            catch (Exception ex)
            {
                CommonUtilities.FnWriteErrorLog("btnSubmit_Click", ex.StackTrace);
            }
        }

        public void DownloadFile(string fileName)
        {
            //File to be downloaded.            

            //Path of the File to be downloaded.
            string filePath = Server.MapPath(string.Format("~/ProductCatalogues/{0}", fileName));
            //CommonUtilities.fnStoreErrorLog("Bioxia", "DownloadFile", "FilePath=" + filePath, "");
            //Content Type and Header.
            Response.ContentType = "application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);

            //Writing the File to Response Stream.
            Response.WriteFile(filePath);

            //Flushing the Response.
            Response.Flush();
            Response.End();
        }

        private void GenerateNewLead()
        {
            try
            {
                GenerateLead leadgeneration = new GenerateLead();
                LeadgenerationParam param = new LeadgenerationParam();
                param.CustomerName = txtName.Text;
                param.customerMobileNo = txtMobileNo.Text;
                param.CustomerEmailID = txtEmail.Text;
                param.Message = txtMessage.Text;
                param.Source = "imset.co.in";
                param.Type = "AddData";
                string message = leadgeneration.InsertLead(param);
                if (message == "Success")
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('We have registered your request. We will get back to you As Soon As Possible')", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Due to some technical glitch we are are not able to register your request. Please try after some time.')", true);
                }

                ClearAll();
            }
            catch (Exception ex)
            {
                CommonUtilities.FnWriteErrorLog("GenerateLead", ex.StackTrace);
            }
        }
        private void ClearAll()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtMobileNo.Text = "";
            txtMessage.Text = "";
            //lnkContact.HRef = "#contact";

        }

        protected void lnkVertLaminarAirFlow_Click(object sender, EventArgs e)
        {
            try
            {
                DownloadFile("Catalogue Vertical Laminar Air Flow.pdf");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        protected void lnkFinalCatalogueMN_Click(object sender, EventArgs e)
        {
            try
            {
                DownloadFile("Biosafety Final Catalogue MN.pdf");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}