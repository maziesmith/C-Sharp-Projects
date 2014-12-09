﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAccessSite.ShopPage
{
    public partial class ShopAccessories : System.Web.UI.Page
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
            string sticker = "sticker";
            string postcard = "postcard";

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
                    item1Btn.NavigateUrl = "/ViewItem/ViewItem.aspx?view=shop&id=4";
                }
                if (queryParam == flag)
                {
                    string imgUrl = "~/Graphics/blankflagtrans.png";
                    originalItemImage.ImageUrl = imgUrl;
                    itemName.Text = "Flag";
                    item1Btn.NavigateUrl = "/ViewItem/ViewItem.aspx?view=shop&id=5";
                }
                if (queryParam == keychain)
                {
                    string imgUrl = "~/Graphics/blankkeychain.jpg";
                    originalItemImage.ImageUrl = imgUrl;
                    itemName.Text = "Keychain";
                    item1Btn.NavigateUrl = "/ViewItem/ViewItem.aspx?view=shop&id=6";
                }
                if (queryParam == poster)
                {
                    string imgUrl = "~/Graphics/poster.jpg";
                    originalItemImage.ImageUrl = imgUrl;
                    itemName.Text = "Poster";
                    item1Btn.NavigateUrl = "/ViewItem/ViewItem.aspx?view=shop&id=7";
                }
                if (queryParam == sticker)
                {
                    item1div.Style["display"] = "none";
                    noItmsDiv.Style["display"] = "inline";
                    noItmType.InnerText = "stickers";
                    noItmLink.NavigateUrl = "~/CreatePage/CreatePage.aspx?cat=" + queryParam;
                }
                if (queryParam == postcard)
                {
                    item1div.Style["display"] = "none";
                    noItmsDiv.Style["display"] = "inline";
                    noItmType.InnerText = "postcards";
                    noItmLink.NavigateUrl = "~/CreatePage/CreatePage.aspx?cat=" + queryParam;
                }

            }
            else
            {
                //Alert user they have to choose a product first before creating. 
            }
        }
    }
}