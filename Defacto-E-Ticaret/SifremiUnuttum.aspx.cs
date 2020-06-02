using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;


namespace Defacto_E_Ticaret
{
    public partial class SifremiUnuttum : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        Metodlar Klas = new Metodlar();


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From Tbl_uyeler where UyeMail=@uyemail", bgl.baglanti());
            if (ConnectionState.Closed == bgl.baglanti().State)
                bgl.baglanti().Open();
            komut.Parameters.AddWithValue("@uyemail", txt_kullaniciAd.Text);
            SqlDataReader rd = komut.ExecuteReader();
            if (rd.Read())
            {
                MailMessage mesaj = new MailMessage();
                mesaj.To.Add(new MailAddress(txt_kullaniciAd.Text));
                mesaj.From = new MailAddress(txt_kullaniciAd.Text, "Yönetim Mail Adresiniz ");
                mesaj.Body = "E-mail=" + rd["uyeMail"].ToString() + "\n" + "KullaniciAd:" + rd["UyeAd"].ToString() + "\n" + "Şifre:" + rd["UyeSifre"].ToString() + "\b";
                SmtpClient client = new SmtpClient();
                client.Host = "smtp.gmail.com";
                client.Port = 587;
                client.Credentials = new NetworkCredential("Yönetim Mail Adresiniz ", "Mail Adresiniz Şifresi");
                client.EnableSsl = true;

                try
                {
                    client.Send(mesaj);
                    Label1.Text = "Şifreniz E-Mail Adresinize gönderildi";
                    Response.Redirect("Default.aspx");
                }
                catch
                {
                    Response.Write("Mesaj Göndeririken bir hata oluştu");
                    Response.Redirect("SifremiUnuttum.aspx");


                }

            }
            else
            {
                Label1.Text = "E-Mail Adresini Kayıtlı Değil";

            }
            rd.Close();
            txt_kullaniciAd.Text = "";
            System.Threading.Thread.Sleep(2000);

        }

        private class alarmVer
        {
        }
    }
}