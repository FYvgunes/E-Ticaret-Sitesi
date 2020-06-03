using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Net.Mail;
using System.Net;
using System.IO;

namespace Defacto_E_Ticaret
{
    public partial class SifremiUnuttum : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btngiris_Click(object sender, EventArgs e)
        {
            //    if(bgl.baglanti().State==ConnectionState.Closed)
            //    {
            //        bgl.baglanti().Open();
            //    }
            //    SqlCommand sorgu = new SqlCommand("Select * From Tbl_uyeler Where Uyemail=@p1", bgl.baglanti());
            //    sorgu.Parameters.AddWithValue("@p1", txtmail.Text);
            //    SqlDataReader rd = sorgu.ExecuteReader();
            //    if(rd.Read())
            //    {

            //        MailMessage mesaj = new MailMessage();
            //        mesaj.To.Add(new MailAddress(txtmail.Text));
            //        mesaj.From = new MailAddress(txtmail.Text, "veysel.gns3623@gmail.com");
            //        mesaj.Body = "E-Mail=" + rd["UyeMail"].ToString() + "\n" + "Kullanıcı adı" + rd["Uyead"].ToString() + "\n" + "Şifre :" + rd["UyeSifre"].ToString() + "\n";
            //        SmtpClient client = new SmtpClient();
            //        client.Host = "smtp.gmail.com";
            //        client.Port = 587;
            //        client.Credentials = new NetworkCredential("veysel.gns3623@gmail.com", "1q2w3e4r5T*-?");


            //        try
            //        {
            //            client.Send(mesaj);
            //            lbmesaj.Text = "Şifreniz Mail Adresinine Gönderilmiştir. Teşekkür ederiz";
            //            H1.InnerHtml += "<meta http-equiv='refresh' content='5;url=Default.aspx'>";
            //        }
            //        catch
            //        {
            //            lbmesaj.Text = "Mesaj Gönderirken Hata oluştu";
            //            H1.InnerHtml += "<meta http-equiv='refresh' content='3;url=SifremiUnuttum.aspx'>";
            //        }

            //    }
            //    else
            //    {
            //        lbmesaj.Text = "E-Mail Adrsi Kayıtlı Degil";

            //    }
            //    rd.Close();
            //    txtmail.Text = "";
            //    System.Threading.Thread.Sleep(2000);
            string gonderadi, gondersifre, gondermail;
            SqlCommand komut = new SqlCommand("select * From Tbl_uyeler where Uyemail='" + txtmail.Text + "'", bgl.baglanti());
            SqlDataReader oku = null;
            oku = komut.ExecuteReader();
            if (oku.Read())
            {
                gonderadi = oku["Uyead"].ToString();
                gondermail = oku["uyeMail"].ToString();
                gondersifre = oku["Uyesifre"].ToString();

                bgl.baglanti().Close();

                MailMessage ePosta = new MailMessage();
                ePosta.From = new MailAddress("Mailadresiniz@gmail.com");
                ePosta.To.Add(gondermail);
                ePosta.Subject = "Şifre Hatırlatma";
                ePosta.Body = "Sayın," + gonderadi + "nŞifreniz:" + gondersifre;
                SmtpClient smtp = new SmtpClient();
                smtp.Credentials = new System.Net.NetworkCredential("Veysel.gns3623@gmail.com", "Şifre Hatırlatma");
                smtp.Port = 587;
                smtp.Host = "smtp.gmail.com";


                smtp.EnableSsl = true;


                object userState = ePosta;
                try
                {
                    smtp.SendAsync(ePosta, (object)ePosta);
                }
                catch
                {
                    lbmesaj.Text = "Mesaj Gönderirken Hata oluştu";
                    H1.InnerHtml += "<meta http-equiv='refresh' content='3;url=SifremiUnuttum.aspx'>";
                }
                finally
                {
                    bgl.baglanti().Close();
                    lbmesaj.Text = "Şifreniz Mail Adresinine Gönderilmiştir. Teşekkür ederiz";
                    H1.InnerHtml += "<meta http-equiv='refresh' content='5;url=Default.aspx'>";

                }
            }
            else
            {
                lbmesaj.Text = "E-Mail Adrsi Kayıtlı Degil";
            }
           




        }


    }
}