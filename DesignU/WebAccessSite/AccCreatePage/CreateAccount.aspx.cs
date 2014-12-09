using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAccessSite.AccCreatePage
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String last = "/";
            try
            {
                last = Session["last"].ToString();
            }
            catch (NullReferenceException err)
            {
            }

                //Opens the connection to the DB
                SqlConnection db = new SqlConnection("user id=VectoriousDesigns;password=oqlZHJyITNbq0Ik;Data Source=lyra2.unfcsd.unf.edu;Initial Catalog=VectoriousDesigns");
                db.Open();

                //Query String to execute against the DB
                string countStrFrnt = "select count (storeID) from Storefronts"; //storeID
                string insert_Storefronts = "insert into Storefronts (storeID, Email) values (@storeid, @email)";
                string countCarts = "select count (cartID) from Accounts"; //cartID

                string insert = "insert into Accounts (Email, Username, Password, FirstName, LastName, cartID, storeID) values (@email, @username, @password, @firstname, @lastname, @cartid, @storeid)";

                try
                {
                    //Adds the parameters to the query string to avoid SQL Injection 
                    SqlCommand insCmd = new SqlCommand(insert, db);

                    SqlCommand cntStoresCmd = new SqlCommand(countStrFrnt, db);
                    SqlCommand insStoreCmd = new SqlCommand(insert_Storefronts, db); 
                    SqlCommand cntCartsCmd = new SqlCommand(countCarts, db);

                    string numStores = cntStoresCmd.ExecuteScalar().ToString();

                    insCmd.Parameters.AddWithValue("@email", tbEmail.Text.ToString());
                    insCmd.Parameters.AddWithValue("@username", tbUserName.Text.ToString());
                    insCmd.Parameters.AddWithValue("@password", tbPassword.Text.ToString());
                    insCmd.Parameters.AddWithValue("@firstname", tbFirstName.Text.ToString());
                    insCmd.Parameters.AddWithValue("@lastname", tbLastName.Text.ToString());
                    insCmd.Parameters.AddWithValue("@cartid", cntCartsCmd.ExecuteScalar());
                    insCmd.Parameters.AddWithValue("@storeid", numStores);

                    insStoreCmd.Parameters.AddWithValue("@storeid", numStores);
                    insStoreCmd.Parameters.AddWithValue("@email", tbEmail.Text.ToString());

                    
                    insCmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    throw new Exception(ex.ToString(), ex);
                }
                finally
                {
                    //Closes connection to the DB 
                    db.Close();
                }

                Session["login"] = true;

                //Shows Alert Message to user to notify that account has been created
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Account Created redirecting you to last page...');window.location='" + last + "'", true);

                if (IsPostBack)
                {
                    //Clears previous form data if it is still there by creating a list of type TextBox and setting there text property to an empty string 
                    var clearTextBoxes = new List<TextBox>() { tbEmail, tbUserName, tbPassword, tbFirstName, tbLastName };
                    foreach (var textBox in clearTextBoxes)
                    {
                        textBox.Text = "";
                    }
                }
            
            
        }
    }
}