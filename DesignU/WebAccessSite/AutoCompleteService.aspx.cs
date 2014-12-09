using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Web.Script.Services;

namespace WebAccessSite
{
    public partial class AutoCompleteService : System.Web.UI.Page
    {
        [WebMethod]
        public static List<string> GetAutoCompleteData(string search)
        {
            List<string> result = new List<string>();

            SqlConnection db = new SqlConnection("user id=VectoriousDesigns;password=oqlZHJyITNbq0Ik;Data Source=lyra2.unfcsd.unf.edu;Initial Catalog=VectoriousDesigns");
            db.Open();

            SqlCommand cmd = new SqlCommand("select * from ProductSearch where prodName LIKE '%' + @SearchText + '%'", db);
            cmd.Parameters.AddWithValue("@SearchText", search);
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                result.Add(dr["prodName"].ToString());
            }

            return result;
        }       
    }
}