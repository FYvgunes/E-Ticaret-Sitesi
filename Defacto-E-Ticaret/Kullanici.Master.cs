using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Defacto_E_Ticaret
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["kullanici"]==null)
            {
                kull.InnerHtml = "Merhaba Ziyaretçi";
                cikisid.Visible = false;

            }
            else
            {
                kull.InnerHtml = "Merhaba"+" " + Session["Kullanici"].ToString();
                girisid.Visible = false;
                cikisid.Visible = true;
                Uyeol.Visible = false;

            }
        }

       
    }
}