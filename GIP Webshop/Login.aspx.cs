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
    public partial class Login : System.Web.UI.Page
    {
        public static string strConnectie = ConfigurationManager.ConnectionStrings["ConnectionStringCategorieen"].ToString();
        public static OleDbConnection cnn = new OleDbConnection(strConnectie);

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = cnn;

            string str1;
            str1 = "SELECT Email, Wachtwoord, Naam, Voornaam, Adres, Gemeente, Postcode, KlantID FROM tblklanten";
            str1 += " WHERE (Email = @email) AND (wachtwoord = @wachtwoord)";

            cmd.CommandText = str1;
            cmd.Parameters.AddWithValue("@email", lgnAanmelden.UserName);
            cmd.Parameters.AddWithValue("@wachtwoord", lgnAanmelden.Password);

            cnn.Open();

            OleDbDataReader drLijst = cmd.ExecuteReader();
            int intTeller = 0;
            while (drLijst.Read())
            {
                Session["Email"] = drLijst[0].ToString();
                Session["Naam"] = drLijst[2].ToString();
                Session["Voornaam"] = drLijst[3].ToString();
                Session["Adres"] = drLijst[4].ToString();
                Session["Gemeente"] = drLijst[5].ToString();
                Session["Postcode"] = drLijst[6].ToString();
                Session["KlantID"] = drLijst[7].ToString();

                intTeller++;
            }
            cnn.Close();

                if (intTeller == 1)
                {
                //System.Web.Security.FormsAuthentication.RedirectFromLoginPage(lgnAanmelden.UserName, false);
                Server.Transfer("eigenprofiel.aspx");
                }
                else
                {
                    lgnAanmelden.FailureText = "Foutieve aanmelding. Probeer nogmaals!";
                }
          
        

          
        }
    }
}