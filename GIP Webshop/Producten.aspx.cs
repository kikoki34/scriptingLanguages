using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GIP_Webshop
{
    public partial class Producten : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                dgvProducten.Visible = false;
                ddvFoto.Visible = false;
            }

            if (Session["Email"] == null)
            {
               btnBestellen.Visible = false;
               btnTerug.Visible = false;
            }
            else
            {
               btnBestellen.Visible = true;
               btnTerug.Visible = true;
            }

        }

       

        protected void cboCategorieen_SelectedIndexChanged(object sender, EventArgs e)
        {
            dtsProducten.FilterExpression = "CategorieID = " + cboCategorieen.SelectedValue;
            dgvProducten.DataBind();
            dgvProducten.Visible = true;

            ddvFoto.Visible = false;
        }

        protected void dgvProducten_SelectedIndexChanged(object sender, EventArgs e)
        {
            dtsFoto.FilterExpression = "ProductID=" + dgvProducten.SelectedRow.Cells[6].Text;
            ddvFoto.Visible = true;

        }

        protected void btnBestellen_Click(object sender, EventArgs e)
        {
            Server.Transfer("Bestellingen.aspx");
        }

        protected void btnTerug_Click(object sender, EventArgs e)
        {
            Server.Transfer("EigenProfiel.aspx");
        }
    }
}