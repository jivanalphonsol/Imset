using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace imset.Model
{
    public class GenerateLead
    {
        public DataTable LeadContactuspage(LeadDetailsparam leadDetailsparam)
        {
            DataTable dt = new DataTable();
            try
            {
                SqlConnection con = new SqlConnection(Connection.getConnection());
                SqlCommand cmd = new SqlCommand("leadgenerationdata", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@type", leadDetailsparam.Type);
                SqlDataAdapter da = new SqlDataAdapter();
                con.Open();
                da.SelectCommand = cmd;
                da.Fill(dt);
                con.Close();
            }
            catch (Exception ex)
            {
                //CommonUtilities.FnWriteErrorLog("InsertLead", ex.StackTrace);
            }
            return dt;
        }
        public DataTable GetGenaratedLeadDetails(LeadgenerationParamHome leadDetailsparam)
        {
            DataTable dt = new DataTable();
            try
            {
                SqlConnection con = new SqlConnection(Connection.getConnection());
                SqlCommand cmd = new SqlCommand(leadDetailsparam.Store_SP, con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@type", leadDetailsparam.Type);
                SqlDataAdapter da = new SqlDataAdapter();
                con.Open();
                da.SelectCommand = cmd;
                da.Fill(dt);
                con.Close();
            }
            catch (Exception ex)
            {
                CommonUtilities.FnWriteErrorLog("GetGenaratedLeadDetails", ex.StackTrace);
            }
            return dt;
        }
        public string InsertLead(LeadgenerationParam param)
        {
            string message = "";
            try
            {
                SqlConnection con = new SqlConnection(Connection.getConnection());
                SqlCommand cmd = new SqlCommand("leadgenerationdata", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@type", param.Type);
                cmd.Parameters.AddWithValue("@customername", param.CustomerName);
                cmd.Parameters.AddWithValue("@customeremail", param.CustomerEmailID);
                cmd.Parameters.AddWithValue("@customermobileno", param.customerMobileNo);
                cmd.Parameters.AddWithValue("@message", param.Message);
                cmd.Parameters.AddWithValue("@subject", param.CustomerSubject);
                cmd.Parameters.AddWithValue("@source", param.Source);
                //con.Open();
                //int i = cmd.ExecuteNonQuery();
                cmd.Parameters.Add("@massage", SqlDbType.VarChar, 100);
                cmd.Parameters["@massage"].Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@id", SqlDbType.Int);
                cmd.Parameters["@id"].Direction = ParameterDirection.Output;
             
               
                con.Open();
                cmd.ExecuteNonQuery();
                string result = Convert.ToString(cmd.Parameters["@massage"].Value);
                int id = Convert.ToInt32(cmd.Parameters["@id"].Value);

                if (id == 1)
                {
                    message = "Success";
                   
                }
                else
                {
                    message = "Fail";
                }

                con.Close();
            }
            catch (Exception ex)
            {
                CommonUtilities.FnWriteErrorLog("InsertLead", ex.StackTrace);
            }
            return message;
        }
        public string InsertLeadHomepage(LeadgenerationParamHome param)
        {
            string message = "";
            try
            {
                SqlConnection con = new SqlConnection(Connection.getConnection());
                SqlCommand cmd = new SqlCommand("leadgenerationdata", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@type", param.Type);
                cmd.Parameters.AddWithValue("@source", param.Source);
                cmd.Parameters.AddWithValue("@Companyname", param.Companyname);//
                cmd.Parameters.AddWithValue("@customername", param.Contactname);//
                cmd.Parameters.AddWithValue("@customeremail", param.CustomerEmailID);
                cmd.Parameters.AddWithValue("@customermobilenumber", param.customerMobileNo);
                cmd.Parameters.AddWithValue("@message", param.Message);
                cmd.Parameters.AddWithValue("@Equipment_Id", param.ProductType);
                cmd.Parameters.AddWithValue("@Product_BUY_Type_Id", param.Buytype);
                cmd.Parameters.AddWithValue("@Quantity_Id", param.Quantity);
                cmd.Parameters.Add("@massage", SqlDbType.VarChar, 100);
                cmd.Parameters["@massage"].Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@id", SqlDbType.Int);
                cmd.Parameters["@id"].Direction = ParameterDirection.Output;
                con.Open();
                cmd.ExecuteNonQuery();
                string result = Convert.ToString(cmd.Parameters["@massage"].Value);
                int id = Convert.ToInt32(cmd.Parameters["@id"].Value);
                if (id == 1)
                {
                    message = "Success";
                    
                }
                else
                {
                    message = "Fail";
                }

                con.Close();
            }
            catch (Exception ex)
            {
                CommonUtilities.FnWriteErrorLog("InsertLead", ex.StackTrace);
            }
            return message;
        }
    }

    public class LeadgenerationParam
    {
        public string Type { get; set; }
        public String CustomerName { get; set; }
        public string customerMobileNo { get; set; }
        public String CustomerEmailID { get; set; }
        public string CustomerSubject { get; set; }
        public String Message { get; set; }
        public String Source { get; set; }
    }
    public class LeadDetailsparam
    {
        public string Type { get; set; }
    }
    public class LeadgenerationParamHome
    {
        public string Companyname { get; set; }
        public String Contactname { get; set; }
        public string customerMobileNo { get; set; }
        public String CustomerEmailID { get; set; }
        public string CustomerSubject { get; set; }
        public string Specification { get; set; }
        public string EquipmentName { get; set; }
        public String Message { get; set; }
        public String Source { get; set; }
        public String Quantity { get; set; }
        public String ProductType { get; set; }
        public String Buytype { get; set; }
        public String BUY { get; set; }
        public String Type { get; set; }
        public String Store_SP { get; set; }
        public String Lead_Generated_Date { get; set; }
    }

}