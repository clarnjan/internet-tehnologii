using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab2._3
{
    public partial class GlavnaStranica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblWelcome.Text = "Dobredojde " + PreviousPageViewState["korisnik"].ToString();
            }
        }

        private StateBag PreviousPageViewState
        {
            get
            {
                if (PreviousPage != null)
                {
                    System.Reflection.MethodInfo objMethod = PreviousPage.GetType().GetMethod("ReturnViewState");
                    return (StateBag)objMethod.Invoke(PreviousPage, null);
                }
                return null;
            }
        }
    }
}