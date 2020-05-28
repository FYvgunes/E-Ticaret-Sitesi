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
    public partial class AdminSikayetDetay : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Sikayetid"];
            SqlCommand komut = new SqlCommand("Select SikayetAd,SikayetMail,SikayetKonu,Sikayeticerik From Tbl_Sikayetler Where Sikayetid=@p1 ", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader rd = komut.ExecuteReader();
            while(rd.Read())
            {
                TextBox1.Text = rd[0].ToString();
                TextBox2.Text = rd[1].ToString();
                TextBox3.Text = rd[2].ToString();
                TextBox4.Text = rd[3].ToString();
            }
            bgl.baglanti().Close();
               
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlCommand komut2 = new SqlCommand("Update Tbl_Sikaytler set SikayetAd=@p1,SikayetMail=@p2,SikayetKonu=@p3,Sikayeticerik=@4 where Sikayetid=@p5", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut2.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut2.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut2.Parameters.AddWithValue("@p4", TextBox4.Text);
            komut2.Parameters.AddWithValue("@p5", id);
            Label1.Visible = true;
            Label1.Text = "Sikayet Güncellendi";
            komut2.ExecuteNonQuery();


        }
    }
}