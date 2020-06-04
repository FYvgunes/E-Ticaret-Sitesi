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
    public partial class Uyeler : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                id = Request.QueryString["Uyeid"];
                islem = Request.QueryString["islem"];
            }
            //Üyeleri listelemek için bu komutu kullanıyoruz
            SqlCommand komut = new SqlCommand("Select * From Tbl_uyeler", bgl.baglanti());
            SqlDataReader rd = komut.ExecuteReader();
            Data_Uyeler.DataSource = rd;
            Data_Uyeler.DataBind();

            //Silme işlemi bu komutu kullanıyoruz
            if(islem=="sil")
            {
                SqlCommand komut2 = new SqlCommand("Delete Tbl_uyeler where Uyeid =@p1", bgl.baglanti());
                komut2.Parameters.AddWithValue("@p1", id);
                komut2.ExecuteNonQuery();
                bgl.baglanti().Close();
                  
            }





        }
    }
}