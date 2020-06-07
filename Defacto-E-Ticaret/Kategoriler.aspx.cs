using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Defacto_E_Ticaret.ADMİN
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id = "";
        string islme = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //Kategoriler listelemek için kullanıyorum 
            //request.QueryString komutu sayfalardan islem bakılmak istenil noklara ulaşmamıza olanak sağlar
           
            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["Kategoriid"];
                islme = Request.QueryString["islem"];


                SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler",bgl.baglanti());
                SqlDataReader rd = komut.ExecuteReader();
                DataList1.DataSource = rd;
                DataList1.DataBind();
            }

            //Silme işlemi
            if(islme=="sil")
            {
                SqlCommand komut = new SqlCommand("Delete Tbl_kategoriler where Kategoriid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                komut.ExecuteNonQuery();
                bgl.baglanti().Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                SqlCommand komut = new SqlCommand("insert into Tbl_kategoriler(Kategoriad,KategoriAdet) values(@p1,@p2)", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", TextBox1.Text);
                komut.Parameters.AddWithValue("@p2", TextBox2.Text);
                komut.ExecuteNonQuery();
                Label2.Visible = true;
                Label2.Text = "Kategorilere Başarı Şekilde Kayıt Edildi";
                bgl.baglanti().Close();
                TextBox1.Text = "";
                TextBox2.Text = "";

            
               
          
           
                
            
          


        }
    }
}