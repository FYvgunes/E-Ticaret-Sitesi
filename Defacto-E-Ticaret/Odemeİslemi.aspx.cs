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
            odemeid = Request.QueryString["odeme"];
            if (IsPostBack)
                return;

            List<string> months = new List<string>();
            for (int i = 1; i < 13; i++)
                months.Add(i.ToString());

            ddlMonth.DataSource = months;
            ddlMonth.DataBind();

            List<string> years = new List<string>();
            for (int i = 0; i < 15; i++)
                years.Add(DateTime.Now.AddYears(i).Year.ToString());

            ddlYear.DataSource = years;
            ddlYear.DataBind();

            SqlCommand komut2 = new SqlCommand("Select * From Tbl_odeme Where odemeid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", odemeid);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            

            
        }

        protected void btnCheckout_Click1(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into tbl_odeme where odemeid =@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", odemeid);
            SqlDataReader rd = komut.ExecuteReader();
            if (rd.Read())
            {
                if (txtCardName != null)
                {
                    txtCardName.Text = rd[1].ToString();
                }
                if (txtCardName != null)
                {
                    txtCardNumber.Text = rd[2].ToString();
                }
                if (ddlMonth != null)
                {
                    ddlMonth.SelectedValue = rd[3].ToString();
                }
                if (ddlYear != null)
                {
                    ddlYear.SelectedValue = rd[4].ToString();
                }
                if (txtCCV != null)
                {
                    txtCCV.Text = rd[5].ToString();
                }

                string id = Session["id"].ToString();
                //SqlCommand komut = new SqlCommand("Select Fotolar,UrunAd,Urunfiyat From  Tbl_Sepetler,Tbl_urunler  where Tbl_urunler.Uyeid=Tbl_sepetler.Uyeid and  Tbl_urunler.Uyeid=" + , bgl.baglanti());
                SqlCommand komut1 = new SqlCommand("Delete uyeid, Tbl_Sepetler.urunid,Fotolar, urunAD, Tbl_Urunler.UrunFiyat FROM Tbl_Sepetler,Tbl_urunler WHERE uyeid=@id and Tbl_Sepetler.urunid=Tbl_urunler.urunid", bgl.baglanti());
                komut1.Parameters.AddWithValue("@id", id);
                komut1.ExecuteNonQuery();



                Label1.Text = "Ödemeniz başarı bir şekilde gerçekleşti";

            }
            bgl.baglanti().Close();
        }
    }
}