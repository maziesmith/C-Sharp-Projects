using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAccessSite
{
    public partial class AjaxTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void search(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                //Clears previous form data if it is still there by creating a list of type TextBox and setting there text property to an empty string 
                var clearTextBoxes = new List<TextBox>() {txtSearch};
                foreach (var textBox in clearTextBoxes)
                {
                    textBox.Text = "";
                }
            }
        }
    }
}