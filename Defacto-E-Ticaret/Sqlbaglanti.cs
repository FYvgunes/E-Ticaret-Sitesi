using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Defacto_E_Ticaret
{
    public class Sqlbaglanti
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection("Data Source=.;Initial Catalog=Db_Giyim;Integrated Security=True ");
            baglan.Open();
            return (baglan);
        }
       
    }
}