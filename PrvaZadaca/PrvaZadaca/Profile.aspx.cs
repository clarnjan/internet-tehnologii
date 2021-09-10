using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrvaZadaca
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            Session["name"] = txtIme.Text;
            Session["email"] = txtEmail.Text;
            Server.Transfer("Subjects.aspx");
        }
    }
}