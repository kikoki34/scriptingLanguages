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
    public partial class Registreren : System.Web.UI.Page
    {
        public static string strConnectie = ConfigurationManager.ConnectionStrings["ConnectionStringCategorieen"].ToString();
        public static OleDbConnection cnn = new OleDbConnection(strConnectie);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            OleDbCommand cmd = new OleDbCommand();

            string strReg;
            strReg = "INSERT INTO tblKlanten (Naam, Voornaam, Adres, Gemeente, Postcode, Email, Wachtwoord)";
            strReg += " VALUES (@Naam, @Voornaam, @Adres, @Gemeente, @Postcode, @Email, @WW)";

            cmd.CommandText = strReg;
            cmd.Connection = cnn;

            cmd.Parameters.AddWithValue("@Naam", txtNaam.Text);
            cmd.Parameters.AddWithValue("@Voornaam", txtVoornaam.Text);
            cmd.Parameters.AddWithValue("@Adres", txtAdres.Text);
            cmd.Parameters.AddWithValue("@Gemeente", txtGemeente.Text);
            cmd.Parameters.AddWithValue("@Postcode",txtPostcode.Text );
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@WW", txtWW.Text);

            cnn.Open();

            cmd.ExecuteNonQuery();

            cnn.Close();

            leegmaken();

            Server.Transfer("Login.aspx");

        }

        protected void btnAnnuleren_Click(object sender, EventArgs e)
        {
            leegmaken();
        }

        protected void leegmaken()
        {
            txtNaam.Text = "";
            txtVoornaam.Text = "";
            txtAdres.Text = "";
            txtGemeente.Text = "";
            txtPostcode.Text = "";
            txtEmail.Text = "";
            txtWW.Text = "";
        }
    }
}