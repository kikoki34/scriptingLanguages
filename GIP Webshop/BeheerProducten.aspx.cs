using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GIP_Webshop
{
    public partial class BeheerProducten : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTerug_Click(object sender, EventArgs e)
        {
            Server.Transfer("Beheerder.aspx");
        }
    }
}