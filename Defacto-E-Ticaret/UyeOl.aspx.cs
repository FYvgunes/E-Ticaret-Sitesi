using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Defacto_E_Ticaret
{
    public partial class UyeOl : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

   
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_uyeler(UyeAd,UyeSifre,UyeAdres,UyeMail,UyeTel) values(@p1,@p2,@p3,@p4,@p5", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",txt_kullanici.)
        }
    }
}