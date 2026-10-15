using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using imset.Model;
using Imset.Model;
using static Imset.Model.AddContent;

namespace imset
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlproducttypebind();
                ddlBuyProducttype();
                ddlQuantityBind();
            }

            Response.AppendHeader("Access-Control-Allow-Origin", "*");
            string url = Request.Url.AbsoluteUri; // Get the complete URL
            string[] segments = url.Split('/');   // Split the URL into segments

            string pageNameWithExtension = segments[segments.Length - 1]; // Get the last segment (e.g., Index.aspx)

            // Remove the file extension to get the page name
            string[] parts = pageNameWithExtension.Split('.');
            string pageName = parts[0];

            // Now you have the extracted page name
            // You can use it as needed
            Response.Write("Page Name: " + pageName);
        }

        public void ddlproducttypebind()
        {
            List<CommonDO> ddltagsnamelist = new List<CommonDO>();
            AddContent addContent = new AddContent();
            string type = "GetProductName";
            string sp = "Lead_Home_page";
            ddltagsnamelist = addContent.GetAnyDropdownvalue(type, sp);

            if (ddltagsnamelist != null)
            {
                ddlEquipment.DataSource = ddltagsnamelist;
                ddlEquipment.DataTextField = "DisplayText";
                ddlEquipment.DataValueField = "Id";
            }
            else
            {
                ddlEquipment.DataSource = null;
            }
            ddlEquipment.DataBind();
            ddlEquipment.Items.Insert(0, new ListItem("--Select Equipment Type--", "0"));
        }
        public void ddlQuantityBind()
        {
            List<CommonDO> ddltagsnamelist = new List<CommonDO>();
            AddContent addContent = new AddContent();
            string type = "GetQuantity";
            string sp = "Lead_Home_page";
            ddltagsnamelist = addContent.GetAnyDropdownvalue(type, sp);

            if (ddltagsnamelist != null)
            {
                ddlQuantity.DataSource = ddltagsnamelist;
                ddlQuantity.DataTextField = "DisplayText";
                ddlQuantity.DataValueField = "Id";
            }
            else
            {
                ddlQuantity.DataSource = null;
            }
            ddlQuantity.DataBind();
            ddlQuantity.Items.Insert(0, new ListItem("-Select Quantity-", "0"));
        }
        public void ddlBuyProducttype()
        {
            List<CommonDO> ddltagsnamelist = new List<CommonDO>();
            AddContent addContent = new AddContent();
            string type = "GetProduct_BUY_Type";
            string sp = "Lead_Home_page";
            ddltagsnamelist = addContent.GetAnyDropdownvalue(type, sp);

            if (ddltagsnamelist != null)
            {
                BuyType.DataSource = ddltagsnamelist;
                BuyType.DataTextField = "DisplayText";
                BuyType.DataValueField = "Id";
            }
            else
            {
                BuyType.DataSource = null;
            }
            BuyType.DataBind();
            BuyType.Items.Insert(0, new ListItem("-How soon you will by-", "0"));
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    if (!string.IsNullOrEmpty(txtName.Text))
            //    {
            //        if (!string.IsNullOrEmpty(txtMobileNo.Text))
            //        {
            //            if (!string.IsNullOrEmpty(txtEmail.Text))
            //            {

            //                if (CommonUtilities.IsEmailIdValid(txtEmail.Text))
            //                {
            //                    if (!txtName.Text.Contains("Henry"))
            //                    {
            //                        GenerateNewLead();
            //                        sidesuggestion.Style.Add("display", "none");
            //                    }
            //                    else
            //                    {
            //                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('We have registered your request. We will get back to you As Soon As Possible')", true);
            //                        sidesuggestion.Style.Add("display", "none");
            //                        ClearAll();
            //                    }
            //                }
            //                else
            //                {
            //                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please enter valid email id')", true);
            //                    sidesuggestion.Style.Add("display", "block");
            //                    txtEmail.Focus();
            //                }
            //            }
            //            else
            //            {
            //                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Email Id cannot be blank')", true);
            //                sidesuggestion.Style.Add("display", "block");
            //                txtEmail.Focus();
            //            }
            //        }
            //        else
            //        {
            //            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Contact No cannot be blank')", true);
            //            sidesuggestion.Style.Add("display", "block");
            //            txtMobileNo.Focus();
            //        }
            //    }
            //    else
            //    {
            //        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Name cannot be blank')", true);
            //        sidesuggestion.Style.Add("display", "block");
            //        txtName.Focus();

            //    }

            //}
            //catch (Exception ex)
            //{
            //    CommonUtilities.FnWriteErrorLog("btnSubmit_Click", ex.StackTrace);
            //}
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

        //private void GenerateNewLead()
        //{
        //    try
        //    {
        //        GenerateLead leadgeneration = new GenerateLead();
        //        LeadgenerationParam param = new LeadgenerationParam();
        //        param.CustomerName = txtName.Text;
        //        param.customerMobileNo = txtMobileNo.Text;
        //        param.CustomerEmailID = txtEmail.Text;
        //        param.Message = txtMessage.Text;
        //        param.Source = "imset.co.in";
        //        param.Type = "AddData";
        //        string message = leadgeneration.InsertLead(param);
        //        if (message == "Success")
        //        {
        //            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('We have registered your request. We will get back to you As Soon As Possible')", true);
        //        }
        //        else
        //        {
        //            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Due to some technical glitch we are are not able to register your request. Please try after some time.')", true);
        //        }

        //        ClearAll();
        //    }
        //    catch (Exception ex)
        //    {
        //        CommonUtilities.FnWriteErrorLog("GenerateLead", ex.StackTrace);
        //    }
        //}
        //private void ClearAll()
        //{
        //    txtName.Text = "";
        //    txtEmail.Text = "";
        //    txtMobileNo.Text = "";
        //    txtMessage.Text = "";
        //    //lnkContact.HRef = "#contact";

        //}

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

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
           
            LeadgenerationParamHome leadgeneration = new LeadgenerationParamHome();
            GenerateLead generateLead = new GenerateLead();
            try
            {
                var regex = new Regex(@"[^a-zA-Z0-9\s.,]");
                if (txtcaptcha.Text.ToLower() == Session["CaptchaVerify"].ToString())
                {
                    long number;
                    // Regex regex = new Regex("^[a-zA-Z0-9\\s]*$");              
                    bool success = long.TryParse(txtMobileNo.Text.Trim(), out number);
                    if (success && !regex.IsMatch(txtMessage.Text.Trim()))
                    {
                        leadgeneration.Companyname = txtCompanyname.Text.Trim();
                        leadgeneration.Contactname = txtContactname.Text.Trim();
                        leadgeneration.CustomerEmailID = txtEmail.Text.Trim();
                        leadgeneration.customerMobileNo = txtMobileNo.Text.Trim();
                        leadgeneration.Quantity = ddlQuantity.SelectedValue;
                        leadgeneration.ProductType = ddlEquipment.SelectedValue;
                        leadgeneration.Buytype = BuyType.SelectedValue;
                        leadgeneration.Message = txtMessage.Text.Trim();
                        leadgeneration.Type = "InsertLead";
                        leadgeneration.Source = "imset.co.in";
                        string message = generateLead.InsertLeadHomepage(leadgeneration);
                        if (message == "Success")
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('We have registered your request. We will get back to you As Soon As Possible')", true);
                        }
                        else
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Due to some technical glitch we are are not able to register your request. Please try after some time.')", true);
                        }
                    }
                    else
                    {
                        if (success == false)
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Valid mobile number')", true);

                        }
                        else
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Special character not allow ')", true);

                        }
                    }
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Valid Captcha')", true);

                }
            }
            catch (Exception ex)
            {

            }



        }

        protected void lnkMembraneFiltration_Click(object sender, EventArgs e)
        {
            try
            {
                DownloadFile("IMSET Membrane Filtration Assembly in Word Format Catalogue.pdf");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}