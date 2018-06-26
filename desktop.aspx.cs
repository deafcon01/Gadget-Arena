using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class desktop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("Default.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string pid = GridView1.SelectedRow.Cells[1].Text;
        Session["id"] = pid;
        GridView1.SelectedRow.Equals("");
        //Label2.Text = (string)Session["id"];
        Response.AppendHeader("Refresh", "2;url=showitem.aspx");
    }
}