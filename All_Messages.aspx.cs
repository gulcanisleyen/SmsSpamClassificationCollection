using System;
using System.Data.OleDb;
using System.Drawing;
using System.Data;



public partial class All_Messages : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {


        string path = Server.MapPath("smsspamdataset.xlsx"); //we declared our dataset by using path
        string connString = string.Format(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended Properties=Excel 12.0;");

        OleDbConnection conn = new OleDbConnection(connString);
        conn.Open();
        OleDbCommand cmd = new OleDbCommand("SELECT * FROM [Sayfa1$]", conn);
        OleDbDataAdapter da = new OleDbDataAdapter();
        da.SelectCommand = cmd;
        DataTable dt = new DataTable();
        da.Fill(dt);

        GridView1.DataSource = dt;
        GridView1.DataBind();

        int spam_count = 0, ham_count = 0;  //Variables for the count number of spams and hams 

        for (int i = 0; i < GridView1.Rows.Count; i++) //Iteration for the split messages as ham and spam
        {
            if (GridView1.Rows[i].Cells[0].Text.Contains("spam"))
            {
                GridView1.Rows[i].Cells[0].BackColor = Color.Gray; //Red background color for the spams
                spam_count++;
            }
            else
            {
                GridView1.Rows[i].Cells[0].BackColor = Color.White;//White background color for the hams
                ham_count++;
            }
        }
        Label1.Text = "Number of Spam Messages :" + spam_count;
        Label2.Text = "Number of Ham Messages :" + ham_count;
    }




}