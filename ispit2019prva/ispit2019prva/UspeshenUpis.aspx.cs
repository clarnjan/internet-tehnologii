using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ispit2019prva
{
    public partial class UspeshenUpis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<String> predmeti = new List<string>();
            if (Session["predmeti"] != null)
                predmeti = (List<String>)Session["predmeti"];

            List<String> profesori = new List<string>();
            if (Session["profesori"] != null)
                profesori = (List<String>)Session["profesori"];

            for (int i=0;i<predmeti.Count;i++)
            {
                lblPredmet.Text = lblPredmet.Text +predmeti[i]+"("+profesori[i]+"), ";
            }
        }
    }
}