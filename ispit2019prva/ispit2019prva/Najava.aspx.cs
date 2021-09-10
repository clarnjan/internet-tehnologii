using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ispit2019prva
{
    public partial class Najava : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNajava_Click(object sender, EventArgs e)
        {
            Session["korisnik"] = txtIme.Text;
            Server.Transfer("Upis.aspx");
        }
    }
}