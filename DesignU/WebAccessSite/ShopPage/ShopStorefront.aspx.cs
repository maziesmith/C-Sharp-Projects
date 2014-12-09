using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAccessSite.ShopPage
{
    public partial class ShopStorefront : System.Web.UI.Page
    {
        private String itemDivStr = "<div runat=\"server\" id=\"itemthetaDiv\" class=\"ShopContainer\" style=\"width: 220px; padding: 10px; margin: 5px; float: left; text-align: center;\">\n<a class=\"itemLink\" runat=\"server\" ID=\"itemthetaBtn\" href=\"\\ViewItem\\ViewItem.aspx?view=shop&id=itemidplaceholder\" data-toggle=\"modal\" data-target=\"#modalFrame\">\n<div class=\"thumbnail\" style=\"margin: 1px;\">\n<img id=\"itemthetaImg\" src=\"http://placehold.it/200\" runat=\"server\" alt=\"...\">\n<div class=\"caption\">\n<h3 runat=\"server\" id=\"itemthetaName\">itemnameplaceholder</h3>\n</div>\n</div>\n</a>\n</div>";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //item1div.Style["display"] = "inline";
                //Img1.Src = "http://placehold.it/200";
                for (int i = 0; i < 5; i++)
                {
                    String newItem = itemDivStr;
                    newItem = newItem.Replace("theta", i.ToString()).Replace("itemnameplaceholder", "Item " + i.ToString()).Replace("itemidplaceholder", i.ToString());
                    itemsArea.InnerHtml += newItem;
                }
            }
        }
    }
}