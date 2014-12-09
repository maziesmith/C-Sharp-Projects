using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAccessSite.ViewItem
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       
            if (Request.QueryString != null)
            {
                if (Request.QueryString["id"] != null)
                {
                    SqlConnection db = new SqlConnection("user id=VectoriousDesigns;password=oqlZHJyITNbq0Ik;Data Source=lyra2.unfcsd.unf.edu;Initial Catalog=VectoriousDesigns");
                    db.Open();

                    SqlCommand itmCmd = new SqlCommand("SELECT * FROM Items WHERE itemID = @id", db);
                    itmCmd.Parameters.AddWithValue("@id", Request.QueryString["id"]);
                    SqlDataReader itmData = itmCmd.ExecuteReader();
                    itmData.Read();

                    imgItemModal.ImageUrl = itmData["itemImage"].ToString();
                    viewItemLabel.Text = itmData["itemName"].ToString();
                    desc.InnerText = itmData["itemDesc"].ToString();

                    itmData.Close();

                    db.Close();

                }
                switch (Request.QueryString["view"])
                {
                    case ("shop"):
                        {
                            shopInfo.Style["display"] = "inline";
                            shopBtns.Style["display"] = "inline";
                            storeFrontAndDesignsBtns.Style["display"] = "none";
                            break;
                        }
                    case ("acc"):
                        {
                            shopInfo.Style["display"] = "none";
                            shopBtns.Style["display"] = "none";
                            storeFrontAndDesignsBtns.Style["display"] = "inline";
                            break;
                        }
                }
            }


            
        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            removeBtn.Style["display"] = "inline";
            addBtn.Style["display"] = "none";
        }

        protected void removeBtn_Click(object sender, EventArgs e)
        {
            removeBtn.Style["display"] = "none";
            addBtn.Style["display"] = "inline";
        }

        protected void addBtn_Click1(object sender, EventArgs e)
        {

        }

        protected void addToCartBtn_Click(object sender, EventArgs e)
        {

        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {

        }
    }
}