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
    public partial class UrunDetay : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {


            string id = Request.QueryString["Urunid"];
            SqlDataAdapter komut = new SqlDataAdapter("Select * From Tbl_urunler where Urunid=" + id, bgl.baglanti());
            DataTable dt = new DataTable();
            komut.Fill(dt);
            tekrar.DataSource = dt;
            tekrar.DataBind();

            //Yorumları gostermek için
            SqlDataAdapter komut2 = new SqlDataAdapter("Select * From tbl_yorumlar,Tbl_urunler where tbl_yorumlar.Urunid=Tbl_urunler.urunid and YorumOnay=1 and tbl_yorumlar.urunid=" + id, bgl.baglanti());
            DataTable dt2 = new DataTable();
            komut2.Fill(dt2);
            rptYorum.DataSource = dt2;
            rptYorum.DataBind();



        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                string id = Request.QueryString["Urunid"];
                SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar(Yorumadsoyad,YorumMail,Yorumİçerik,Urunid) values(@p1,@p2,@p3,@p4) ", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", txt_adEkle.Text);
                komut.Parameters.AddWithValue("@p2", txt_mailEKle.Text);
                komut.Parameters.AddWithValue("@p3", txt_icerik.Text);
                komut.Parameters.AddWithValue("@p4", id);
                komut.ExecuteNonQuery();
                Label1.Visible = true;
                Label1.Text="Yorumunuz başarı ile yapılmıştır. Teşekkür ederiz";
                bgl.baglanti().Close();
                txt_adEkle.Text = "";
                txt_mailEKle.Text = "";
                txt_icerik.Text = "";
                
            }
            





        }

    }
}