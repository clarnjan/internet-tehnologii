using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab2._3
{
    public partial class Najava : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public StateBag ReturnViewState()
        {
            return ViewState;
        }

        protected void btnPodnesi_Click(object sender, EventArgs e)
        {
            if (txtLozinka.Text != "mp")
            {
                int obidi = Int32.Parse(lblObidi.Text);
                obidi++;
                lblObidi.Visible = true;
                if (obidi > 3)
                {
                    lblObidi.Text = "Ja nadminavte kvotata na dozvoleni obidi";
                    return;
                }
                lblObidi.Text = obidi.ToString();
                return;
            }
            else
            {
                string korisnik = txtKorisnik.Text;
                ViewState["korisnik"] = korisnik;
                Server.Transfer("GlavnaStranica.aspx");
                return;
            }
        }
    }
}