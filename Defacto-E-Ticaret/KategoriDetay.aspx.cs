using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Defacto_E_Ticaret.ADMİN
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Kategoriid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from Tbl_kategoriler where kategoriid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader rd = komut.ExecuteReader();
                while(rd.Read())
                {
                    TextBox1.Text = rd[1].ToString();
                    TextBox2.Text = rd[2].ToString();
                    
                }
                bgl.baglanti().Close();

            }
          
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //butona tıklandınde kayıt veya güncellme yapıcak
            SqlCommand komut = new SqlCommand("Update tbl_kategoriler set Kategoriad=@p1, KategoriAdet=@p2 where Kategoriid=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            Label1.Visible = true;
            Label1.Text = "Kategori Başarıyla Güncellendi";
            bgl.baglanti().Close();
        }
    }
}