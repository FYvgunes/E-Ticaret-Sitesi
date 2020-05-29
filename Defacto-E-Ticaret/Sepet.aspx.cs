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
    public partial class Sepet : System.Web.UI.Page
    {
        
        Sqlbaglanti bgl = new Sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        { //Grişi işlemi yapılmış mı 
            if (Session["Kullanici"] == null)
            {

                sonuc.InnerHtml = "Kullanıci Girişi yapılmamış";
                sonuc2.InnerHtml = "Kullanıcı Girişine Yönlendiriliyorsunuz";
                sonuc2.InnerHtml += "<meta http-equiv='refresh' content='3;url=UserLogin.aspx'>";
            }
            else
            {

                //urun daha önceden eklenmiş mi
               
                string id = Session["id"].ToString();
                //SqlCommand komut = new SqlCommand("Select Fotolar,UrunAd,Urunfiyat From  Tbl_Sepetler,Tbl_urunler  where Tbl_urunler.Uyeid=Tbl_sepetler.Uyeid and  Tbl_urunler.Uyeid=" + , bgl.baglanti());
                SqlCommand komut = new SqlCommand("SELECT uyeid, Tbl_Sepetler.urunid,Fotolar, urunAD, UrunFiyat FROM Tbl_Sepetler,Tbl_urunler WHERE uyeid=@id and Tbl_Sepetler.urunid=Tbl_urunler.urunid", bgl.baglanti());
                komut.Parameters.AddWithValue("@id",id);
                SqlDataReader rd = komut.ExecuteReader();
                DataList1.DataSource = rd;
                DataList1.DataBind();
                

              

            }
        }
    }
}
