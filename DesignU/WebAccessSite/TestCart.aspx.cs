using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAccessSite
{
    public partial class TestCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void removeItem(object sender, EventArgs e)
        {
            

            string username = Session["Username"].ToString();

            SqlConnection db = new SqlConnection("user id=VectoriousDesigns;password=oqlZHJyITNbq0Ik;Data Source=lyra2.unfcsd.unf.edu;Initial Catalog=VectoriousDesigns");
            db.Open();

            string removeItem = "DELETE FROM testCartItem WHERE userName = @userName";

            SqlCommand remove = new SqlCommand(removeItem, db);
            remove.Parameters.AddWithValue("@userName", username);
            
            remove.ExecuteNonQuery();

            Response.Redirect(Request.RawUrl);


        }
    }
}