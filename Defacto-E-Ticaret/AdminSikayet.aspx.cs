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
    public partial class AdminSikayet : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                id = Request.QueryString["Sikayetid"];
                islem = Request.QueryString["islem"];


            }
            SqlCommand komut = new SqlCommand("Select * From Tbl_Sikayetler", bgl.baglanti());
            SqlDataReader rd = komut.ExecuteReader();
            Data_Sikayet.DataSource = rd;
            Data_Sikayet.DataBind();


            //Sikayetlerde silme işlemni gerçkeleştirmek için kullanılır
            if(islem=="sil")
            {
                SqlCommand komut2 = new SqlCommand("Delete Tbl_Sikayetler where Sikayetid=@p1 ", bgl.baglanti());
                komut2.Parameters.AddWithValue("@p1", id);
                komut.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
            


        }
    }
}