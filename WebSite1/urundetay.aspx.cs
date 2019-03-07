using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

namespace WebSite1
{
    public partial class urundetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["urunid"] != null)
            {
                string urunid = Request.QueryString["urunid"];
                SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=Denemeler;Integrated Security=True");
                conn.Open();
                SqlDataAdapter da = new SqlDataAdapter("Select * from Urun where UrunId = " + urunid, conn);
                da.SelectCommand.ExecuteNonQuery();
                DataTable dt = new DataTable();
                da.Fill(dt);
                UrunResim.ImageUrl = dt.Rows[0]["ResimUrl"].ToString();
                SecilenUrunAdi.Text = dt.Rows[0]["UrunAdi"].ToString();
            }
        }
    }
}
