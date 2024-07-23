using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GIP_Webshop
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAanmelden_Click(object sender, EventArgs e)
        {
            Server.Transfer("Login.aspx");
        }

        protected void btnRegistreren_Click(object sender, EventArgs e)
        {
            Server.Transfer("Registreren.aspx");
        }

        protected void btnBeheerder_Click(object sender, EventArgs e)
        {
            Server.Transfer("LoginBeheerder.aspx");
        }

        protected void btnProducten_Click(object sender, EventArgs e)
        {
            Server.Transfer("Producten.aspx");
        }
    }
}