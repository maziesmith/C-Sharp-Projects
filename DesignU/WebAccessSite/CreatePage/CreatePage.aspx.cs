using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAccessSite.CreatePage
{
    public partial class CreatePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string queryParam = Request.QueryString["cat"];
            string tshirt = "tshirt";
            string hoodie = "hoodie";
            string longsleeve = "longsleeve";
            string button = "btn";
            string flag = "flag";
            string keychain = "keychain";
            string poster = "poster"; 

            if (queryParam != null)
            {
                if (queryParam == tshirt)
                {
                    txtitemName.Text = "Tshirt";
                    lblSubtotal.Text = "$12.00";
                    string imgUrl = "~/Graphics/Tshirt.png";
                    originalItemImage.ImageUrl = imgUrl;
                }
                if (queryParam == hoodie)
                {
                    txtitemName.Text = "Hoodie";
                    lblSubtotal.Text = "$20.00";
                    string imgUrl = "~/Graphics/hoodie.png";
                    originalItemImage.ImageUrl = imgUrl;
                }
                if (queryParam == longsleeve)
                {
                    txtitemName.Text = "LongSleeve";
                    lblSubtotal.Text = "$14.00";
                    string imgUrl = "~/Graphics/longsleevetrans.jpg";
                    originalItemImage.ImageUrl = imgUrl;
                }
                if (queryParam == button)
                {
                    txtitemName.Text = "Button";
                    lblSubtotal.Text = "$2.00";
                    string imgUrl = "~/Graphics/buttonpin.png";
                    originalItemImage.ImageUrl = imgUrl;
                }
                if (queryParam == flag)
                {
                    txtitemName.Text = "Flag";
                    lblSubtotal.Text = "$4.00";
                    string imgUrl = "~/Graphics/blankflagtrans.png";
                    originalItemImage.ImageUrl = imgUrl;
                }
                if (queryParam == keychain)
                {
                    txtitemName.Text = "KeyChain";
                    lblSubtotal.Text = "$2.00";
                    string imgUrl = "~/Graphics/blankkeychain.jpg";
                    originalItemImage.ImageUrl = imgUrl;
                }
                if (queryParam == poster)
                {
                    txtitemName.Text = "Poster";
                    lblSubtotal.Text = "$4.00";
                    string imgUrl = "~/Graphics/poster.jpg";
                    originalItemImage.ImageUrl = imgUrl;

                }

            }
            else
            {
                //Alert user they have to choose a product first before creating. 
            }

           
        }

        protected void newAddToCart(Object sender, EventArgs e)
        {
            string username = Session["Username"].ToString();

            SqlConnection db = new SqlConnection("user id=VectoriousDesigns;password=oqlZHJyITNbq0Ik;Data Source=lyra2.unfcsd.unf.edu;Initial Catalog=VectoriousDesigns");
            db.Open();

            string insert = "INSERT INTO testCartItem (userName, itemImage, itemName, quantity, subtotal) values (@userName, @itemImage,@itemName, @quantity, @subtotal)";
            SqlCommand addToCart = new SqlCommand(insert, db);

            addToCart.Parameters.AddWithValue("@userName", username.ToString()); 
            addToCart.Parameters.AddWithValue("@itemImage", originalItemImage.ImageUrl.ToString()); 
            addToCart.Parameters.AddWithValue("@itemName", txtitemName.Text.ToString());
            addToCart.Parameters.AddWithValue("@quantity", txtQuantity.Text.ToString());
            addToCart.Parameters.AddWithValue("@subtotal", lblSubtotal.Text.ToString());

            addToCart.ExecuteNonQuery();
            db.Close();

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Item Added To Cart')", true);
            

        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            Session["last"] = "/ShopPage/ShopPage.aspx";

            //Saves the original itme image and selected item size by user then redirects to cart page
            Session["originalItem"] = originalItemImage;
            Session["selectedSize"] = sizeDropDown.SelectedIndex;
            
            
            //Opens the connection to the DB
            SqlConnection db = new SqlConnection("user id=VectoriousDesigns;password=oqlZHJyITNbq0Ik;Data Source=lyra2.unfcsd.unf.edu;Initial Catalog=VectoriousDesigns");
            db.Open();

            //Query String to execute against the DB

            string username = Session["Username"].ToString();
                  
            string countItems = "select count (itemID) from Items, Accounts where Username = @username"; //itemID           
            string eml = "select Email from Accounts where Username = @username";
            string prdnm = Request.QueryString["cat"].ToString();
            string itmnm = "0";
            string itmclr = "0";
            string itmimg = "Get img path";
            string itmtxt = "0";
            string itmdsc = "Get from Text Box";
            string insert = "insert into Items (itemID, Email, prodName, itemName, itemColor, itemImage, itemText, itemDesc, timeCreated) values (@itemid, @email, @prodname, @itemname, @itemcolor, @itemimage, @itemtext, @itemdesc, @timeCreated)";
            string cart = "select cartID from Accounts where Username = @username";
            string insCartItem = "insert into CartItems (cartItemID, quantity, orderID, itemSize, Email, itemID, cartID) values (@CIID, @quantity, @size, @ email, @itemID, @cartID";
            try
            {
                //Adds the parameters to the query string to avoid SQL Injection 
                SqlCommand cntCmd = new SqlCommand(countItems, db); //get new itemID                
                SqlCommand emlCmd = new SqlCommand(eml, db);
                SqlCommand insCmd = new SqlCommand(insert, db);  //insert item into db 
                SqlCommand crtIdCmd = new SqlCommand(cart, db);
                SqlCommand crtItmCmd = new SqlCommand(insCartItem, db);

                cntCmd.Parameters.AddWithValue("@username", username);
                crtIdCmd.Parameters.AddWithValue("@username", username);
                emlCmd.Parameters.AddWithValue("@username", username);

                string new_itemID = cntCmd.ExecuteScalar().ToString();
                SqlDataReader cr = crtIdCmd.ExecuteReader();
                cr.Read();
                string cartID = cr["cartID"].ToString();
                SqlDataReader er = emlCmd.ExecuteReader();
                er.Read();
                string email = er["Email"].ToString();
  
                insCmd.Parameters.AddWithValue("@itemid", new_itemID);
                insCmd.Parameters.AddWithValue("@email", email);
                insCmd.Parameters.AddWithValue("@prodname", prdnm);
                insCmd.Parameters.AddWithValue("@itemname", itmnm);
                insCmd.Parameters.AddWithValue("@itemcolor", itmclr);
                insCmd.Parameters.AddWithValue("@itemimage", itmimg);
                insCmd.Parameters.AddWithValue("@itemtext", itmtxt);
                insCmd.Parameters.AddWithValue("@itemdesc", itmdsc);
                insCmd.Parameters.AddWithValue("@timeCreated", DateTime.Now);

                crtItmCmd.Parameters.AddWithValue("@CIID", cartID);
                crtItmCmd.Parameters.AddWithValue("@quantity", "");
                crtItmCmd.Parameters.AddWithValue("@size", sizeDropDown.SelectedValue);
                crtItmCmd.Parameters.AddWithValue("@cartID", cartID);

            
            insCmd.ExecuteNonQuery();

            Session["Username"] = username;
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
        }

        protected void svBtn_Click(object sender, EventArgs e)
        {
            //Opens the connection to the DB
            SqlConnection db = new SqlConnection("user id=VectoriousDesigns;password=oqlZHJyITNbq0Ik;Data Source=lyra2.unfcsd.unf.edu;Initial Catalog=VectoriousDesigns");
            db.Open();

            //Query String to execute against the DB

            string username = Session["Username"].ToString();

            string countItems = "select count (itemID) from Items, Accounts where Username = @username"; //itemID           
            string eml = "select Email from Accounts where Username = @username";
            string prdnm = Request.QueryString["cat"].ToString();
            string itmnm = "0";
            string itmclr = "0";
            string itmimg = "Get img path";
            string itmtxt = "0";
            string itmdsc = "Get from Text Box";
            string insert = "insert into Items (itemID, Email, prodName, itemName, itemColor, itemImage, itemText, itemDesc, timeCreated) values (@itemid, @email, @prodname, @itemname, @itemcolor, @itemimage, @itemtext, @itemdesc, @timeCreated)";
            
            try
            {
                //Adds the parameters to the query string to avoid SQL Injection 
                SqlCommand cntCmd = new SqlCommand(countItems, db); //get new itemID                
                SqlCommand emlCmd = new SqlCommand(eml, db);
                SqlCommand insCmd = new SqlCommand(insert, db);  //insert item into db

                cntCmd.Parameters.AddWithValue("@username", username);
                emlCmd.Parameters.AddWithValue("@username", username);

                string new_itemID = cntCmd.ExecuteScalar().ToString();
                
                SqlDataReader er = emlCmd.ExecuteReader();
                er.Read();
                string email = er["Email"].ToString();

                insCmd.Parameters.AddWithValue("@itemid", new_itemID);
                insCmd.Parameters.AddWithValue("@email", email);
                insCmd.Parameters.AddWithValue("@prodname", prdnm);
                insCmd.Parameters.AddWithValue("@itemname", itmnm);
                insCmd.Parameters.AddWithValue("@itemcolor", itmclr);
                insCmd.Parameters.AddWithValue("@itemimage", itmimg);
                insCmd.Parameters.AddWithValue("@itemtext", itmtxt);
                insCmd.Parameters.AddWithValue("@itemdesc", itmdsc);
                insCmd.Parameters.AddWithValue("@timeCreated", DateTime.Now);


                insCmd.ExecuteNonQuery();

                Session["Username"] = username;
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
        }


        
    }    
}