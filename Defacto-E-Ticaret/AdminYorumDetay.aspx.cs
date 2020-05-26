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
    public partial class AdminYorumDetay : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id ="";
        protected void Page_Load(object sender, EventArgs e)
        {
            //id ise bizim adminyorumlar.aspx kısmında update kısmında aldığımız bir çagırma mekanızmakası
            id = Request.QueryString["Yorumid"];
            //Yorumları texboxların içerisine yazdrımak için

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumİçerik,Urunad " +
                    "From Tbl_yorumlar inner join Tbl_urunler on Tbl_yorumlar.Urunid=Tbl_urunler.Urunid  where Yorumid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader rd = komut.ExecuteReader();
                while (rd.Read())
                {
                    TextBox1.Text = rd[0].ToString();
                    TextBox2.Text = rd[1].ToString();
                    TextBox3.Text = rd[2].ToString();
                  

                }
                bgl.baglanti().Close();
            }

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
                //Yorumları Güncellemek için 
                SqlCommand komut = new SqlCommand("update tbl_yorumlar set Yorumadsoyad=@p1, YorumMail=@p2,Yorumİçerik=@p3 where Yorumid=@p4", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", TextBox1.Text);
                komut.Parameters.AddWithValue("@p2", TextBox2.Text);
                komut.Parameters.AddWithValue("@p3", TextBox3.Text);
                
                komut.Parameters.AddWithValue("@p4", id);
                komut.ExecuteNonQuery();
                Label1.Visible = true;
                Label1.Text = "Yorum Başarıyla güncellendi";
                bgl.baglanti().Close();
            
               
            
            
        }
    }
}