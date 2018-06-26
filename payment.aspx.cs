using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = (string)Session["userid"];

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button2.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button1.Visible = false;
        SqlDataSource1.Delete();
    }
}