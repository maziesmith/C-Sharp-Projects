using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAccessSite.ShopPage
{
    public partial class ShopArt : System.Web.UI.Page
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
                    string imgUrl = "~/Graphics/Tshirt.png";
                    originalItemImage.ImageUrl = imgUrl;
                    itemName.Text = "TShirt";
                }
                if (queryParam == hoodie)
                {
                    string imgUrl = "~/Graphics/hoodie.png";
                    originalItemImage.ImageUrl = imgUrl;
                    itemName.Text = "Hoodie";
                }
                if (queryParam == longsleeve)
                {
                    string imgUrl = "~/Graphics/longsleevetrans.jpg";
                    originalItemImage.ImageUrl = imgUrl;
                    itemName.Text = "Longsleeve TShirt";
                }
                if (queryParam == button)
                {
                    string imgUrl = "~/Graphics/buttonpin.png";
                    originalItemImage.ImageUrl = imgUrl;
                    itemName.Text = "Button";
                }
                if (queryParam == flag)
                {
                    string imgUrl = "~/Graphics/blankflagtrans.png";
                    originalItemImage.ImageUrl = imgUrl;
                    itemName.Text = "Flag";
                }
                if (queryParam == keychain)
                {
                    string imgUrl = "~/Graphics/blankkeychain.jpg";
                    originalItemImage.ImageUrl = imgUrl;
                    itemName.Text = "Keychain";
                }
                if (queryParam == poster)
                {
                    string imgUrl = "~/Graphics/poster.jpg";
                    originalItemImage.ImageUrl = imgUrl;
                    itemName.Text = "Poster";

                }

            }
            else
            {
                //Alert user they have to choose a product first before creating. 
            }
        }
    }
}