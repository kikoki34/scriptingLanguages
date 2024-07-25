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
    public partial class Bestellingen : System.Web.UI.Page
    {
        public static string strConnectie = ConfigurationManager.ConnectionStrings["ConnectionStringCategorieen"].ToString();
        public static OleDbConnection cnn = new OleDbConnection(strConnectie);

        protected void Page_Load(object sender, EventArgs e)
        {

            Panel2.Visible = false;
        }

        protected void dgvProducten_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }

        protected void btnWinkelMandje_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;

            //Listbox ArtikelID vullen
            string strArtikelID;
            strArtikelID = dgvProducten.SelectedRow.Cells[1].Text;

            lstArtikelID.Items.Add(strArtikelID);

            //Listbox Productnaam vullen
            string strNaam;
            strNaam = dgvProducten.SelectedRow.Cells[2].Text;

            lstNaam.Items.Add(strNaam);

            //Listbox Prijs vullen
            string strPrijs;
            strPrijs = dgvProducten.SelectedRow.Cells[3].Text;

            lstPrijs.Items.Add(strPrijs);

            //Listbox Aantal vullen
            string strAantal;
            strAantal = txtAantal.Text;

            lstAantal.Items.Add(strAantal);

            //textbox aantal leegmaken
            txtAantal.Text = "";


        }

        protected void btnAfrekenen_Click(object sender, EventArgs e)
        {
            OleDbCommand cmd = new OleDbCommand();

            //Wegschrijven in tblBestellingen
            string strAfrekenen;
            strAfrekenen = "INSERT INTO tblBestellingen (Datum, Vervoerskosten, KlantID)";
            strAfrekenen += " VALUES (@datum, @vervoerskosten, @klantID )";

            cmd.CommandText = strAfrekenen;
            cmd.Connection = cnn;

            cmd.Parameters.AddWithValue("@datum", DateTime.Today);
            cmd.Parameters.AddWithValue("@vervoerskosten", 5);
            cmd.Parameters.AddWithValue("@klantID", Session["KlantID"].ToString());

            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();

            //BestelID ophalen
            strAfrekenen = "SELECT TOP 1 BestellingsID FROM tblBestellingen ORDER BY BestellingsID DESC ";

            OleDbCommand cmdBestel = new OleDbCommand();
            cmdBestel.Connection = cnn;

            cmdBestel.CommandText = strAfrekenen;

            int intBestel;
            cnn.Open();
            intBestel = Convert.ToInt16(cmdBestel.ExecuteScalar());
            cnn.Close();

            //Wegschrijven van de producten van de bestelling (tblHeeft)
            int aantalart = lstArtikelID.Items.Count;
            int teller;
            for (teller = 1; teller <= aantalart; teller++)
            {

                strAfrekenen = "INSERT INTO tblHeeft (BestellingsID, ProductID, Aantal)";
                strAfrekenen += " VALUES (@BesID, @ProID, @Aantal)";

                OleDbCommand cmdHeeft = new OleDbCommand();
                cmdHeeft.Connection = cnn;
                cmdHeeft.CommandText = strAfrekenen;


                cmdHeeft.Parameters.AddWithValue("@BesID", intBestel.ToString());
                cmdHeeft.Parameters.AddWithValue("@ProID", lstArtikelID.Items[teller-1].ToString());
                cmdHeeft.Parameters.AddWithValue("@Aantal", lstAantal.Items[teller - 1].ToString());

                cnn.Open();
                cmdHeeft.ExecuteNonQuery();
                cnn.Close();

            }

            //Updaten voorraad
            int aantal = lstArtikelID.Items.Count;
            int teller2;
            for (teller2 = 1; teller2 <= aantal; teller2++)
            {
                strAfrekenen = "UPDATE tblProducten SET Voorraad = voorraad-@voorraad";
                strAfrekenen += " WHERE ProductID = @ProdID";

                OleDbCommand cmdVoorraad = new OleDbCommand();
                cmdVoorraad.Connection = cnn;
                cmdVoorraad.CommandText = strAfrekenen;

                cmdVoorraad.Parameters.AddWithValue("@voorraad", lstAantal.Items[teller2 - 1].ToString());
                cmdVoorraad.Parameters.AddWithValue("@ProdID", lstArtikelID.Items[teller2 - 1].ToString());

                cnn.Open();
                cmdVoorraad.ExecuteNonQuery();
                cnn.Close();

            }
            dgvProducten.DataBind();

            Server.Transfer("MijnBestellingen.aspx");
        }
    }
}