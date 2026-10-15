using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace imset.Model
{
    public class Connection
    {
        public static string getConnection()
        {
            string strcon = ConfigurationManager.ConnectionStrings["Sqlconnection"].ConnectionString;
            return strcon;
        }
    }
}