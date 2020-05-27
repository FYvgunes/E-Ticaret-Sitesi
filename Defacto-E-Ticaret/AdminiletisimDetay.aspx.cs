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
    public partial class AdminiletisimDetay : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Mesajid"];
            if (Page.IsPostBack==false)
            {
                
                SqlCommand komut = new SqlCommand("Select * From Tbl_mesajlar where Mesajid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader rd = komut.ExecuteReader();
                while (rd.Read())
                {
                    TextBox1.Text = rd[1].ToString();
                    TextBox2.Text = rd[2].ToString();
                    TextBox3.Text = rd[3].ToString();
                    TextBox4.Text = rd[4].ToString();
                }
                bgl.baglanti().Close();

            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update tbl_mesajlar set MesajAD=@p1,MesajMail=@p2,MesajKonu=@p3,Mesajicerik=@p4 where Mesajid =@p5", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", TextBox4.Text);
            komut.Parameters.AddWithValue("@p5",id);
            komut.ExecuteNonQuery();
            Label1.Visible = true;
            Label1.Text = "Mesaj güncellendi";
            bgl.baglanti().Close();


        }
    }
}