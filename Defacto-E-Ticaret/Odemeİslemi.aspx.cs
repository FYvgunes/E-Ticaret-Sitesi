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
    public partial class Odemeİslemi : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string odemeid = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //Grişi işlemi yapılmış mı 

            if (Session["Kullanici"] != null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                odemeid = Request.QueryString["odeme"];
                if (IsPostBack)
                    return;

                List<string> months = new List<string>();
                for (int i = 1; i < 13; i++)
                    months.Add(i.ToString());

                ddlMonth.DataSource = months;
                ddlMonth.DataBind();

                List<string> years = new List<string>();
                for (int i = 0; i < 25; i++)
                    years.Add(DateTime.Now.AddYears(i).Year.ToString());

                ddlYear.DataSource = years;
                ddlYear.DataBind();

                SqlCommand komut2 = new SqlCommand("Select * From Tbl_odeme Where odemeid=@p1", bgl.baglanti());
                komut2.Parameters.AddWithValue("@p1", odemeid);
                komut2.ExecuteNonQuery();
                bgl.baglanti().Close();

            }
         

        }

      

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string id = Session["id"].ToString();
            if(!IsValid)
            {
                Label1.Visible = true;
                Label1.Text = "Ödeme işlemi yapılmadı";
            }
            else
            {
                //Ödemeleri kayıt etmek için bunu kullanıyoruz.
                odemeid = Request.QueryString["odeme"];
                SqlCommand komut = new SqlCommand("insert into Tbl_Odeme(odemead,odemeKartNumarası,OdemeTarihAy,OdemeTarihYil,OdemeGuvenlik) values(@p1,@p2,@p3,@p4,@p5)", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", txtCardName.Text);
                komut.Parameters.AddWithValue("@p2", txtCardNumber.Text);
                komut.Parameters.AddWithValue("@p3", ddlMonth.SelectedValue);
                komut.Parameters.AddWithValue("@p4", ddlYear.SelectedValue);
                komut.Parameters.AddWithValue("@p5", txtCCV.Text);
                komut.ExecuteNonQuery();
                Label1.Visible = true;
                Label1.Text = "Ödemeniz başarı bir şekilde gerçekleşti";
                txtCardName.Text = "";
                txtCardNumber.Text = "";
                txtCCV.Text = "";

                //Ödeme işlemi tamanlandığında o kişiyi silecek
                SqlCommand komut2 = new SqlCommand("Delete FROM Tbl_Sepetler WHERE uyeid=@p6", bgl.baglanti());
                komut2.Parameters.AddWithValue("@p6", id);
                komut2.ExecuteNonQuery();


                bgl.baglanti().Close();
            }
            

          
        }
       
    }
}