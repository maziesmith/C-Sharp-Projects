using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAccessSite.AccountPage
{
    public partial class AccountPage : System.Web.UI.Page
    {
        private String email = "";
        private String firstName = "";
        private String lastName = "";

        protected global::System.Web.UI.HtmlControls.HtmlIframe viewItemPane;

        protected void Page_Load(Object Sender, EventArgs e)
        {
            String username = "";
            try
            {
                username = (Session["Username"].ToString());

            }
            catch (NullReferenceException err)
            {
                Session["last"] = "/AccountPage/AccountPage.aspx";
                Response.Redirect("/accCreatePage/CreateAccount.aspx", true);
            }

            System.Web.UI.HtmlControls.HtmlGenericControl[] itemDivs = new System.Web.UI.HtmlControls.HtmlGenericControl[5];
            itemDivs[0] = item1div;
            itemDivs[1] = item2div;
            itemDivs[2] = item3div;
            itemDivs[3] = item4div;
            itemDivs[4] = item5div;

            try
            {
                SqlConnection db = new SqlConnection("user id=VectoriousDesigns;password=oqlZHJyITNbq0Ik;Data Source=lyra2.unfcsd.unf.edu;Initial Catalog=VectoriousDesigns");
                db.Open();

                SqlCommand accCmd = new SqlCommand("select * from Accounts where username = @usernameText", db);
                accCmd.Parameters.AddWithValue("@usernameText", username);
                SqlDataReader acc = accCmd.ExecuteReader();

                acc.Read();

                //avatar.ImageUrl = ((acc["avatarImg"] == null) ? "http://placehold.it/200" : acc["avatarImg"].ToString());
                //avatar.ImageUrl = "http://placehold.it/129";
                lblUsername.InnerHtml = acc["username"].ToString();
                txtFirstName.Text = acc["FirstName"].ToString();
                txtLastName.Text = acc["LastName"].ToString();
                txtEmail.Text = acc["Email"].ToString();

                acc.Close();

                SqlCommand itmsCmd = new SqlCommand("SELECT itemID, itemName, itemImage FROM Items, Accounts WHERE Username = @username ORDER BY timeCreated DESC", db);
                itmsCmd.Parameters.AddWithValue("@username", username);

                SqlDataReader items = itmsCmd.ExecuteReader();

                for (int i = 0; i < 5 && items.Read(); i++)
                {
                    itemDivs[i].Style["display"] = "inline";

                }
                items.Close();

                SqlCommand ordersCmd = new SqlCommand("SELECT orderID, datePurchased FROM Orders, Accounts WHERE Username = @username", db);
                ordersCmd.Parameters.AddWithValue("@username", username);

                SqlDataReader orders = ordersCmd.ExecuteReader();

                if (!orders.Read())
                {
                    emptyBox.Style["display"] = "block";
                }
                else
                {
                    emptyBox.Style["display"] = "none";
                    do
                    {
                        // write order divs here
                    } while (orders.Read());
                }
                orders.Close();
            }
            catch (Exception er)
            {
                throw new Exception("Attempting to divide by zero.\nPlease stand by while the server explodes.", er);
            }
        }

        protected void chgProfileBtn_Click(Object Sender, EventArgs e)
        {
            email = txtEmail.Text;
            firstName = txtFirstName.Text;
            lastName = txtLastName.Text;

            txtEmail.Enabled = true;
            txtFirstName.Enabled = true;
            txtLastName.Enabled = true;
            
            chgProfileBtn.Style["display"] = "none";
            cancelBtn.Style["display"] = "inline";
            svProfileBtn.Style["display"] = "inline";
        }

        protected void svProfileBtn_Click(object sender, EventArgs e)
        {
            SqlConnection db = new SqlConnection("user id=VectoriousDesigns;password=oqlZHJyITNbq0Ik;Data Source=lyra2.unfcsd.unf.edu;Initial Catalog=VectoriousDesigns");
            db.Open();

            SqlCommand save = new SqlCommand("UPDATE Accounts SET FirstName = @firstname, LastName = @lastname where Username = @username", db);
            save.Parameters.AddWithValue("@firstname", txtFirstName.Text);
            save.Parameters.AddWithValue("@lastname", txtLastName.Text);
            save.Parameters.AddWithValue("@username", Session["Username"]);

            txtFirstName.Enabled = false;
            txtLastName.Enabled = false;

            chgProfileBtn.Style["display"] = "inline";
            cancelBtn.Style["display"] = "none";
            svProfileBtn.Style["display"] = "none";
        }

        protected void cancelBtn_Click(object sender, EventArgs e)
        {
            txtEmail.Enabled = false;
            txtFirstName.Enabled = false;
            txtLastName.Enabled = false;

            txtEmail.Text = email;
            txtFirstName.Text = firstName;
            txtLastName.Text = lastName;

            chgProfileBtn.Style["display"] = "inline";
            cancelBtn.Style["display"] = "none";
            svProfileBtn.Style["display"] = "none";
        }

    }
}