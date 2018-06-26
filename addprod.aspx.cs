using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addprod : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        
        if (FileUpload1.HasFile)
        {
            Label1.Text = string.Format("File Length:{0}<br/>File Name:{1}<br/>MIME Type:{2}", FileUpload1.FileBytes.Length, FileUpload1.FileName, FileUpload1.PostedFile.ContentType);
            FileUpload1.SaveAs(MapPath("~/Uploads/" + FileUpload1.FileName));
            String P = "~/Uploads/" + string.Format("{0}", FileUpload1.FileName);
            Label14.Text = P;
            Response.Write(P);
            SqlDataSource1.Insert();
            Label12.Text = "inserted successfully";

        }
        else
        {
            Label1.Text = "No file received";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("admin.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string pid = GridView1.SelectedRow.Cells[1].Text;
        
        Label15.Text = pid;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Update();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Delete();
        Label12.Text = "delete successfully";
    }
}