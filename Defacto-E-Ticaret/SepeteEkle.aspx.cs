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
    public partial class SepeteEkle : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();

        bool Durum;
        protected void Page_Load(object sender, EventArgs e)
        {


            resim.Visible = false; //tik resmini gizler
            resim1.Visible = false;
            //Ürünid Geldimi
            if (string.IsNullOrEmpty(Request.QueryString["urunid"]))
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                //Grişi işlemi yapılmış mı 
                if (Session["Kullanici"] == null)
                {
                    resim1.Visible = true;
                    sonuc.InnerHtml = "Kullanıci Girişi yapılmamış";
                    sonuc2.InnerHtml = "Kullanıcı Girişine Yönlendiriliyorsunuz";
                    
                    sonuc2.InnerHtml += "<meta http-equiv='refresh' content='3;url=UserLogin.aspx'>";
                }
                else
                {
                    Mukerrer();
                    string urunid = Request.QueryString["urunid"];
                    SqlCommand komut3 = new SqlCommand("Select * From Tbl_urunler where urunid =" + urunid, bgl.baglanti());
                    SqlDataReader rd = komut3.ExecuteReader();
                    while (rd.Read())
                    {
                        Image1.ImageUrl = rd["Fotolar"].ToString();
                        Label2.Text = rd["UrunAD"].ToString();
                        Label3.Text = rd["UrunFiyat"].ToString();
                    }
                    bgl.baglanti().Close();


                    if (Durum == true)
                    {
                        SqlCommand komut2 = new SqlCommand("insert into Tbl_Sepetler(uyeid,urunid,UrunFiyat) values(@p1,@p2,@p3)", bgl.baglanti());
                        komut2.Parameters.AddWithValue("@p1", Session["id"].ToString());
                        komut2.Parameters.AddWithValue("@p2", urunid);
                        if (Label3 != null)
                        {
                            komut2.Parameters.AddWithValue("@p3", Label3.Text);
                        }
                        komut2.ExecuteNonQuery();
                        bgl.baglanti().Close();
                        sonuc3.InnerHtml = "Ürün Sepete Eklenmiştir";
                        resim.Visible = true;
                    }
                    else
                    {
                        sonuc.InnerHtml = "Ürün Zaten Eklenmiş";
                        sonuc2.InnerHtml = "Alişverişe Devam";
                        resim1.Visible = false;
                    }







                }


            }
             void Mukerrer()
            {
                string Urunidd = Request.QueryString["Urunid"];
                string id = Session["id"].ToString();
                SqlCommand komut2 = new SqlCommand("Select*From Tbl_Sepetler Where Urunid=@p1 And Uyeid=@p2 ", bgl.baglanti());
                komut2.Parameters.AddWithValue("@p1", Urunidd);
                komut2.Parameters.AddWithValue("@p2", id);
                SqlDataReader rd = komut2.ExecuteReader();
                if (rd.Read())
                {
                    Durum = false;

                }
                else
                {
                    Durum = true;
                }
                bgl.baglanti().Close();


            }

        }

    }
}

