using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            Button5.Visible = false;
        }
        else
        {
            LoginStatus1.Visible = false;
        }
        ImageButton1.ImageUrl = "~/carticon.jpg";
        Image1.ImageUrl = "~/finallogo.jpg";
        if (User.IsInRole("User") == true)
        {
           // Server.Transfer("Default.aspx");
            Label1.Text = "Hello";
        }
        else
        {
            if (User.IsInRole("Admin") == true)
                Server.Transfer("admin.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("search.aspx?val=" + TextBox1.Text);

    }
    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Server.Transfer("signup.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        LoginStatus1.Visible = true;
        Server.Transfer("Login.aspx");
       
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Server.Transfer("cart.aspx");
    }
}