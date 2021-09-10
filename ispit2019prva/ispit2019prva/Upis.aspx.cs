using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ispit2019prva
{
    public partial class Upis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void lstPredmeti_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (lstPredmeti.SelectedIndex == 0)
            {
                lstProfesori.Items.Clear();
                lstProfesori.Items.Add("Aleksandra Popovska Mitrovikkj");
                lstProfesori.Items.Add("Verica Bakeva");
            }
            else if (lstPredmeti.SelectedIndex == 1)
            {
                lstProfesori.Items.Clear();
                lstProfesori.Items.Add("Goce Armenski");
                lstProfesori.Items.Add("Magdalena Kostovska");
            }
            else if (lstPredmeti.SelectedIndex == 2)
            {
                lstProfesori.Items.Clear();
                lstProfesori.Items.Add("Ivan Kitanovski");
                lstProfesori.Items.Add("Suzana Loshkovska");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (lstPredmeti.SelectedIndex != -1 && lstProfesori.SelectedIndex!=-1)
            {
                List<String> predmeti = new List<string>();
                if (Session["predmeti"] != null)
                    predmeti = (List<String>)Session["predmeti"];
                
                predmeti.Add(lstPredmeti.SelectedItem.Text);
                Session["predmeti"] = predmeti;

                List<String> profesori = new List<string>();
                if (Session["profesori"] != null)
                    profesori = (List<String>)Session["profesori"];

                profesori.Add(lstProfesori.SelectedItem.Text);
                Session["profesori"] = profesori;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("UspeshenUpis.aspx");
        }
    }
}