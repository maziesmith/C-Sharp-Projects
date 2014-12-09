using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAccessSite.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString != null)
            {
                if (Request.QueryString["mode"] != null)
                {
                    if (Request.QueryString["mode"].Equals("logout"))
                    {
                        loginView.Style["display"] = "none";
                        logoutView.Style["display"] = "table-cell";
                        Session["Username"] = null;
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "refreshParent", "refreshParent()", true);
                    }
                }
            }
        }

        protected void btnSubmitLogin_Click(object sender, EventArgs e)
        {
            //Opens the connection to the DB
            SqlConnection db = new SqlConnection("user id=VectoriousDesigns;password=oqlZHJyITNbq0Ik;Data Source=lyra2.unfcsd.unf.edu;Initial Catalog=VectoriousDesigns");
            db.Open();
            
            try
            {
                string loginQuery = "select count(*) from Accounts where Username=@username and Password=@password";
                SqlCommand loginCommand = new SqlCommand(loginQuery, db);
                loginCommand.Parameters.AddWithValue("@username", txtUsername.Text.ToString());
                loginCommand.Parameters.AddWithValue("@password", txtPassword.Text.ToString());

                int userCount = (int)loginCommand.ExecuteScalar();
                
                if (userCount == 1)
                {
                    Session["Username"] = txtUsername.Text.Trim();
                    loginDiv.Style["display"] = "none";
                    successDiv.Style["display"] = "table-cell";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "refreshParent", "refreshParent()", true);
                    
                }
                else
                {
                    error.Style["display"] = "inline";
                    usernameError.Style["display"] = "inline";
                    pwError.Style["display"] = "inline";
                    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Account not found!')", true);
                }
            }
                
            catch (Exception ex)
            {
                error.Style["display"] = "inline";
                errorMsg.InnerText = "Couldn't log in, please contact site admin!";
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert(Failed to login, please contact site admin!')", true);
            }
            finally
            {
                db.Close();
            }


             

            

        }

        protected void createAccount_Click(object sender, EventArgs e)
        {
            Session["last"] = Request.Url;
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "createAccRedirect", "window.parent.location.href='/accCreatePage/CreateAccount.aspx", true);
        }

        protected void transferFocus_Click(object sender, EventArgs e)
        {
            txtPassword.Focus();
        }
    }
}