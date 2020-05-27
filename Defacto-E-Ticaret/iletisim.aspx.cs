using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Defacto_E_Ticaret
{
    public partial class iletisim : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (!IsValid)
            {
                Label1.Visible = true;
                Label1.Text = "Mesaj kaydınız oluştulmadı";
            }
            else
            {
                SqlCommand komut = new SqlCommand("insert into Tbl_Mesajlar(MesajAd,MesajMail,MEsajKonu,Mesajicerik) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", TextBox1.Text);
                komut.Parameters.AddWithValue("@p2", txt_mail.Text);
                komut.Parameters.AddWithValue("@p3", Txt_konu.Text);
                komut.Parameters.AddWithValue("@p4", Txt_icerik.Text);
                komut.ExecuteNonQuery();
                bgl.baglanti().Close();
                Label1.Visible = true;
                Label1.Text = "Mesajının alınmıştır teşekkür ederiz";
                TextBox1.Text = "";
                txt_mail.Text = "";
                Txt_konu.Text = "";
                Txt_icerik.Text = "";
            }
        }
    }
}