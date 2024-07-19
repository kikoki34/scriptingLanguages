using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GIP_Webshop
{
    public partial class MijnBestellingen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            dgvHeeft.Visible = false;
            FormView1.Visible = false;
            Label1.Visible = false;
            Label2.Visible = false;
        }

        protected void btnTerug_Click(object sender, EventArgs e)
        {
            Server.Transfer("EigenProfiel.aspx");
        }

        protected void dgvBestellingen_SelectedIndexChanged(object sender, EventArgs e)
        {
            dtsHeeft.FilterExpression = "BestellingsID =" + dgvBestellingen.SelectedRow.Cells[1].Text;
            dgvHeeft.DataBind();
            dgvHeeft.Visible = true;

            SqlDataSource1.FilterExpression = "BestellingsID =" + dgvBestellingen.SelectedRow.Cells[1].Text;
            FormView1.DataBind();
            FormView1.Visible = true;

            Label1.Visible = true;
            Label2.Visible = true;
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }
    }
}