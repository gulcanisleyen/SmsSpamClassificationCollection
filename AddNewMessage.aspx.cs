using System;
using System.Data.OleDb;


public partial class AddAnItem : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
  
          

    }

    
    protected void Button1_Click(object sender, EventArgs e)
    {
     
        try
        {
            if(TextBox1.Text == "")
            {
                throw new System.Exception("hata");
            }
        //string path = Server.MapPath("Bin/dataset.xlsx");
        //string path = @"C:\Users\lenovo\Desktop\SMS\smsspamdataset.xlsx";
        string path = Server.MapPath("smsspamdataset.xlsx");
        
        string ConStr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended Properties=\"Excel 12.0;ReadOnly=False;HDR=Yes;\"";   //connection string for the excel file

        string query = "INSERT INTO [Sayfa1$] ([Result,Text]) VALUES('" + DropDownList1.SelectedItem.Value + "," + (TextBox1).Text + "')";         //string for store the insertion query 

            
        OleDbConnection conn = new OleDbConnection(ConStr);
           
        
            conn.Open();        //connection activated
        
         
        OleDbCommand cmd = new OleDbCommand(query, conn);
        int result = cmd.ExecuteNonQuery();

        if (result > 0)         //testing the response of the insertion command
        {
            Response.Write("<script>alert('Mesaj Eklendi')</script>");                  //if it success
        }
        else
        {
            Response.Write("<script>alert('Sorry!\n Insertion Failed')</script>");      //if it fails
        }
        conn.Close();           //connection closed
        }

        catch(Exception hata)
        {
            Response.Write("<script>alert('Please enter a Message !')</script>"); 
        }

    }
}