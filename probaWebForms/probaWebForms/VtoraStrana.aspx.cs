using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace probaWebForms
{
    public partial class VtoraStrana : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String x = TextBox1.Text;
            if (x == "hi")
            {
                string script = "alert(\"tocna lozinka\")";
                ScriptManager.RegisterStartupScript(this, GetType(), "SeverControlScript", script, true);
                Button2.Enabled = true;
            }
            else
            {
                string script = "alert(\" grsna lozinka \")";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
        }
    }
}