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
    public partial class UyelerDetay : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Uyeid"];
            if(Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("select * From tbl_uyeler where Uyeid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader rd = komut.ExecuteReader();
                while (rd.Read())
                {
                    txt_Ad.Text = rd[1].ToString();
                    txt_mail.Text = rd[4].ToString();
                    txt_sifre.Text = rd[2].ToString();
                    txt_telno.Text = rd[5].ToString();
                    txt_adres.Text = rd[3].ToString();
                }
                bgl.baglanti().ToString();

            }
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Kayıtları guncellemek için kullanıyoruz
            SqlCommand komut1 = new SqlCommand("Update Tbl_uyeler Set Uyead=@p1, Uyesifre=@p2, UyeAdres=@p3,UyeMail=@p4,UyeTel=@p5 where Uyeid=@p6", bgl.baglanti());
            komut1.Parameters.AddWithValue("@p1", txt_Ad.Text);
            komut1.Parameters.AddWithValue("@p2", txt_sifre.Text);
            komut1.Parameters.AddWithValue("@p3", txt_adres.Text);
            komut1.Parameters.AddWithValue("@p4", txt_mail.Text);
            komut1.Parameters.AddWithValue("@p5", txt_telno.Text);
            komut1.Parameters.AddWithValue("@p6", id);
            komut1.ExecuteNonQuery();
            Label1.Visible = true;
            Label1.Text = "Uye Bilgileri Güncellendi";
            bgl.baglanti().Close();
           

        }
    }
}