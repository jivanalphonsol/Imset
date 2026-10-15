using imset.Model;
using Imset.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Imset.Model.AddContent;

namespace imset
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlproducttypebind();
                ddlBuyProducttype();
                ddlQuantityBind();
            }
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
            //LeadgenerationParamHome leadgeneration = new LeadgenerationParamHome();
            //GenerateLead generateLead = new GenerateLead();
            //leadgeneration.Companyname = txtCompanyname.Text.Trim();
            //leadgeneration.Contactname = txtContactname.Text.Trim();
            //leadgeneration.CustomerEmailID = txtEmail.Text.Trim();
            //leadgeneration.customerMobileNo = txtMobileNo.Text.Trim();
            //leadgeneration.Quantity = ddlQuantity.SelectedValue;
            //leadgeneration.ProductType = ddlEquipment.SelectedValue;
            //leadgeneration.Buytype = BuyType.SelectedValue;
            //leadgeneration.Message = txtMessage.Text.Trim();
            //leadgeneration.Type = "InsertLead";
            //leadgeneration.Source = "imset.co.in";
            //string message = generateLead.InsertLeadHomepage(leadgeneration);
            //if (message == "Success")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('We have registered your request. We will get back to you As Soon As Possible')", true);
            //}
            //else
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Due to some technical glitch we are are not able to register your request. Please try after some time.')", true);
            //}
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
    }
}