using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GIP_Webshop
{
    public partial class EigenProfiel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAanpassen_Click(object sender, EventArgs e)
        {
            Server.Transfer("ProfielAanpassen.aspx");
        }

        protected void btnProducten_Click(object sender, EventArgs e)
        {
            Server.Transfer("Producten.aspx");
        }

        protected void btnEigenBes_Click(object sender, EventArgs e)
        {
            Server.Transfer("MijnBestellingen.aspx");
        }

        protected void btnAfmelden_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home.aspx");
        }
    }
}