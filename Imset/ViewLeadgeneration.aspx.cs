using imset.Model;
using System;
using System.Data;
using System.IO;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Imset
{
    public partial class ViewLead : System.Web.UI.Page
    {
        DataTable dtLeadDetails = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        
        
        {
            Response.AppendHeader("Access-Control-Allow-Origin", "*");
            if (!Page.IsPostBack)
            {
                if (!string.IsNullOrEmpty(Convert.ToString(Session["UserName"])))
                {
                    String Username = "UserName : " + Convert.ToString(Session["UserFullName"]);
                    Contactusleads();
                    BindLeadsDetails();
                }
                else
                {
                    Session.Clear();
                    Session.Abandon();
                    Response.Redirect("~/Login.aspx");
                }
            }
        }
        private void Contactusleads()
        {
            try
            {

                GenerateLead generateLead = new GenerateLead();
                LeadDetailsparam leadDetailsparam = new LeadDetailsparam();
                leadDetailsparam.Type = "GetData";
                dtLeadDetails = generateLead.LeadContactuspage(leadDetailsparam);
                if (dtLeadDetails.Rows.Count > 0)
                {
                    //Session["data"] = dtLeadDetails;
                    Contactusleadgrd.DataSource = dtLeadDetails;
                    Contactusleadgrd.DataBind();
                    //btnExport.Visible = true;
                }
                else
                {
                    Contactusleadgrd.DataSource = dtLeadDetails;
                    Contactusleadgrd.DataBind();
                    //btnExport.Visible = false;
                }
            }
            catch (Exception ex)
            {

                CommonUtilities.FnWriteErrorLog("BindLeadsDetails", ex.Source);
            }


        }
        private void BindLeadsDetails()
        {
            try
            {

                //GetLeadDetails getLeadDetails = new GetLeadDetails();
                GenerateLead generateLead = new GenerateLead();
                LeadgenerationParamHome leadDetailsparam = new LeadgenerationParamHome();
                leadDetailsparam.Type = "GetLeadData";
                leadDetailsparam.Store_SP = "Lead_Home_page";
                dtLeadDetails = generateLead.GetGenaratedLeadDetails(leadDetailsparam);
                if (dtLeadDetails.Rows.Count > 0)
                {
                    //Session["data"] = dtLeadDetails;
                    grdLeadDetails.DataSource = dtLeadDetails;
                    grdLeadDetails.DataBind();
                    //btnExport.Visible = true;
                }
                else
                {
                    grdLeadDetails.DataSource = dtLeadDetails;
                    grdLeadDetails.DataBind();
                    //btnExport.Visible = false;
                }
            }
            catch (Exception ex)
            {

                CommonUtilities.FnWriteErrorLog("BindLeadsDetails", ex.Source);
            }


        }

        protected void grdLeadDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdLeadDetails.PageIndex = e.NewPageIndex;
            BindLeadsDetails();
        }

        protected void Add_Blog_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Addblog");
        }

        //protected void ExportButton_Click(object sender, EventArgs e)
        //{
        //    // Create a new instance of the StringWriter and HtmlTextWriter
        //    using (StringWriter sw = new StringWriter())
        //    using (HtmlTextWriter hw = new HtmlTextWriter(sw))
        //    {
        //        // Create a new HtmlForm control to wrap the GridView
        //        using (HtmlForm form = new HtmlForm())
        //        {
        //            // Add the GridView to the form
        //            form.Controls.Add(grdLeadDetails);

        //            // Clear the response and set the content type to Excel
        //            Response.Clear();
        //            Response.Buffer = true;
        //            Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.xls");
        //            Response.Charset = "";
        //            Response.ContentType = "application/ms-excel";

        //            // Enable ViewState for the GridView to ensure data binding
        //            grdLeadDetails.EnableViewState = false;

        //            // Execute the rendering of the form and GridView
        //            Page.Server.Execute(new System.Web.UI.Page(), Response.Output, false);

        //            // End the response
        //            Response.Flush();
        //            Response.End();
        //        }
        //    }

        //}
        protected void ExportButton_Click(object sender, EventArgs e)
        {
            GenerateLead generateLead = new GenerateLead();
            LeadgenerationParamHome leadDetailsparam = new LeadgenerationParamHome();
            leadDetailsparam.Type = "GetLeadData";
            leadDetailsparam.Store_SP = "Lead_Home_page";
            dtLeadDetails = generateLead.GetGenaratedLeadDetails(leadDetailsparam);

            // Export the DataTable to Excel
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=ImsetQuotationLeads.xls");
            Response.Charset = "";
            Response.ContentType = "application/ms-excel";

            // Create a GridView and bind it to the DataTable
            GridView gv = new GridView();
            gv.DataSource = dtLeadDetails;
            gv.DataBind();

            // Render the GridView to the HTMLTextWriter
            using (StringWriter sw = new StringWriter())
            using (HtmlTextWriter hw = new HtmlTextWriter(sw))
            {
                gv.RenderControl(hw);

                // Output the GridView content as an Excel file
                Response.Output.Write(sw.ToString());
                Response.Flush();
                Response.End();
            }
        }

        protected void LeadContactuspage_Click(object sender, EventArgs e)
        {
            GenerateLead generateLead = new GenerateLead();
            LeadgenerationParamHome leadDetailsparam = new LeadgenerationParamHome();
            leadDetailsparam.Type = "GetData";
            leadDetailsparam.Store_SP = "leadgenerationdata";
            dtLeadDetails = generateLead.GetGenaratedLeadDetails(leadDetailsparam);

            // Export the DataTable to Excel
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=ImsetContactusLeads.xls");
            Response.Charset = "";
            Response.ContentType = "application/ms-excel";

            // Create a GridView and bind it to the DataTable
            GridView gv = new GridView();
            gv.DataSource = dtLeadDetails;
            gv.DataBind();

            // Render the GridView to the HTMLTextWriter
            using (StringWriter sw = new StringWriter())
            using (HtmlTextWriter hw = new HtmlTextWriter(sw))
            {
                gv.RenderControl(hw);

                // Output the GridView content as an Excel file
                Response.Output.Write(sw.ToString());
                Response.Flush();
                Response.End();
            }

        }
    }



}