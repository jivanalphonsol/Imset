using System;
using System.Data;
using System.Data.SqlClient;

namespace imset.Model
{
    public class ProductCatalogue
    {
        public DataTable GetAll()
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.getConnection()))
            using (SqlCommand cmd = new SqlCommand("sp_imsetroductcataloge_getall", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                new SqlDataAdapter(cmd).Fill(dt);
            }
            return dt;
        }

        public DataRow GetById(int id)
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.getConnection()))
            using (SqlCommand cmd = new SqlCommand("bioxiaadmin.sp_ProductCataloge_GetById", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ProductCatalog_Id", id);
                new SqlDataAdapter(cmd).Fill(dt);
            }
            return dt.Rows.Count > 0 ? dt.Rows[0] : null;
        }

        // id = 0 inserts; id > 0 updates (null pdfFile keeps the existing file)
        public void Save(int id, string title, string description, string pdfFileName, string pdfFile)
        {
            using (SqlConnection con = new SqlConnection(Connection.getConnection()))
            using (SqlCommand cmd = new SqlCommand(id > 0 ? "bioxiaadmin.sp_ProductCataloge_Update" : "sp_imset_productcataloge_insert", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                if (id > 0)
                {
                    cmd.Parameters.AddWithValue("@ProductCatalog_Id", id);
                }
                cmd.Parameters.AddWithValue("@Title", title);
                cmd.Parameters.AddWithValue("@Description", string.IsNullOrWhiteSpace(description) ? (object)DBNull.Value : description);
                cmd.Parameters.AddWithValue("@PdfFileName", (object)pdfFileName ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@PdfFile", (object)pdfFile ?? DBNull.Value);
                cmd.Parameters.AddWithValue(id > 0 ? "@Updated_By" : "@Created_By", 1);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public bool Delete(int id)
        {
            using (SqlConnection con = new SqlConnection(Connection.getConnection()))
            using (SqlCommand cmd = new SqlCommand("sp_ProductCataloge_Delete", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ProductCatalog_Id", id);
                cmd.Parameters.AddWithValue("@Updated_By", 1);
                con.Open();
                object result = cmd.ExecuteScalar();
                return result != null && result != DBNull.Value && Convert.ToInt32(result) > 0;
            }
        }
    }
}
