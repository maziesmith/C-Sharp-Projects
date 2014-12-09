using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAccessSite.Account
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void changePwBtn_Click(object sender, EventArgs e)
        {
            SqlConnection db = new SqlConnection("user id=VectoriousDesigns;password=oqlZHJyITNbq0Ik;Data Source=lyra2.unfcsd.unf.edu;Initial Catalog=VectoriousDesigns");
            db.Open();

            SqlCommand checkPw = new SqlCommand("SELECT COUNT(Password) FROM Accounts WHERE Password = @pw", db);
            checkPw.Parameters.AddWithValue("@pw", oldPwBox.Text);

            if ((int)checkPw.ExecuteScalar() == 1)
            {
                oldError.Style["display"] = "none";
                if (!newPwBox.Text.Equals(""))
                {
                    newError.Style["display"] = "none";
                    if (newPwBox.Text.Equals(confirmNewPwBox.Text))
                    {
                        confirmError.Style["display"] = "none";

                        SqlCommand chgPw = new SqlCommand("UPDATE Accounts SET Password = @newPw WHERE username = @username", db);
                        chgPw.Parameters.AddWithValue("@newPw", newPwBox.Text);
                        chgPw.Parameters.AddWithValue("@username", Session["Username"].ToString());

                        chgPw.ExecuteNonQuery();
                    }
                    else
                    {
                        confirmError.Style.Remove("display");
                    }
                }
                else
                {
                    newError.Style.Remove("display");
                }
            }
            else {
                oldError.Style.Remove("display");
            }

        }
    }
}