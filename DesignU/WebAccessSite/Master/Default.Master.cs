using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;
using System.Data;
using System.Web.Script.Services;



namespace WebAccessSite.Master
{
    public partial class Default : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //String thing = Request.page
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('" + "');", true);

            if (Session["Username"] != null)
            {
                accBtn.Style["display"] = "block";
                logoutBtn.Style["display"] = "block";
                loginBtn.Style["display"] = "none";
            }
            else
            {
                accBtn.Style["display"] = "none";
                logoutBtn.Style["display"] = "none";
                loginBtn.Style["display"] = "block";
            }
        }

        [WebMethod]
        public static List<string> GetAutoCompleteData(string search)
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