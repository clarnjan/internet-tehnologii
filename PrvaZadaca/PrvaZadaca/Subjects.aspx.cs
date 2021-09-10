using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.WebSockets;

namespace PrvaZadaca
{
    public partial class Subjects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] == null)
                Server.Transfer("Profile.aspx");
        }

        protected void addSubject_Click(object sender, EventArgs e)
        {
            if (subjectList.SelectedIndex != -1)
            {
                int krediti = 30;
                if (Session["krediti"] != null)
                    krediti = Convert.ToInt32(Session["krediti"]);
                int pom = Convert.ToInt32(subjectList.SelectedItem.Value);
                if (krediti - pom>= 0)
                {
                    var subject = subjectList.SelectedItem;
                    selectedSubjects.Items.Add(subject);
                    Session["krediti"] = krediti - pom;
                }
            }
        }

        protected void resetSemester_Click(object sender, EventArgs e)
        {
            for(int i= 0;i < selectedSubjects.Items.Count;i++)
            {
                selectedSubjects.Items.RemoveAt(i);
                Session["krediti"] = 30;
            }
        }


        protected void register_Click1(object sender, EventArgs e)
        {
            if (Convert.ToInt32(subjectList.SelectedItem.Value) < 30)
            {
                List<string> predmeti = new List<string>();
                for (int i = 0; i < selectedSubjects.Items.Count; i++)
                {
                }
                Session["predmeti"] = "A";
                Server.Transfer("Confirmation.aspx");
            }
        }
    }
}