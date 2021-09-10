using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrvaZadaca
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["predmeti"] == null)
                Server.Transfer("Subjects.aspx");
            else
            {
                lblName.Text = Session["name"].ToString();
                lblEmail.Text = Session["email"].ToString();
            }
        }
    }
}