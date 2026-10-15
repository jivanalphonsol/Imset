using imset.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.SqlTypes;
using static Imset.Model.AddContent;


namespace Imset.Model
{
    public class AddContent
    {
        public string InsertContent(Addblogcontentparam param)
        {
            string message = "";
            try
            {
                SqlConnection con = new SqlConnection(Connection.getConnection());
                SqlCommand cmd = new SqlCommand("Add_Blog_content", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@type", param.Type);
                cmd.Parameters.AddWithValue("@Blog_Image_path", param.Imagepath);
                cmd.Parameters.AddWithValue("@Blog_image_name", param.Imagename_withoutextension);
                cmd.Parameters.AddWithValue("@Blog_image_extension", param.Imageextension);
                cmd.Parameters.AddWithValue("@Blog_title", param.Title);
                cmd.Parameters.AddWithValue("@Blog_description", param.Description);
                cmd.Parameters.AddWithValue("@Blog_id", 1);

                con.Open();
                int i = cmd.ExecuteNonQuery();

                if (i == 0)
                {
                    message = "Fail";
                }
                else
                {
                    message = "Success";
                }

                con.Close();
            }
            catch (Exception ex)
            {
                CommonUtilities.FnWriteErrorLog("InsertContent", ex.StackTrace);
                HttpContext.Current.Response.Redirect("~/errorpage.aspx");
            }
            return message;
        }
        public string UpdateBlogContent(Addblogcontentparam param)
        {
            string message = "";
            try
            {
                SqlConnection con = new SqlConnection(Connection.getConnection());
                SqlCommand cmd = new SqlCommand("Add_Blog_content", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@type", param.Type);
                cmd.Parameters.AddWithValue("@Blog_Image_path", param.Imagepath);
                cmd.Parameters.AddWithValue("@Blog_image_name", param.Imagename_withoutextension);
                cmd.Parameters.AddWithValue("@Blog_image_extension", param.Imageextension);
                cmd.Parameters.AddWithValue("@Blog_title", param.Title);
                cmd.Parameters.AddWithValue("@Blog_description", param.Description);
                cmd.Parameters.AddWithValue("@Blog_id", param.Blog_id);

                con.Open();
                int i = cmd.ExecuteNonQuery();

                if (i == 0)
                {
                    message = "Fail";
                }
                else
                {
                    message = "Success";
                }

                con.Close();
            }
            catch (Exception ex)
            {
                CommonUtilities.FnWriteErrorLog("UpdateBlogContent", ex.StackTrace);
                HttpContext.Current.Response.Redirect("~/errorpage.aspx");
            }
            return message;
        }
        public string UpdateSubBlogContent(Addblogcontentparam param)
        {
            string message = "";
            try
            {
                SqlConnection con = new SqlConnection(Connection.getConnection());
                SqlCommand cmd = new SqlCommand("Add_Blog_content", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@type", param.Type);
                cmd.Parameters.AddWithValue("@Blog_id", param.Blog_id);
                cmd.Parameters.AddWithValue("@Main_Blog_id", param.Main_blog_id);
                cmd.Parameters.AddWithValue("@Tag_id", param.Tag_Id);
                cmd.Parameters.AddWithValue("@Tag_Description", param.Description);
                cmd.Parameters.AddWithValue("@Blog_Image_path", param.Imagepath);
                cmd.Parameters.AddWithValue("@Blog_image_name", param.Imagename_withoutextension);
                cmd.Parameters.AddWithValue("@Blog_image_extension", param.Imageextension);
            
                con.Open();
                int i = cmd.ExecuteNonQuery();

                if (i == 0)
                {
                    message = "Fail";
                }
                else
                {
                    message = "Success";
                }

                con.Close();
            }
            catch (Exception ex)
            {
                CommonUtilities.FnWriteErrorLog("UpdateSubBlogContent", ex.StackTrace);
                HttpContext.Current.Response.Redirect("~/errorpage.aspx");
            }
            return message;
        }

        public string InsertBlogHtmltags(Addblogcontentparam param)
        {
            string message = "";
            try
            {
                SqlConnection con = new SqlConnection(Connection.getConnection());
                SqlCommand cmd = new SqlCommand("Add_Blog_content", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@type", param.Type);
                cmd.Parameters.AddWithValue("@Blog_id", param.Blog_id);
                cmd.Parameters.AddWithValue("@Tag_id", param.Blog_HTML_Tag_id);
                cmd.Parameters.AddWithValue("@Tag_Description", param.Blog_HTML_Tag_Description);
                cmd.Parameters.AddWithValue("@Blog_DD_Image_path", param.Imagepath);
                cmd.Parameters.AddWithValue("@Blog_description", param.Blog_HTML_Tag_Description);
                cmd.Parameters.AddWithValue("@Blog_DD_image_name",param.Imagename_withoutextension);
                cmd.Parameters.AddWithValue("@Blog_DD_image_extension", param.Imagename_withextension);
                con.Open();
                int i = cmd.ExecuteNonQuery();
                if (i == 0)
                {
                    message = "Fail";
                }
                else
                {
                    message = "Success";
                }

                con.Close();
            }
            catch (Exception ex)
            {
                CommonUtilities.FnWriteErrorLog("InsertBlogHtmltags", ex.StackTrace);
                HttpContext.Current.Response.Redirect("~/errorpage.aspx");
            }
            return message;
        }
        public List<Addblogcontentparam> GetItemsFromDatabase()
        {
           
          
            List<Addblogcontentparam> items = new List<Addblogcontentparam>();
            using (SqlConnection connection = new SqlConnection(Connection.getConnection()))
            {
                try
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand("Add_Blog_content", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("Type", "GetBlogData");
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Addblogcontentparam item = new Addblogcontentparam
                                {
                                    Title = reader["Title"].ToString(),
                                    Description = reader["Description"].ToString(),
                                    Imagepath = reader["Imagepath"].ToString(),
                                    Blog_id = reader["Blog_id"].ToString(),
                                    MonthName = reader["MonthName"].ToString(),
                                    Day = reader["Day"].ToString(),
                                    Year = reader["Year"].ToString(),
                                };
                                items.Add(item);
                            }
                        }
                    }
                  
                }
                catch (Exception ex)
                {
                    CommonUtilities.FnWriteErrorLog("GetItemsFromDatabase", ex.StackTrace);
                    HttpContext.Current.Response.Redirect("~/errorpage.aspx");
                }
                return items;
            }
        }

        public List<Addblogcontentparam> GetTag_And_Description(int tagid)
        {
            List<Addblogcontentparam> items = new List<Addblogcontentparam>();
            try
            {
               
                using (SqlConnection connection = new SqlConnection(Connection.getConnection()))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand("Add_Blog_content", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("Type", "GetblogTitleAndtag");
                        command.Parameters.AddWithValue("@Blog_id", tagid);
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Addblogcontentparam item = new Addblogcontentparam
                                {
                                    Imagepath = reader["Imagepath"].ToString(),
                                    Description = reader["Description"].ToString(),
                                    Tag_name = reader["Tag_name"].ToString(),
                                    Blog_id = reader["Blog_id"].ToString(),

                                };
                                items.Add(item);
                            }
                        }
                    }
                    
                }
            }
            catch (Exception E)
            {
                CommonUtilities.FnWriteErrorLog("GetTag_And_Description", E.StackTrace);
                HttpContext.Current.Response.Redirect("~/errorpage.aspx");
            }
            return items;
        }
        public List<Addblogcontentparam> GetTag_And_Description_ForGrid()
        {
            List<Addblogcontentparam> items = new List<Addblogcontentparam>();
            try
            {
                using (SqlConnection connection = new SqlConnection(Connection.getConnection()))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand("Add_Blog_content", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("Type", "subblogdata_Griddata");
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Addblogcontentparam item = new Addblogcontentparam
                                {
                                    Main_blog_id = reader["Main_blog_id"].ToString(),
                                    Blog_id = reader["Blog_id"].ToString(),
                                    Tag_Id = reader["Tag_Id"].ToString(),
                                    Description = reader["Description"].ToString(),
                                    Imagepath = reader["Imagepath"].ToString(),
                                };
                                items.Add(item);
                            }
                        }
                    }
                   
                }
            }
            catch (Exception E)
            {
                CommonUtilities.FnWriteErrorLog("GetTag_And_Description_ForGrid", E.StackTrace);
                HttpContext.Current.Response.Redirect("~/errorpage.aspx");
            }
            return items;

        }

        public List<Addblogcontentparam> GetSidebar()
        {
            List<Addblogcontentparam> items = new List<Addblogcontentparam>();
            try
            {
                using (SqlConnection connection = new SqlConnection(Connection.getConnection()))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand("Add_Blog_content", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("Type", "GetBlogData");
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Addblogcontentparam item = new Addblogcontentparam
                                {
                                    Title = reader["Title"].ToString(),
                                    Blog_id = reader["Blog_id"].ToString(),

                                };
                                items.Add(item);
                            }
                        }
                    }
                    
                }
            }
            catch (Exception E)
            {
                CommonUtilities.FnWriteErrorLog("GetSidebar", E.StackTrace);
                HttpContext.Current.Response.Redirect("~/errorpage.aspx");
            }
            return items;

        }

        public List<CommonDO> GetTagitem()
        {
            List<CommonDO> itemsList = new List<CommonDO>();
            try
            {
                using (SqlConnection connection = new SqlConnection(Connection.getConnection()))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand("Add_Blog_content", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("Type", "Getddltags");
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                CommonDO item = new CommonDO
                                {
                                    Id = reader["Id"].ToString(),
                                    DisplayText = reader["DisplayText"].ToString(),

                                };
                                itemsList.Add(item);
                            }
                        }
                    }
                }
            }
            catch (Exception E)
            {
                CommonUtilities.FnWriteErrorLog("GetTagitem", E.StackTrace);
                HttpContext.Current.Response.Redirect("~/errorpage.aspx");
            }
            return itemsList;
        }
        public List<CommonDO> GetAnyDropdownvalue(string Type,string sp)
        {
            List<CommonDO> itemsList = new List<CommonDO>();
            try
            {
                using (SqlConnection connection = new SqlConnection(Connection.getConnection()))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(sp, connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("Type", Type);
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                CommonDO item = new CommonDO
                                {
                                    Id = reader["Id"].ToString(),
                                    DisplayText = reader["DisplayText"].ToString(),

                                };
                                itemsList.Add(item);
                            }
                        }
                    }
                }
            }
            catch(Exception E)
            {
                CommonUtilities.FnWriteErrorLog("GetAnyDropdownvalue", E.StackTrace);
                HttpContext.Current.Response.Redirect("~/errorpage.aspx");
            }
            return itemsList;

        }




        public class CommonDO
        {
            public string Id { get; set; }
            public string DisplayText { get; set; }
        }
        public class ResponseDO
        {
            public bool Result { get; set; }
            public string Message { get; set; }
        }
        public class Addblogcontentparam
        {
            public string Title { get; set; }
            public String Description { get; set; }
            public string Imagename_withextension { get; set; }
            public String Imagename_withoutextension { get; set; }
            public String Imagepath { get; set; }
            public string Imageextension { get; set; }
            public String Message { get; set; }
            public String Source { get; set; }
            public String Type { get; set; }
            public string Tag_name { get; set; }
            public string Blog_id { get; set; }
            public string Tag_Id { get; set; }
            public string Main_blog_id { get; set; }
          
            public string Blog_HTML_Tag_id { get; set; }

            public string Blog_HTML_Tag_Description { get; set; }

            public String MonthName { get; set; }
            public String Day { get; set; }
            public String Year { get; set; }
        }
    }
}