using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAccessSite.AccountPage.MyStorefront
{
    public partial class MyStorefront : System.Web.UI.Page
    {
        private String itemDivStr = "<div runat=\"server\" id=\"itemthetaDiv\" class=\"ShopContainer\" style=\"width: 220px; padding: 10px; margin: 5px; float: left; text-align: center;\">\n<a class=\"itemLink\" runat=\"server\" ID=\"itemthetaBtn\" href=\"\\ViewItem\\ViewItem.aspx?view=acc&id=theta\" data-toggle=\"modal\" data-target=\"#modalFrame\">\n<div class=\"thumbnail\" style=\"margin: 1px;\">\n<img id=\"itemthetaImg\" src=\"imgplaceholder\" runat=\"server\" alt=\"...\">\n<div class=\"caption\">\n<h3 runat=\"server\" id=\"itemthetaName\">itemnameplaceholder</h3>\n</div>\n</div>\n</a>\n</div>";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection db = new SqlConnection("user id=VectoriousDesigns;password=oqlZHJyITNbq0Ik;Data Source=lyra2.unfcsd.unf.edu;Initial Catalog=VectoriousDesigns");
                db.Open();

                SqlCommand getStrID = new SqlCommand("SELECT storeID FROM Accounts WHERE Username = @username", db);
                getStrID.Parameters.AddWithValue("@username", Session["Username"].ToString());
                SqlDataReader sr = getStrID.ExecuteReader();
                sr.Read();

                SqlCommand itmCmd = new SqlCommand("SELECT * FROM Items WHERE storeID = @strID", db);
                itmCmd.Parameters.AddWithValue("@strID", sr["storeID"]);
                sr.Close();
                SqlDataReader itmRdr = itmCmd.ExecuteReader();

                while (itmRdr.Read())
                {
                    String newItem = itemDivStr;
                    newItem = newItem.Replace("theta", itmRdr["itemID"].ToString()).Replace("itemnameplaceholder", itmRdr["itemName"].ToString()).Replace("imgplaceholder", itmRdr["itemImg"].ToString());
                    itemsArea.InnerHtml += newItem; 
                }
            }
            if (IsPostBack && (Request.QueryString["manage"] != null))
            {
                bool managing = Request.QueryString["manage"].Equals("true");
                // enable the option controls
                if (managing)
                {
                    manageBtn.Text = "Save storefront settings";
                    manageBtn.PostBackUrl = "?manage=false";
                    
                    commissionDisplayLabel.Style.Add("display", "none");
                    commissionEditArea.Style["display"] = "inline";
                    commissionAmount.Enabled = true;
                    
                    
                    storefrontNameControls.Style.Remove("display");
                    storefrontNameBox.Enabled = true;
                    storefrontNameBox.Text = storefrontTitle.InnerText;
                }
                // save options and disable the option controls
                else
                {
                    int commission = int.Parse(commissionAmount.Text);
                    int max = int.Parse(commissionAmount.Attributes["max"]);
                    if (commission < 0 || commission > max)
                    {
                        commissionError.Style["display"] = "inline";
                        return;
                    }
                    // clear the error message just in case
                    else
                    {
                        commissionError.Style["display"] = "none";
                    }
                    manageBtn.Text = "Manage storefront";
                    manageBtn.PostBackUrl = "?manage=true";

                    commissionDisplayLabel.Text = commissionAmount.Text + "%";
                    commissionDisplayLabel.Style.Remove("display");
                    commissionEditArea.Style["display"] = "none";
                    commissionAmount.Enabled = false;

                    storefrontNameControls.Style.Add("display", "none");
                    storefrontNameBox.Enabled = false;
                    storefrontTitle.InnerText = storefrontNameBox.Text;

                }
            }
        }

        protected void svstngBtn_Click(object sender, EventArgs e)
        {

        }


    }
    
}