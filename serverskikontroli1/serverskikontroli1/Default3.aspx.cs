using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace serverskikontroli1
{
    public partial class Default3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnProveri_Click(object sender, EventArgs e)
        {
            if(txtLozinka.Text.ToString()== "мрежно програмирање")
            {
                txtPoraka.ReadOnly = false;
                txtPoraka.Focus();
            }
            else
            {
                string script = "alert(\"Грешна лозинка\");";
                ScriptManager.RegisterStartupScript(this, GetType(),"ServerControlScript", script, true);
            }
        }

        protected void btnPrvaStrana_Click(object sender, EventArgs e)
        {
            Server.Transfer("Default.aspx");
        }

        protected void txtPoraka_TextChanged(object sender, EventArgs e)
        {
            btnPrvaStrana.Enabled = true;
        }
    }
}