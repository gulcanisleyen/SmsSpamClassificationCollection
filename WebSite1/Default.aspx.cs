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
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                UrunleriGetir();
        }

        private void UrunleriGetir()
        {
            SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=Denemeler;Integrated Security=True");
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter("Select * from Urun", conn);
            da.SelectCommand.ExecuteNonQuery();
            DataTable dt = new DataTable();
            da.Fill(dt);
            UrunlerDataList.DataSource = dt;
            UrunlerDataList.DataBind();




        }

        protected void UrunlerDataList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string urunid = e.CommandArgument.ToString();
            string url = "urundetay.aspx?urunid=" + urunid;
            Response.Write("<script>javascript:window.open('" + url + "','urun detay','menubar=1,resizable=1,width=350,height=250' )</script>");

        }


    }
}
