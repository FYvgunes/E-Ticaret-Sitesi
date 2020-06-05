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
    public partial class Default : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string kelime = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlDataAdapter komut = new SqlDataAdapter("Select * From Tbl_urunler", bgl.baglanti());
            DataTable dt = new DataTable();
            komut.Fill(dt);
            tekrarlayici.DataSource = dt;
            tekrarlayici.DataBind();
            bgl.baglanti().Close();

            //kelime = Request.QueryString["q"].ToString();
            //SqlDataAdapter komut1 = new SqlDataAdapter("Select * From Tbl_Urunler Where UrunAd like '%" + kelime + "%'", bgl.baglanti());
            //DataTable dt2 = new DataTable();
            //komut1.Fill(dt2);
            //tekrarlayici.DataSource = dt2;
            //tekrarlayici.DataBind();
            //bgl.baglanti().Close();




            // Eger aranan bir kelime var VeriCek() metodumuza bu kelimeyi gönderelim 
            if (Request.QueryString["aranacak"] != null)
            {
                tekrarlayici.DataSource = VeriCek(Request.QueryString["aranacak"]);
                tekrarlayici.DataBind();
            }
            // Eger aranan bir kelime yok ise VeriCek() metodumuzu parametre kullanmadan çalistiralim. 
            //else
            //{
            //    tekrarlayici.DataSource = VeriCek();
            //    tekrarlayici.DataBind();
            //}


        }

        

        protected void btn_Ara_Click(object sender, EventArgs e)
        {
            if (txt_Ara.Text.Trim() != "")
            {
                string aranacakKelime = txt_Ara.Text.Trim();
                Response.Redirect("Default.aspx?aranacak=" + aranacakKelime);
            }
        }
        public DataTable VeriCek(string aranan)
        {
            DataTable dt1 = new DataTable();
            // Içerikte arayacagimiz kelimeyi sorgumuzda like komutu ile birlikte kullanalim. 
            string sorgu = string.Format("Select * from Tbl_Urunler where Urunad like '%{0}%'", aranan);
            SqlCommand cmd = new SqlCommand(sorgu, bgl.baglanti());
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt1);
            bgl.baglanti().Close();
            return dt1;
        }
    }
}