using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;

namespace GIP_Webshop
{
    public partial class ProfielAanpassen : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAanpassen_Click(object sender, EventArgs e)
        {

        }

        protected void btnTerug_Click(object sender, EventArgs e)
        {
            Server.Transfer("EigenProfiel.aspx");
        }
    }
}