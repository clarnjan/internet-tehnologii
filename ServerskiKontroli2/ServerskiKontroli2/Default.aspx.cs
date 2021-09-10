using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ServerskiKontroli2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String[] meseci = { "Јануари", "Февруари", "Март", "Април", "Мај", "Јуни", "Јули", "Август", "Септември"
                , "Октомври", "Ноември", "Декември"};
                ddlMesec.DataSource = meseci;
                ddlMesec.DataBind();
                for (int i = 1; i < 32; i++)
                {
                    ddlDen.Items.Add(new ListItem(i.ToString()));
                }
                for (int i = 2020; i < 2025; i++)
                {
                    ddlGodina.Items.Add(new ListItem(i.ToString()));
                }
                for (int i = 0; i < 24; i++)
                {
                    String cas = "";
                    if (i < 10)
                    {
                        cas = "0" + i.ToString() + ":00";
                    }
                    else
                    {
                        cas = i.ToString() + ":00";
                    }
                    ddlVreme.Items.Add(new ListItem(cas));
                }
            }
        }

        protected void btnPodnesi_Click(object sender, EventArgs e)
        {
            String ime = txtIme.Text.ToString();
            String prezime = txtPrezime.Text.ToString();
            String patnik = ime + " " + prezime;
            lblPatnik.Text = patnik;
            ListItem selektiranoSredstvo = lstSredstvo.SelectedItem;
            String sredstvo = "";
            String slika = "";
            if (selektiranoSredstvo != null)
            {
                sredstvo = selektiranoSredstvo.Text;
                slika = selektiranoSredstvo.Value;
            }
            lblSredstvo.Text = sredstvo;
            imgSlika.ImageUrl = slika;
            String pocetok = ddlOd.SelectedItem.Text;
            lblOd.Text = pocetok;
            String kraj = ddlDo.SelectedItem.Text;
            lblDo.Text = kraj;
            String den = ddlDen.SelectedItem.Text;
            int mesec = ddlMesec.SelectedIndex+1;
            String godina = ddlGodina.SelectedItem.Text;
            String vreme = ddlVreme.SelectedItem.Text;
            String data = den + "." + mesec.ToString() + "." + godina+" во "+vreme+" часот";
            lblVreme.Text = data;
            ListItem selektiranaZona = rblZona.SelectedItem;
            String zona = "";
            if (selektiranaZona!=null)
            {
                zona = selektiranaZona.Text;
            }
            lblZona.Text = zona;
            ListItem selektiranaKlasa = rblKlasa.SelectedItem;
            String klasa = "";
            if (selektiranaKlasa != null)
            {
                klasa = selektiranaKlasa.Text;
            }
            lblKlasa.Text = klasa;
            String usluga = "";
            foreach(ListItem li in cblPosluga.Items)
            {
                if (li.Selected)
                {
                    usluga += li.Text + ",";
                }
            }
            lblPosluga.Text = usluga;

            Panel1.Visible = true;


        }
    }
}