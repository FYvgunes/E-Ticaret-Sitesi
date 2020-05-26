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
    public partial class AdminLogin : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(txt_kullaniciAd.Text==" " ||Txt_Sifre.Text==" " )
            {
                Label1.Visible = true;
                Label1.Text = "Bu alanlar boş geçilmez";
            }
            else
            {
                SqlCommand komut = new SqlCommand("Select*From Tbl_Admin where  AdminAd=@p1 and AdminSifre=@p2", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", txt_kullaniciAd.Text);
                komut.Parameters.AddWithValue("@p2", Txt_Sifre.Text);
                SqlDataReader rd = komut.ExecuteReader();
                if(rd.Read())
                {
                    Session.Add("AdminAd", rd[1]);
                    Session.Add("AdminSifre", rd[2]);
                    Session.Timeout = 5;
                    Response.Redirect("AdminDefault.aspx");
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Böyle bir kayıt yok Tekrar Deneyiniz";
                }
            }
           
        }
    }
}