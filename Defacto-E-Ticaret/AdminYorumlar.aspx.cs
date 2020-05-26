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
    public partial class AdminYorumlar : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                id = Request.QueryString["Yorumid"];
                islem = Request.QueryString["İslem"];

            }
            //Burada yorumlar kısmında işeem yapmak için yorumid ve islem adlı değişkeni çağıyoruz.
           
            //Onaylı Yorumlar
            SqlCommand komut = new SqlCommand("select *from Tbl_yorumlar where YorumOnay=1 ", bgl.baglanti());
            SqlDataReader rd = komut.ExecuteReader();
            DataList1.DataSource = rd;
            DataList1.DataBind();

            //Onaysız Yorumlar
            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Yorumlar Where YorumOnay=0", bgl.baglanti());
            SqlDataReader rd2 = komut2.ExecuteReader();
            DataList2.DataSource = rd2;
            DataList2.DataBind();




            //Silme işlemi için kullanıyoruz
            if (islem == "sil")
            {
                SqlCommand komut1 = new SqlCommand("Delete Tbl_yorumlar where Yorumid=@p1", bgl.baglanti());
                komut1.Parameters.AddWithValue("@p1", id);
                komut1.ExecuteNonQuery();
                bgl.baglanti().Close();

            }




        }
    }
}