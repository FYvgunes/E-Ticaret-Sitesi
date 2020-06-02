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
    public partial class UserLogin : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Kullanici"] != null)
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(txt_mail.Text=="" || Txt_Sifre.Text=="")
            {
                Label1.Visible = true;
                Label1.Text = "Alanlar Boş geçilemez";
            }
            else
            {
                SqlCommand komut = new SqlCommand("select * From Tbl_uyeler where UyeMail=@p1 and UyeSifre=@p2", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", txt_mail.Text);
                komut.Parameters.AddWithValue("@p2", Txt_Sifre.Text);
                SqlDataReader rd = komut.ExecuteReader();
                if (rd.Read())
                {
                    Session.Add("Kullanici", rd[1].ToString());
                    Session.Add("id", rd["Uyeid"].ToString());
                    Session.Timeout = 5  ;
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Label1.Visible = true;

                    Label1.Text = "Şifre Veya Mail Adı Eşleşmiyor ";
                }
            }
           


        }
    }
}