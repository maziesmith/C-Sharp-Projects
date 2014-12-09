using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebAccessSite
{
    /// <summary>
    /// Summary description for AutoComplete
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class AutoComplete : System.Web.Services.WebService
    {

        [WebMethod]
        public List<string> GetAutoCompleteData(string search)
        {
            List<string> result = new List<string>();

            SqlConnection db = new SqlConnection("user id=VectoriousDesigns;password=oqlZHJyITNbq0Ik;Data Source=lyra2.unfcsd.unf.edu;Initial Catalog=VectoriousDesigns");
            db.Open();

            SqlCommand cmd = new SqlCommand("select * from Products where prodName LIKE '%' + @SearchText + '%'", db);
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
