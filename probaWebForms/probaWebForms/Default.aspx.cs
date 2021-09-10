using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace probaWebForms
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVtoraStrana_Click(object sender, EventArgs e)
        {
            Server.Transfer("VtoraStrana.aspx");
        }

        protected void btnSoberi_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(txtBroj1.Text);
            int b = Convert.ToInt32(txtBroj2.Text);
            int c = a + b;
            lblRezultat.Text = c.ToString();
        }
    }
}