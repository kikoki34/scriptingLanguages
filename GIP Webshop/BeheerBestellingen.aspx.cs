using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GIP_Webshop
{
    public partial class BeheerBestellingen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dgvExtra.Visible = false;
        }

        protected void btnTerug_Click(object sender, EventArgs e)
        {
            Server.Transfer("Beheerder.aspx");
        }

        protected void dgvbestellingen_SelectedIndexChanged(object sender, EventArgs e)
        {
            dtsExtra.FilterExpression = "BestellingsID =" + dgvbestellingen.SelectedRow.Cells[1].Text;
            dgvExtra.DataBind();
            dgvExtra.Visible = true;
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}