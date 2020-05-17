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
    public partial class Default : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
            SqlDataAdapter komut = new SqlDataAdapter("Select * From Tbl_urunler where UrunCins='Erkek' ", bgl.baglanti());
            DataTable dt = new DataTable();
            komut.Fill(dt);
            tekrarlayici.DataSource = dt;
            tekrarlayici.DataBind();
            bgl.baglanti().Close();




        }
    }
}