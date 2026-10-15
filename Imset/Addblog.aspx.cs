using imset.Model;
using Imset.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Imset.Model.AddContent;

namespace Imset
{
    public partial class Addblog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getdata();
                ddltag();
                BindBlogGridview();
                BindSubBlogGridview();
            }

        }

        protected void Add_Blog_Click(object sender, EventArgs e)
        {
            try
            {
                Addblogcontentparam addblogcontentparam = new Addblogcontentparam();
                AddContent addContent = new AddContent();
                if (blogIMG.HasFile)
                {
                    addblogcontentparam.Imagename_withextension = Path.GetFileName(blogIMG.FileName);
                    addblogcontentparam.Imagename_withoutextension = Path.GetFileNameWithoutExtension(blogIMG.FileName);
                    addblogcontentparam.Imageextension = Path.GetExtension(blogIMG.FileName);
                    addblogcontentparam.Imagepath = "Blogimage/" + addblogcontentparam.Imagename_withextension;
                    addblogcontentparam.Type = "AddData";
                    addblogcontentparam.Title = txt_title.Text.Trim();
                    addblogcontentparam.Description = txt_description.Text.Trim();
                    blogIMG.SaveAs(Server.MapPath(Path.Combine("~/Blogimage/", addblogcontentparam.Imagename_withextension)));
                    string message = addContent.InsertContent(addblogcontentparam);
                    if (message == "Success")
                    {
                        // ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('We have registered your request. We will get back to you As Soon As Possible')", true);
                    }
                    else
                    {
                        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Due to some technical glitch we are are not able to register your request. Please try after some time.')", true);
                    }
                    BindBlogGridview();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

        }

        protected void Add_sublog_Click(object sender, EventArgs e)
        {
            try
            {
                Session["myDatatable"] = null;
                Addblogcontentparam addblogcontentparam = new Addblogcontentparam();
                AddContent addContent = new AddContent();
                //if (!SubblogIMG.HasFile)
                //{
                //    addblogcontentparam.Imagename_withextension = Path.GetFileName(SubblogIMG.FileName);
                //    addblogcontentparam.Imagename_withoutextension = Path.GetFileNameWithoutExtension(SubblogIMG.FileName);
                //    addblogcontentparam.Imageextension = Path.GetExtension(SubblogIMG.FileName);
                //    addblogcontentparam.Imagepath = "Blogimage/" + addblogcontentparam.Imagename_withextension;
                //    addblogcontentparam.Type = "AddSub_blog";

                //    addblogcontentparam.Description = Txtsubblogdesciption.Text.Trim();
                //    //blogIMG.SaveAs(Server.MapPath(Path.Combine("~/Blogimage/", FileName)));
                //    string message = "Success"; //addContent.InsertContent(addblogcontentparam);
                //}
                String TotalTag = Txtsubblogdesciption.Text.Trim();
                for (int i = 1; i <= Convert.ToInt32(TotalTag); i++)
                {
                    AddNewData(i);
                    BindGridview1();
                }
                SubblogDiv.Visible = true;
                Subblog_grid_submit.Visible = true;
                MainBlog.Visible = false;
                gridview_Main_blog.Visible = false;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        public void getdata()
        {
            List<Addblogcontentparam> getblockdata = new List<Addblogcontentparam>();
            //List<Addblogcontentparam> getblockdata = new List<Addblogcontentparam>();
            AddContent addContent = new AddContent();
            //getblockdata = addContent.GetItemsFromDatabase();
            int tagid = 1;
            getblockdata = addContent.GetTag_And_Description(tagid);
        }
        public void BindBlogGridview()
        {
            List<Addblogcontentparam> getblockdata = new List<Addblogcontentparam>();
            AddContent addContent = new AddContent();
            getblockdata = addContent.GetItemsFromDatabase();
            BlogGridview.DataSource = getblockdata;
            BlogGridview.DataBind();
        }
        public void BindSubBlogGridview()
        {
            List<Addblogcontentparam> getblockdata = new List<Addblogcontentparam>();
            AddContent addContent = new AddContent();
            getblockdata = addContent.GetTag_And_Description_ForGrid();
            Sub_Bloggridviewdata.DataSource = getblockdata;
            Sub_Bloggridviewdata.DataBind();
        }
        public void ddltag()
        {
            List<CommonDO> ddltagsnamelist = new List<CommonDO>();
            AddContent addContent = new AddContent();
            ddltagsnamelist = addContent.GetTagitem();

        }

        public void AddNewData(int k)
        {
            int i = k;
            List<CommonDO> ddltagsnamelist = new List<CommonDO>();
            //List<Addblogcontentparam> getblockdata = new List<Addblogcontentparam>();
            AddContent addContent = new AddContent();
            ddltagsnamelist = addContent.GetTagitem();
            i = k;
            DataTable dt = new DataTable();
            if (Session["myDatatable"] != null)
            {
                dt = (DataTable)Session["myDatatable"];
            }
            else
            {
                dt.Columns.Add("SRNO");
                dt.Columns.Add("Description");
                // dt.Columns.Add("Inverter");
                dt.Columns.Add(new DataColumn("Tag", typeof(string)));
            }

            DataRow drow = dt.NewRow();
            drow["SRNO"] = "";
            drow["Description"] = "";
            // drow["Select Inverter"] =DropDownList1;

            drow["Tag"] = "";
            //GridView2.FindControl("InverterNo");//.DataSource=inverterListDos;
            dt.Rows.Add(drow);
            Session["myDatatable"] = dt;

        }
        public void BindGridview1()
        {
            if (Session["myDatatable"] != null)
            {
                DataTable dt = (DataTable)Session["myDatatable"];

                if ((dt != null) && (dt.Rows.Count > 0))
                {
                    GridView2.Visible = true;
                    GridView2.DataSource = dt;
                    GridView2.DataBind();
                }
                else
                {
                    GridView2.Visible = false;
                }
            }
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DropDownList ddlhtmltag = (DropDownList)e.Row.FindControl("ddlhtmltag");
                List<CommonDO> ddltagsnamelist = new List<CommonDO>();
                AddContent addContent = new AddContent();
                ddltagsnamelist = addContent.GetTagitem();

                if (ddltagsnamelist != null)
                {
                    ddlhtmltag.DataSource = ddltagsnamelist;
                    ddlhtmltag.DataTextField = "DisplayText";
                    ddlhtmltag.DataValueField = "Id";
                }
                else
                {
                    ddlhtmltag.DataSource = null;
                }
                ddlhtmltag.DataBind();
                ddlhtmltag.Items.Insert(0, new ListItem("--Please select--", "0"));
            }
        }

        protected void ddlhtmltag_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddlHtmlTag = (DropDownList)sender;
            GridViewRow row = (GridViewRow)ddlHtmlTag.NamingContainer;
            FileUpload fileUpload = (FileUpload)row.FindControl("fileUpload");
            TextBox txttag = (TextBox)row.FindControl("txtDescription");
            RequiredFieldValidator reqfilevalidator = (RequiredFieldValidator)row.FindControl("reqfilevalidator");


            if (ddlHtmlTag.SelectedValue == "9")
            {
                fileUpload.Visible = true;
                txttag.Visible = false;
                reqfilevalidator.Visible = true;
            }
            else
            {
                fileUpload.Visible = false;
                txttag.Visible = true;
                reqfilevalidator.Visible = false;
            }
        }

        protected void SaveBlogtag_Click(object sender, EventArgs e)
        {
            try
            {
                Addblogcontentparam addblogcontentparam = new Addblogcontentparam();
                AddContent addContent = new AddContent();
                foreach (GridViewRow row in GridView2.Rows)
                {
                    addblogcontentparam.Blog_id = (row.FindControl("txtSrno") as TextBox).Text;
                    addblogcontentparam.Blog_HTML_Tag_Description = (row.FindControl("txtDescription") as TextBox).Text;
                    addblogcontentparam.Blog_HTML_Tag_id = (row.FindControl("ddlhtmltag") as DropDownList).SelectedValue;
                    FileUpload fileUpload = (FileUpload)row.FindControl("fileUpload");
                    if (fileUpload.HasFile)
                    {
                        addblogcontentparam.Imagename_withextension = Path.GetFileName(fileUpload.FileName);
                        addblogcontentparam.Imagename_withoutextension = Path.GetFileNameWithoutExtension(fileUpload.FileName);
                        addblogcontentparam.Imageextension = Path.GetExtension(fileUpload.FileName);
                        addblogcontentparam.Imagepath = "Blogimage/" + addblogcontentparam.Imagename_withextension;
                        fileUpload.SaveAs(Server.MapPath(Path.Combine("~/Blogimage/", addblogcontentparam.Imagename_withextension)));
                    }
                    else
                    {
                        addblogcontentparam.Imagename_withextension = "";
                        addblogcontentparam.Imagename_withoutextension = "";
                        addblogcontentparam.Imageextension = "";
                        addblogcontentparam.Imagepath = "";
                        addblogcontentparam.Imagepath = "";
                    }
                    addblogcontentparam.Type = "AddBlogTags";
                    string message = addContent.InsertBlogHtmltags(addblogcontentparam);

                }
                BindSubBlogGridview();

            }
            catch (Exception ex)
            {
                Response.Redirect("~/Error");
            }
        }

        protected void BlogGridview_RowEditing(object sender, GridViewEditEventArgs e)
        {
            BlogGridview.EditIndex = e.NewEditIndex;
            BindBlogGridview();
        }

        protected void BlogGridview_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
          
            BlogGridview.EditIndex = -1;
            Addblogcontentparam addblogcontentparam = new Addblogcontentparam();
            AddContent addContent = new AddContent();

            TextBox Blodid = BlogGridview.Rows[e.RowIndex].FindControl("txt_Id") as TextBox;
            TextBox txttiltle = BlogGridview.Rows[e.RowIndex].FindControl("txttitle") as TextBox;
            TextBox txtdescription = BlogGridview.Rows[e.RowIndex].FindControl("txtDescription") as TextBox;

            addblogcontentparam.Blog_id = Blodid.Text;
            addblogcontentparam.Title = txttiltle.Text;
            addblogcontentparam.Description = txtdescription.Text;
            addblogcontentparam.Type = "UpdateBlog";
            FileUpload FileImageSave = (FileUpload)BlogGridview.Rows[e.RowIndex].FindControl("FileImageSave");

            try
            {
                if (FileImageSave.PostedFile != null)
                {
                    addblogcontentparam.Imagename_withextension = Path.GetFileName(FileImageSave.PostedFile.FileName);
                    addblogcontentparam.Imageextension = Path.GetExtension(FileImageSave.PostedFile.FileName);
                    addblogcontentparam.Imagename_withoutextension = Path.GetFileNameWithoutExtension(FileImageSave.PostedFile.FileName);
                    addblogcontentparam.Imagepath = "Blogimage/" + addblogcontentparam.Imagename_withextension;

                    if (addblogcontentparam.Imagename_withextension == "")
                    {
                        addblogcontentparam.Imagename_withextension = "";
                        addblogcontentparam.Imageextension = "";
                        addblogcontentparam.Imagename_withoutextension = "";
                        addblogcontentparam.Imagepath = "";
                    }
                    else
                    {
                        FileImageSave.SaveAs(Server.MapPath(Path.Combine("~/Blogimage/", addblogcontentparam.Imagename_withextension)));

                    }
                }
                else
                {
                    addblogcontentparam.Imagename_withextension = "";
                    addblogcontentparam.Imageextension = "";
                    addblogcontentparam.Imagename_withoutextension = "";
                }
                string message = addContent.UpdateBlogContent(addblogcontentparam);
                if (message == "Success")
                {
                    //  ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('We have registered your request. We will get back to you As Soon As Possible')", true);
                }
                else
                {
                    //  ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Due to some technical glitch we are are not able to register your request. Please try after some time.')", true);
                }

                BindBlogGridview();
            }
            catch (Exception Ex)
            {
                Response.Redirect("~/Error");
            }

        }

        protected void BlogGridview_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            BlogGridview.EditIndex = -1;
            BindBlogGridview();
        }

        protected void BlogGridview_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                BlogGridview.EditIndex = -1;
                Addblogcontentparam addblogcontentparam = new Addblogcontentparam();
                AddContent addContent = new AddContent();


                int Blodid = Convert.ToInt32(BlogGridview.DataKeys[e.RowIndex].Values["Blog_id"]);

                addblogcontentparam.Blog_id = Blodid.ToString();
                addblogcontentparam.Type = "DeleteBlog";
                string message = addContent.UpdateBlogContent(addblogcontentparam);
                if (message == "Success")
                {
                    BindBlogGridview();
                    //  ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('We have registered your request. We will get back to you As Soon As Possible')", true);
                }
                else
                {
                    //  ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Due to some technical glitch we are are not able to register your request. Please try after some time.')", true);
                }

            }
            catch (Exception exx)
            {
                Response.Redirect("~/Error");
            }
          

        }

        protected void Add_card_blog_Click(object sender, EventArgs e)
        {
            MainBlog.Visible = true;
            gridview_Main_blog.Visible = true;
            Subblog.Visible = false;
            SubblogDiv.Visible = false;
            Subblog_grid_submit.Visible = false;
            SubblogGridview.Visible = false;
        }



        protected void Add_subblog_Click(object sender, EventArgs e)
        {
            MainBlog.Visible = false;
            gridview_Main_blog.Visible = false;
            Subblog.Visible = true;
            SubblogGridview.Visible = true;
        }

        protected void Sub_Bloggridviewdata_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && Sub_Bloggridviewdata.EditIndex == e.Row.RowIndex)
            {
                DropDownList ddlhtmltag1 = (DropDownList)e.Row.FindControl("ddlhtmltagedit");
                List<CommonDO> ddltagsnamelist = new List<CommonDO>();
                //List<Addblogcontentparam> getblockdata = new List<Addblogcontentparam>();
                AddContent addContent = new AddContent();
                ddltagsnamelist = addContent.GetTagitem();

                if (ddltagsnamelist != null)
                {
                    ddlhtmltag1.DataSource = ddltagsnamelist;
                    ddlhtmltag1.DataTextField = "DisplayText";
                    ddlhtmltag1.DataValueField = "Id";
                }
                else
                {
                    ddlhtmltag1.DataSource = null;
                }
                ddlhtmltag1.DataBind();
                ddlhtmltag1.Items.Insert(0, new ListItem("--Please select--", "0"));
            }
        }

        protected void Sub_Bloggridviewdata_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            Sub_Bloggridviewdata.EditIndex = -1;
            BindSubBlogGridview();
        }

        protected void Sub_Bloggridviewdata_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Sub_Bloggridviewdata.EditIndex = e.NewEditIndex;
            BindSubBlogGridview();
        }

        protected void Sub_Bloggridviewdata_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Sub_Bloggridviewdata.EditIndex = -1;
            Addblogcontentparam addblogcontentparam = new Addblogcontentparam();
            AddContent addContent = new AddContent();
            int Blodid = Convert.ToInt32(Sub_Bloggridviewdata.DataKeys[e.RowIndex].Values["Main_blog_id"]);

            addblogcontentparam.Blog_id = Blodid.ToString();
            addblogcontentparam.Type = "DeleteSubBlog";
            string message = addContent.UpdateBlogContent(addblogcontentparam);
            BindSubBlogGridview();
        }

        protected void Sub_Bloggridviewdata_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                Sub_Bloggridviewdata.EditIndex = -1;
                Addblogcontentparam addblogcontentparam = new Addblogcontentparam();
                AddContent addContent = new AddContent();
                int Main_blog_id = Convert.ToInt32(Sub_Bloggridviewdata.DataKeys[e.RowIndex].Values["Main_blog_id"]);
                TextBox Blodid = Sub_Bloggridviewdata.Rows[e.RowIndex].FindControl("txt_Id") as TextBox;
                TextBox txtdescription = Sub_Bloggridviewdata.Rows[e.RowIndex].FindControl("txtDescription") as TextBox;
                DropDownList tagid = Sub_Bloggridviewdata.Rows[e.RowIndex].FindControl("ddlhtmltagEdit") as DropDownList;
                addblogcontentparam.Main_blog_id = Main_blog_id.ToString();
                addblogcontentparam.Blog_id = Blodid.Text;
                addblogcontentparam.Description = txtdescription.Text;
                addblogcontentparam.Tag_Id = tagid.Text;
                addblogcontentparam.Type = "UpdateSubBlog";
                FileUpload FileImageSave = (FileUpload)Sub_Bloggridviewdata.Rows[e.RowIndex].FindControl("FileImageSave");
                if (FileImageSave.PostedFile != null)
                {
                    addblogcontentparam.Imagename_withextension = Path.GetFileName(FileImageSave.PostedFile.FileName);
                    addblogcontentparam.Imageextension = Path.GetExtension(FileImageSave.PostedFile.FileName);
                    addblogcontentparam.Imagename_withoutextension = Path.GetFileNameWithoutExtension(FileImageSave.PostedFile.FileName);
                    addblogcontentparam.Imagepath = "Blogimage/" + addblogcontentparam.Imagename_withextension;

                    if (addblogcontentparam.Imagename_withextension == "")
                    {
                        addblogcontentparam.Imagename_withextension = "";
                        addblogcontentparam.Imageextension = "";
                        addblogcontentparam.Imagename_withoutextension = "";
                        addblogcontentparam.Imagepath = "";
                    }
                    else
                    {
                        FileImageSave.SaveAs(Server.MapPath(Path.Combine("~/Blogimage/", addblogcontentparam.Imagename_withextension)));
                    }
                }
                else
                {
                    addblogcontentparam.Imagename_withextension = "";
                    addblogcontentparam.Imageextension = "";
                    addblogcontentparam.Imagename_withoutextension = "";
                }
                string message = addContent.UpdateSubBlogContent(addblogcontentparam);
                BindSubBlogGridview();

            }
            catch (Exception E)
            {
                Response.Redirect("~/Error");
            }
        }
    }
}