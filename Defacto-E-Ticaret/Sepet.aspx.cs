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
        string urunid = "";
        string islem = "";
        //string s;
        //string t;
        //string[] a = new string[4];
        //int toplam = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            urunid = Request.QueryString["Urunid"];
            islem = Request.QueryString["islem"];
            //Grişi işlemi yapılmış mı 

            if (Session["Kullanici"] == null)
            {
              
                sonuc5.Visible = false;
                div.Visible = false;
                div2.Visible = false;
                table.Visible = false;
           
                sonuc.InnerHtml = "Kullanıci Girişi yapılmamış";
                sonuc2.InnerHtml = "Kullanıcı Girişine Yönlendiriliyorsunuz";
                sonuc2.InnerHtml += "<meta http-equiv='refresh' content='3;url=UserLogin.aspx'>";
            }
            else
            {

                //urun daha önceden eklenmiş mi
                //Button1.Visible = true;
                sonuc5.Visible = true;
                div.Visible = true;
                div2.Visible = true;
                table.Visible = true;


                string id = Session["id"].ToString();
                //SqlCommand komut = new SqlCommand("Select Fotolar,UrunAd,Urunfiyat From  Tbl_Sepetler,Tbl_urunler  where Tbl_urunler.Uyeid=Tbl_sepetler.Uyeid and  Tbl_urunler.Uyeid=" + , bgl.baglanti());
                SqlCommand komut = new SqlCommand("SELECT uyeid, Tbl_Sepetler.urunid,Fotolar, urunAD, Tbl_Urunler.UrunFiyat FROM Tbl_Sepetler,Tbl_urunler WHERE uyeid=@id and Tbl_Sepetler.urunid=Tbl_urunler.urunid", bgl.baglanti());
                komut.Parameters.AddWithValue("@id", id);
                SqlDataReader rd = komut.ExecuteReader();
                DataList1.DataSource = rd;
                DataList1.DataBind();

                //Sepet Toplam
                SqlCommand komut2 = new SqlCommand("Select sum(UrunFiyat) as  Toplam From Tbl_Sepetler where Uyeid=" + id, bgl.baglanti());
                SqlDataReader oku = komut2.ExecuteReader();
                if(oku.Read())
                {
                    Label1.Text = oku["ToPlam"].ToString();

                }
                komut2.Dispose();
                bgl.baglanti().Close();





            }
            //Sepet Toplam Bul
            //SqlCommand komut2 = new SqlCommand("select * From ")
            //Sil butonu basıldıgında silme işlemi yapılıyor.
            if(islem=="sil")
            {
                SqlCommand komut3 = new SqlCommand("Delete Tbl_sepetler Where Urunid=@p1", bgl.baglanti());
                komut3.Parameters.AddWithValue("@p1", urunid);
                komut3.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
            //DataTable dt = new DataTable();
            //dt.Columns.AddRange(new DataColumn[3]
            //    {
            //            new DataColumn("Fotolar"),
            //            new DataColumn("UrunAD"),
            //            new DataColumn("UrunFiyat") });

            //if (Request.Cookies["Kullanici"] != null)
            //{
            //    //s = Convert.ToSingle(Request.Cookies("Kullanici").Value);
            //    string[] strArr = s.Split('|');
            //    for (int i = 0; i < strArr.Length; i++)
            //    {
            //        t = Convert.ToString(strArr[i].ToString());
            //        string[] strarr1 = t.Split(',');
            //        for (int j = 0; j < strarr1.Length; j++)
            //        {
            //            a[j] = strarr1[j].ToString();


            //        }
            //        dt.Rows.Add(a[0].ToString().ToString(), a[1].ToString(), a[2].ToString(), a[3].ToString());
            //        toplam = toplam + (Convert.ToInt32(a[3]));


            //    }
            //}
            //DataList1.DataSource = dt;
            //DataList1.DataBind();
            //Label1.Text = toplam.ToString();

        }

        
    }
}
