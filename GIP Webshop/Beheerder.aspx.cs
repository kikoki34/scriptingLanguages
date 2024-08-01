using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GIP_Webshop
{
    public partial class Beheerder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKlanten_Click(object sender, EventArgs e)
        {
            Server.Transfer("BeheerKlanten.aspx");
        }

        protected void btnProducten_Click(object sender, EventArgs e)
        {
            Server.Transfer("BeheerProducten.aspx");
        }

        protected void btnBestellingen_Click(object sender, EventArgs e)
        {
            Server.Transfer("BeheerBestellingen.aspx");
        }

        protected void btnAfmelden_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home.aspx");
        }
    }
}