using imset.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace Imset.Model
{
   
    public class LoginDetails
    {
        public DataTable CheckUser(LoginParam param)
        {
            LoginResponse loginResponse = new LoginResponse();
            DataTable dt = new DataTable();
            try
            {
                SqlConnection con = new SqlConnection(Connection.getConnection());
                SqlCommand cmd = new SqlCommand("UserLoginDetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@type", param.Type);
                cmd.Parameters.AddWithValue("@username", param.UserName);
                cmd.Parameters.AddWithValue("@password", param.Password);
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
    }

    public class LoginParam
    {
        public string Type { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
    }

    public class LoginResponse
    {
        public string Result { get; set; }
        public string UserName { get; set; }
        public string UserFullName { get; set; }

    }
}