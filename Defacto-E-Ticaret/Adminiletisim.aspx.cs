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
    public partial class Adminiletisim : System.Web.UI.Page
    {
        string islem = "";
        string id = "";
        Sqlbaglanti bgl = new Sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                id = Request.QueryString["Mesajid"];
                islem = Request.QueryString["islem"];
            }
         
            //Mesajları listelemek için kullanıyoruz.
            SqlCommand komut = new SqlCommand("Select * From Tbl_Mesajlar", bgl.baglanti());
            SqlDataReader rd = komut.ExecuteReader();
            Data_yorum.DataSource = rd;
            Data_yorum.DataBind();


            //Silme işlemin gerçekleştiyoruz
            if(islem=="sil")
            {
                SqlCommand komut2 = new SqlCommand("Delete Tbl_Mesajlar where mesajid=@p1", bgl.baglanti());
                komut2.Parameters.AddWithValue("@p1", id);
                komut2.ExecuteNonQuery();
                bgl.baglanti().Close();


            }
            

        }
    }
}