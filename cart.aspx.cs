using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = (string)Session["userid"];
        Label3.Text = (string)Session["id"];
        Label4.Text = (string)Session["sid"];
        //SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
        //SqlDataAdapter adp = new SqlDataAdapter("insert into payment (uid,transid,pid,qty,totalprice) select uid,transid,pid,qty,totalprice from cart where transid=" + Label4.Text, con);
        //System.Data.DataTable tb = new System.Data.DataTable();
        //adp.Fill(tb);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("Default.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataSource1.Delete();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
        SqlDataAdapter adp = new SqlDataAdapter("select * from cart ", con);
        System.Data.DataTable dt = new System.Data.DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            Label5.Text = "not exist...";
        }
        else
        {
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Label5.Text = dt.Rows[i]["uid"].ToString();
                Label6.Text = dt.Rows[i]["transid"].ToString();
                Label7.Text = dt.Rows[i]["pid"].ToString();
                Label8.Text = dt.Rows[i]["qty"].ToString();
                Label9.Text = dt.Rows[i]["totalprice"].ToString();
                SqlDataSource2.Insert();
                Label5.Text = "";
                Label6.Text = "";
                Label7.Text = "";
                Label8.Text = "";
                Label9.Text = "";
            }
           
            Server.Transfer("payment.aspx");
        }
    }
}