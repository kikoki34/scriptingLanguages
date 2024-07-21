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
    public partial class LoginBeheerder : System.Web.UI.Page
    {
        public static string strConnectie = ConfigurationManager.ConnectionStrings["ConnectionStringCategorieen"].ToString();
        public static OleDbConnection cnn = new OleDbConnection(strConnectie);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAanmelden_Click(object sender, EventArgs e)
        {
            if (txtLogin.Text == "Grandmere" && txtWW.Text=="GrandPere")
            {
                Server.Transfer("Beheerder.aspx");
            }
            else
            {
                lblmelding.Text = "Probeer opnieuw!";
            }
        }
    }
}