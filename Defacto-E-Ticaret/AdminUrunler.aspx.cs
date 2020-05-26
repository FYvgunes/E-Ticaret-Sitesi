using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Defacto_E_Ticaret
{
    public partial class AdminUrunler : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                //Kategori Listeleme
                SqlCommand komut1 = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader rd2 = komut1.ExecuteReader();
                Drop_Kategori.DataTextField = "KategoriAd";
                Drop_Kategori.DataValueField = "Kategoriid";
                Drop_Kategori.DataSource = rd2;
                Drop_Kategori.DataBind();

                
            }

        }

        protected void Btn_ekle_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/img/" + FileUpload1.FileName));
            FileUpload1.SaveAs(Server.MapPath("/img/" + FileUpload2.FileName));
            FileUpload1.SaveAs(Server.MapPath("/img/" + FileUpload3.FileName));

            if (!IsValid)
            {
                Label2.Visible = false;
                Label2.Text = "Kayıt Yapılmadı";

            }
            SqlCommand komut = new SqlCommand("insert into tbl_urunler(Kategoriid,UrunAd,Urunfiyat,UrunBeden,UrunCins,UrunRenk,UrunOzellik,UrunOzellik2,Fotolar, Fotolar2,Fotolar3)" +
            "values(@k1,@p1,@p2,@p3,@p4,@p5,@p6,@p7,@f1,@f2,@f3)", bgl.baglanti());
            komut.Parameters.AddWithValue("@k1", Drop_Kategori.SelectedValue);
            komut.Parameters.AddWithValue("@p1", txt_ad.Text);
            komut.Parameters.AddWithValue("@p2", txt_fiyat.Text);
            komut.Parameters.AddWithValue("@p3", Drop_Beden.SelectedValue);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", txt_renk.Text);
            komut.Parameters.AddWithValue("@p6", txt_özellik1.Text);
            komut.Parameters.AddWithValue("@p7", txt_ozellik2.Text);
            komut.Parameters.AddWithValue("@f1", "~/img/" + FileUpload1.FileName);
            komut.Parameters.AddWithValue("@f2", "~/img/" + FileUpload2.FileName);
            komut.Parameters.AddWithValue("@f3", "~/img/" + FileUpload3.FileName);
            komut.ExecuteNonQuery();
            Label1.Visible = true;
            Label1.Text= "Başarı bir şekilde Yüklendi";
            bgl.baglanti().Close();

        }
    }
}