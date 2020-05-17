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
    public partial class UrunDetay : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["urunid"];
            SqlDataAdapter komut = new SqlDataAdapter("Select * From Tbl_urunler where urunid="+id, bgl.baglanti());
            DataTable dt = new DataTable();
            komut.Fill(dt);
            tekrar.DataSource = dt;
            tekrar.DataBind();


        }
    }
}