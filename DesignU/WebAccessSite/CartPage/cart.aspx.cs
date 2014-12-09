using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAccessSite.CartPage
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Web.UI.HtmlControls.HtmlTableRow r1;
            System.Web.UI.HtmlControls.HtmlTableCell c1;
            System.Web.UI.HtmlControls.HtmlTableCell c2;
            System.Web.UI.HtmlControls.HtmlTableCell c3;
            System.Web.UI.HtmlControls.HtmlTableCell c4;
            System.Web.UI.HtmlControls.HtmlImage img;
            System.Web.UI.HtmlControls.HtmlGenericControl name;
            System.Web.UI.HtmlControls.HtmlInputText quant;
            System.Web.UI.HtmlControls.HtmlGenericControl subtot;
            System.Web.UI.WebControls.LinkButton rmvBtn;
            System.Web.UI.HtmlControls.HtmlGenericControl glyph;

            


            for (int i = 0; i < 5; i++)
            {
                r1 = new System.Web.UI.HtmlControls.HtmlTableRow();
                c1 = new System.Web.UI.HtmlControls.HtmlTableCell();
                c2 = new System.Web.UI.HtmlControls.HtmlTableCell();
                c3 = new System.Web.UI.HtmlControls.HtmlTableCell();
                c4 = new System.Web.UI.HtmlControls.HtmlTableCell();
                img = new System.Web.UI.HtmlControls.HtmlImage();
                name = new System.Web.UI.HtmlControls.HtmlGenericControl();
                quant = new System.Web.UI.HtmlControls.HtmlInputText();
                subtot = new System.Web.UI.HtmlControls.HtmlGenericControl();
                rmvBtn = new System.Web.UI.WebControls.LinkButton();
                glyph = new System.Web.UI.HtmlControls.HtmlGenericControl();

                r1.Controls.Add(c1);
                r1.Controls.Add(c2);
                r1.Controls.Add(c3);
                r1.Controls.Add(c4);

                img.Src = "http://placehold.it/50";
                name.InnerText = " Item name";
                c1.Controls.Add(img);
                c1.Controls.Add(name);

                quant.Style["width"] = "5em";
                c2.Controls.Add(quant);

                subtot.InnerText = "$10.00";
                c3.Controls.Add(subtot);

                rmvBtn.CssClass = "btn btn-danger";
                rmvBtn.PostBackUrl = "?delete=id";

                glyph.Attributes.Add("aria-hidden", "true");
                glyph.Attributes.Add("class", "glyphicon glyphicon-remove");
                rmvBtn.Controls.Add(glyph);
                c4.Controls.Add(rmvBtn);

                cartDisplay.Controls.Add(r1); 
            }
        }

    //<tr>
    //    <td>
    //        <img src="http://placehold.it/50"/>
    //        Item name</td>
    //    <td style="">
    //        <input name="ctl00$maincontent$quantityRow1" type="number" id="maincontent_quantityRow1" style="width: 5em;">
    //    </td>
    //    <td>
    //        <span id="maincontent_subtotalRow1">$10.00</span>
    //    </td>
    //    <td>
    //        <a id="maincontent_removeButtonRow1" class="btn btn-danger" href="javascript:__doPostBack('ctl00$maincontent$removeButtonRow1','')">
    //            <i aria-hidden="true" class="glyphicon glyphicon-remove"></i>
    //        </a>
    //    </td>
    //</tr>

        protected void rmvBtn_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('" + ((System.Web.UI.WebControls.LinkButton)sender).ID + "');", true);
        }
    }
}