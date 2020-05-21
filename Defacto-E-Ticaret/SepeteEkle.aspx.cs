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
                if(Session["Kullanici"]==null)
                {
                    resim1.Visible = true;
                    sonuc.InnerHtml = "Kullanıci Girişi yapılmamış";
                    sonuc2.InnerHtml = "Kullanıcı Girişine Yönlendiriliyorsunuz";
                    sonuc2.InnerHtml += "<meta http-equiv='refresh' content='3;url=UserLogin.aspx'>";
                }
                else
                {
                    //urun daha önceden eklenmiş mi 
                    string urunid = Request.QueryString["urunid"];
                    SqlCommand komut = new SqlCommand("Select *From Tbl_Sepetler where uyeid=@p1 and Urunid=@p2", bgl.baglanti());
                    komut.Parameters.AddWithValue("@p1", Session["id"].ToString());
                    komut.Parameters.AddWithValue("@p2", urunid);
                    SqlDataReader rd = komut.ExecuteReader();
                    if(rd.Read())
                    {
                        SqlDataAdapter komut3 = new SqlDataAdapter("select * From Tbl_urunler where urunid=" + urunid, bgl.baglanti());
                        DataTable dt = new DataTable();
                        komut3.Fill(dt);
                        tekrar.DataSource = dt;
                        tekrar.DataBind();

                        sonuc.InnerHtml = "Ürün Zaten Eklenmiş";
                        sonuc2.InnerHtml = "Alişverişe Devam";
                        resim1.Visible = false;
                        bgl.baglanti().Close();
                    }
                    else
                    {
                        //eklenmemiş ise sepete ekle
                        SqlCommand komut2 = new SqlCommand("insert into Tbl_Sepetler(uyeid,urunid) values(@p1,@p2)", bgl.baglanti());
                        komut2.Parameters.AddWithValue("@p1", Session["id"].ToString());
                        komut2.Parameters.AddWithValue("@p2", urunid);
                        komut2.ExecuteNonQuery();
                        bgl.baglanti().Close();
                        sonuc3.InnerHtml = "Ürün Sepete Eklenmiştir";
                        resim.Visible = true;
                         
                    }

                }

            }

            
            

        }
    }
}