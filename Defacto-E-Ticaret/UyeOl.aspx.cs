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

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (!IsValid)
            {
                Label1.Visible = true;
                Label1.Text = "Kayıt Yapılmadı";
            }
            else
            {
                SqlCommand komut = new SqlCommand("insert into Tbl_uyeler(uyeAd,UyeSifre,UyeAdres,UyeMail,Uyetel) values(@p1,@p2,@p3,@p4,@p5)", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", TextBox1.Text);
                komut.Parameters.AddWithValue("@p2", Txt_sifre.Text);
                komut.Parameters.AddWithValue("@p3", Txt_adres.Text);
                komut.Parameters.AddWithValue("@p4", Txt_email.Text);
                komut.Parameters.AddWithValue("@p5", txt_tel.Text);
                komut.ExecuteNonQuery();
                bgl.baglanti().Close();

                Label1.Visible = true;
                Label1.Text = "Kayıt Yapıldı";
            }


        }
    }
}